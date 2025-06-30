<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Stripe\Stripe;
use Stripe\PaymentIntent;
use App\Models\Booking;
use App\Models\Trip;
use Carbon\Carbon;
use Stripe\Webhook;
use Stripe\Checkout\Session as StripeSession;

class StripePaymentController extends Controller
{
  public function bookTrip(Request $request)
{
    try {
        $request->validate([
            'trip_id' => 'required|exists:trips,id',
            'user_id' => 'required|exists:users,id',
            'number_of_people' => 'required|integer|min:1',
        ]);

        $trip = Trip::findOrFail($request->trip_id);
        $number_of_people = $request->number_of_people;

        // حساب الخصم إذا كان موجود
        $unitPrice = $trip->price;
        if ($trip->bayment_bersent) {
            $discount = ($trip->bayment_bersent * $unitPrice) / 100;
            $unitPrice = $unitPrice - $discount;
        }

        // تحويل السعر إلى قرش (Stripe يحتاج أقل وحدة للعملة)
        $amount = intval($unitPrice * 100 * $number_of_people);

        // حفظ الحجز
        $booking = Booking::create([
            'trip_id' => $trip->id,
            'user_id' => $request->user_id,
            'payment_status' => 'pending',
            'booking_date' => now(),
            'number_of_people' => $number_of_people,
        ]);

        Stripe::setApiKey(env('STRIPE_SECRET'));

        // إنشاء جلسة الدفع
        $checkoutSession = StripeSession::create([
            'payment_method_types' => ['card'],
            'line_items' => [[
                'price_data' => [
                    'currency' => 'egp',
                    'unit_amount' => $amount,
                    'product_data' => [
                        'name' => $trip->title ?? 'Pharaohs Legacy',
                        'images' => ['https://i.ibb.co/qsb2g7T/Picsart-24-11-24-21-47-10-256.png'],
                    ],
                ],
                'quantity' => 1,
            ]],
            'mode' => 'payment',
            'success_url' => 'https://pharaohslegacy.cloud',
            'cancel_url' => 'https://pharaohslegacy.cloud',
            'metadata' => [
                'booking_id' => $booking->id,
            ],
        ]);

        $booking->update([
            'stripe_session_id' => $checkoutSession->id,
        ]);

        return response()->json([
            'payment_url' => $checkoutSession->url,
            'booking_id' => $booking->id,
        ]);
    } catch (\Exception $e) {
        return response()->json([
            'error' => $e->getMessage(),
        ], 500);
    }
}

    

    public function checkoutSuccess(Request $request)
    {
        // استخراج session_id من الـ request
        $sessionId = $request->query('session_id');
        
        // التحقق إذا كان الـ session_id موجود
        if (!$sessionId) {
            return response('Error: not found session_id', 400);
        }
    
        // البحث عن الحجز المرتبط بالـ session_id
        $booking = Booking::where('stripe_session_id',  $sessionId)->first();
        
        if (!$booking) {
            return response('Error: booking not found', 404);
        }
    
        // حدّث حالة الدفع
        $booking->update([
            'payment_status' => 'completed',
        ]);
        
        // إعادة التوجيه إلى الصفحة الرئيسية مع رسالة النجاح
        return redirect('https://pharaohslegacy.cloud/');
    }

    public function checkoutCancel(Request $request)
    {
        // استخراج session_id من الـ request
        $sessionId = $request->query('session_id');

        // البحث عن الحجز المرتبط بالـ session_id
        $booking = Booking::where('stripe_session_id', $sessionId)->first();

        if ($booking) {
            // تحديث حالة الدفع إلى "failed"
            $booking->payment_status = 'failed';
            $booking->save();
        }

        // إرجاع رسالة الفشل
        return 'تم إلغاء الدفع أو فشل العملية. يرجى المحاولة مرة أخرى.';
    }

    public function handleWebhook(Request $request)
    {
        Stripe::setApiKey(env('STRIPE_SECRET'));
    
        $payload = $request->getContent();
        $sig_header = $request->header('Stripe-Signature');
        $endpoint_secret = env('STRIPE_WEBHOOK_SECRET');
    
        try {
            $event = Webhook::constructEvent($payload, $sig_header, $endpoint_secret);
    
            if ($event->type === 'checkout.session.completed') {
                $session = $event->data->object;
    
                \Log::info('Stripe Webhook Event Type:', ['type' => $event->type]);
                \Log::info('Session ID:', ['id' => $session->id]);
                \Log::info('Metadata:', (array) $session->metadata);
    
                $bookingId = $session->metadata->booking_id ?? null;
    
                if ($bookingId) {
                    $booking = Booking::find($bookingId);
                    if ($booking) {
                        $booking->payment_status = 'completed';
                        $booking->save();
    
                        \Log::info('✅ Booking status updated for booking_id: ' . $bookingId);
                    } else {
                        \Log::warning('❌ Booking not found for ID: ' . $bookingId);
                    }
                }
            }
    
            return response('Webhook Handled', 200);
        } catch (\Exception $e) {
            \Log::error('Webhook Error: ', ['error' => $e->getMessage()]);
            return response('Webhook Error: ' . $e->getMessage(), 400);
        }
    }
    



}

