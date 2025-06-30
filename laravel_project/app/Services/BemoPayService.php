<?php

namespace App\Services;


use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log; 

class BemoPayService
{
    protected $apiKey;
    protected $integrationId;
    protected $iframeId;

    public function __construct()
    {
        // جلب الإعدادات من ملف .env أو config
        $this->apiKey = config('services.bemopay.key');
        $this->integrationId = config('services.bemopay.integration_id');
        $this->iframeId = config('services.bemopay.iframe_id');
    }

    // التوثيق باستخدام API key
    public function authenticate()
{
    try {
        $response = Http::post('https://accept.paymob.com/api/auth/tokens', [
            'api_key' => $this->apiKey
        ]);

        $data = $response->json();

        if (!$response->successful() || !isset($data['token'])) {
            Log::error("Paymob Auth Failed Response: " . json_encode($data));
            throw new \Exception('Failed to authenticate with Paymob: ' . json_encode($data));
        }

        return $data['token'];
    } catch (\Exception $e) {
        Log::error("Failed to authenticate with Paymob: " . $e->getMessage());
        return response()->json(['error' => 'Failed: فشل في المصادقة: ' . $e->getMessage()], 500);
    }
}

    

    // إنشاء طلب دفع
    
    public function createOrder($authToken, $booking)
    {
        try{
            $trip = $booking->trip;

            // تحديد القيمة التي سيتم الدفع بناءً على العرض أو السعر العادي
            $amount = $trip->offers > 0 ? $trip->offers : $trip->price;


            $amount_cents = $amount * 100; // تحويل المبلغ إلى قروش

            $response = Http::post('https://accept.paymob.com/api/ecommerce/orders', [
                'auth_token' => $authToken,
                'delivery_needed' => false,
                'amount_cents' => $amount_cents,
                'merchant_order_id' => $booking->id,
                'items' => [],
            ]);

            return $response->json()['id'];
        } catch (\Exception $e) {
            // In case of failure
            return response()->json(['error' => 'Failed: ' . $e->getMessage()], 500);
        }
    }


    public function generatePaymentKey($authToken, $orderId, $booking)
    {
        try{
            $trip = $booking->trip;
            $amount = $booking->trip->offers > 0 ? $booking->trip->offers : $booking->trip->price;
            $amount_cents = $amount * 100;

            $response = Http::post('https://accept.paymob.com/api/acceptance/payment_keys', [
                'auth_token' => $authToken,
                'amount_cents' => $amount_cents,
                'expiration' => 3600,
                'order_id' => $orderId,
                'billing_data' => [
                    "apartment" => "NA",
                    "email" => $booking->user->email ?? 'test@example.com',
                    "floor" => "NA",
                    "first_name" => $booking->user->name ?? 'User',
                    "street" => "NA",
                    "building" => "NA",
                    "phone_number" => $booking->user->phone ?? '01000000000',
                    "shipping_method" => "NA",
                    "postal_code" => "00000",
                    "city" => "Cairo",
                    "country" => "EG",
                    "last_name" => "Test",
                    "state" => "Cairo"
                ],
                'currency' => 'EGP',
                'integration_id' => $this->integrationId,
            ]);

            if ($response->successful() && isset($response->json()['token'])) {
                return $response->json()['token'];
            }

            throw new \Exception('فشل في توليد مفتاح الدفع: ' . json_encode($response->json()));
        } catch (\Exception $e) {
            // In case of failure
            return response()->json(['error' => 'Failed: ' . $e->getMessage()], 500);
        }
    }

    

    // استرجاع رابط iframe
    public function getIframeUrl($paymentToken)
    {
        try{
            return "https://accept.paymob.com/api/acceptance/iframes/{$this->iframeId}?payment_token={$paymentToken}";
        } catch (\Exception $e) {
            // In case of failure
            return response()->json(['error' => 'Failed: ' . $e->getMessage()], 500);
        }
    }

    // التحقق من الدفع
    public function verifyPayment($reference)
    {
        try{
            $response = Http::get("https://accept.paymob.com/api/verify/payment", [
                'reference' => $reference,
                'api_key' => $this->apiKey
            ]);

            return $response->json();
        } catch (\Exception $e) {
            // In case of failure
            return response()->json(['error' => 'Failed: ' . $e->getMessage()], 500);
        }
    }
}
