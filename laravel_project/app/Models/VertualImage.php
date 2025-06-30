<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VertualImage extends Model
{
    use HasFactory;

    protected $table = 'vertual_images'; // اسم الجدول لو مختلف عن اسم الموديل

    protected $fillable = [
        'name',
        'link',
        'main_image_path',
    ];
    
}
