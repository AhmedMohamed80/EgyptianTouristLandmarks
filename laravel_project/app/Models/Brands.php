<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Brands extends Model
{

    use HasFactory;

    protected $fillable = ['name', 'shopping_center_id'];

    public function shoppingCenter()
    {
        return $this->belongsTo(ShoppingCenter::class);
    }
}

