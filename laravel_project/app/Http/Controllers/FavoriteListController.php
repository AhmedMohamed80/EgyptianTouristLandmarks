<?php

namespace App\Http\Controllers;

use App\Models\FavoriteList;
use App\Models\Item;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class FavoriteListController extends Controller
{
    // 📃 عرض المفضلات لمستخدم معين
    public function Display_favorites(Request $request)
    {
        $request->validate([
            'user_id' => 'required|exists:users,id'
        ]);

        $favorites = FavoriteList::with('item')
            ->where('user_id', $request->user_id)
            ->get();

        return response()->json(['favorites' => $favorites]);
    }

    // ➕ إضافة للمفضلة
    public function Add_favorites(Request $request)
    {
        $request->validate([
            'user_id' => 'required|exists:users,id',
            'item_id' => 'required|exists:items,Item_ID',
        ]);

        $exists = FavoriteList::where('user_id', $request->user_id)
            ->where('item_id', $request->item_id)
            ->exists();

        if ($exists) {
            return response()->json(['message' => 'Already in favorites'], 409);
        }

        $favorite = FavoriteList::create([
            'user_id' => $request->user_id,
            'item_id' => $request->item_id,
        ]);

        return response()->json(['message' => 'Added to favorites', 'favorite' => $favorite], 201);
    }

    public function Delete_an_favorites(Request $request, $item_id)
    {
        $request->validate([
            'user_id' => 'required|exists:users,id'
        ]);

        $deleted = FavoriteList::where('user_id', $request->user_id)
            ->where('item_id', $item_id)
            ->delete();

        if ($deleted) {
            return response()->json(['message' => 'Removed from favorites']);
        } else {
            return response()->json(['message' => 'Item not found in favorites'], 404);
        }
    }

    public function getUserFavorites($user_id)
    {
        try{
            $favorites = FavoriteList::with(['item' => function ($query) {
                $query->with(['landmark', 'restaurant', 'hotel', 'airport', 'shoppingCenter'])
                      ->withAvg('reviews', 'rating_value') // تأكد من استخدام rating_value
                      ->withCount('reviews');
            }])->where('user_id', $user_id)->get();
            
        
            if ($favorites->isEmpty()) {
                return response()->json(['message' => 'No favorite items found for this user.'], 404);
            }
        
        
                $favorites = $favorites->map(function ($favorite) {
            $item = $favorite->item;
            $type = null;

            if ($item->landmark) {
                $type = 'landmark';
            } elseif ($item->restaurant) {
                $type = 'restaurant';
            } elseif ($item->hotel) {
                $type = 'hotel';
            } elseif ($item->airport) {
                $type = 'airport';
            } elseif ($item->shoppingCenter) {
                $type = 'shopping_center';
            }

            return [
                'id' => $favorite->id,
                'item_id' => $item->id,
                'type' => $type,
                'item' => $item,
                'rating_avg' => $item->reviews_avg_rating_value,
                'reviews_count' => $item->reviews_count,
            ];
        });
        
        
            return response()->json([
                'user_id' => $user_id,
                'favorites' => $favorites
            ]);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Failed: ' . $e->getMessage()], 500);
        }    
    }
    


}
