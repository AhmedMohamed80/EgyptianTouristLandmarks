<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class FavoriteList extends Model
{
    use HasFactory;

    protected $table = 'favorite_list';

    protected $fillable = ['user_id', 'item_id'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function item()
    {
        return $this->belongsTo(Item::class, 'item_id', 'Item_ID');
    }

    
}
