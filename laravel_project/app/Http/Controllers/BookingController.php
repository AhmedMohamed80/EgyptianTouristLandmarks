<?php

namespace App\Http\Controllers;

use App\Models\Booking;
use Illuminate\Http\Request;

class BookingController extends Controller
{
    public function getBookingsByUser($user_id)
    {
        $bookings = Booking::with('trip')->where('user_id', $user_id)->where('payment_status', 'completed')->get();
    
        $result = $bookings->map(function ($booking) {
            $trip = $booking->trip;
    
            if ($trip) {
                $trip->updateTripStatus();
            }
    
            // عدد الأشخاص في الحجز
            $number_of_people = $booking->number_of_people ?? 1;
    
            // السعر الإجمالي (لو فيه عروض بياخد offers، لو مفيش بياخد price)
            $unit_price = $trip->offers ?? $trip->price ?? 0;
            $total_price = $unit_price * $number_of_people;
    
            return [
                'booking_id' => $booking->id,
                'number_of_people' => $number_of_people,
                'total_price' => $total_price,
                'trip' => [
                    'trip_id' => $trip->id ?? null,
                    'name' => $trip->name ?? null,
                    'description' => $trip->description ?? null,
                    'from_location' => $trip->from_location ?? null,
                    'to_location' => $trip->to_location ?? null,
                    'trip_date' => $trip->trip_date ?? null,
                    'trip_status' => $trip->trip_status ?? null,
                    'price' => $trip->price ?? null,
                    'offers' => $trip->offers ?? null,
                    'main_image' => $trip->main_image ?? null,
                ],
                'created_at' => $booking->created_at,
                'updated_at' => $booking->updated_at,
            ];
        });
    
        return response()->json($result);
    }

}
