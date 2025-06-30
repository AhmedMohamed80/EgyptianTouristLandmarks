<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'trip_id',
        'booking_date',
        'number_of_people',
        'payment_status',
        'stripe_session_id ',
    ];

    public function getFinalPriceAttribute()
    {
        return $this->trip->offers && $this->trip->offers > 0 ? $this->trip->offers : $this->trip->price;
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function trip()
    {
        return $this->belongsTo(Trip::class);
    }
}
