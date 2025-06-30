<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Trip extends Model
{
    use HasFactory;

    protected $fillable = [
        'name', 'description', 'from_location', 'to_location', 
        'trip_date', 'trip_status', 'offers', 'main_image', 'price', 'bayment_bersent'
    ];

    protected $casts = [
        'trip_status' => 'boolean',
        'offers' => 'float',
        'trip_date' => 'date',
    ];

    // This function updates the trip's status based on the trip_date
    public function updateTripStatus()
    {
        $today = Carbon::today();
        // If trip_date is in the past, mark it as 'completed', otherwise 'pending'
        $this->trip_status = $this->trip_date->lte($today) ? 'completed' : 'pending';
        $this->save();
    }

    // Accessor to get the trip status as 'completed' or 'pending'
    public function getTripStatusAttribute($value)
    {
        // Determine if the trip date has passed
        return $this->trip_date->lte(Carbon::now()) ? 'completed' : 'pending';
    }

    // Relationships
    public function photos()
    {
        return $this->hasMany(Photo::class);
    }

    public function includes()
    {
        return $this->hasMany(TripInclude::class);
    }

    public function getMainImageAttribute($value)
    {
        return $value ? url($value) : null;
    }

    public function excludes()
    {
        return $this->hasMany(Exclude::class);
    }

    public function steps()
    {
        return $this->hasMany(Steps::class);
    }

    public function booking()
    {
        return $this->hasMany(Booking::class, 'trip_id');
    }
}
