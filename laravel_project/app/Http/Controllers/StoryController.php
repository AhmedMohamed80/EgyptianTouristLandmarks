<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Story;
use App\Models\User;
use App\Models\StoryImage;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;



class StoryController extends Controller
{
    public function add_story(Request $request)
    {
        try {
            $request->validate([
                'description' => 'required|string',
                'date' => 'required|date',
                'images' => 'required|array|min:1|max:4',
                'images.*' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
                'user_id' => 'required|exists:users,id'
            ]);
    
            DB::beginTransaction();
    
            $story = Story::create([
                'user_id' => $request->user_id,
                'description' => $request->description,
                'date' => $request->date,
            ]);
    
            $imageUrls = [];
           if ($request->hasFile('images')) {
                foreach ($request->file('images') as $image) {
                    $fileName = time() . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
                    
                    // حفظ داخل public_html مباشرة
                    $path = $_SERVER['DOCUMENT_ROOT'] . '/image/stories';
                    
                    if (!file_exists($path)) {
                        mkdir($path, 0777, true);
                    }
            
                    $image->move($path, $fileName);
                    $imageUrl = url('/image/stories/' . $fileName); // يرجع URL صحيح للرابط
            
                    StoryImage::create([
                        'story_id' => $story->id,
                        'image_path' => $imageUrl,
                    ]);
            
                    $imageUrls[] = $imageUrl;
                }
            }

    
            DB::commit();
    
            $user = $story->user; // Get user relation if exists
    
            return response()->json([
                'message' => 'successful',
                'story' => [
                    'id' => $story->id,
                    'description' => $story->description,
                    'date' => $story->date,
                    'images' => $imageUrls,
                    'user' => [
                        'id' => $user->id,
                        'name' => $user->name,
                        'email' => $user->email,
                        'profile_image'=>$user->profile_image,
                        'address'=>$user->address,
                        // زود أي داتا تانية تحبها هنا من جدول users
                    ],
                ]
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    
    
        
    
    public function get_All_Stories()
    {
        $stories = Story::with(['user', 'images'])->get();
    
        $stories = $stories->map(function ($story) {
            $image_urls = $story->images->map(function ($image) {
                return $image->image_path;
            });
    
            $story->user->profile_image_url = url($story->user->profile_image);
    
            return [
                'id' => $story->id,
                'user' => [
                    'id' => $story->user->id,
                    'name' => $story->user->name,
                    'email' => $story->user->email,
                    'phone' => $story->user->phone,
                    'address' => $story->user->address,
                    'profile_image' => $story->user->profile_image_url,
                    'created_at' => $story->user->created_at,
                    'updated_at' => $story->user->updated_at
                ],
                'description' => $story->description,
                'date' => $story->date,
                'images' => $image_urls, // Return array of image URLs
            ];
        });
    
        return response()->json($stories);
    }
    
    
    

    public function getUserStories($user_id)
    {
        $user = User::with(['stories.images'])->find($user_id);

        if (!$user) {
            return response()->json(['message' => 'User not found'], 404);
        }

        $stories = $user->stories->map(function ($story) {
            $image_urls = $story->images->map(function ($image) {
                return  $image->image_path;
            });

            return [
                'id' => $story->id,
                'description' => $story->description,
                'date' => $story->date,
                'images' => $image_urls,
                'created_at' => $story->created_at,
                'updated_at' => $story->updated_at,
            ];
        });

        return response()->json([
            'user_id' => $user->id,
            'name' => $user->name,
            'address' => $user->address,
            'stories' => $stories
        ]);
    }



     public function delete_story($id)
    {
        try{
            $story = Story::with('images')->find($id);
            if (!$story) {
                return response()->json(['message' => 'failed: story not found'], 404);
            }
       
            foreach ($story->images as $images) {
                // استخرج اسم الصورة من رابط asset
                $imageName = basename($images->image_path);
            
                // المسار الفعلي في public_html على Hostinger
                $realPath = $_SERVER['DOCUMENT_ROOT'] . '/image/stories/' . $imageName;
            
                if (file_exists($realPath)) {
                    unlink($realPath); // حذف الصورة
                }
            
                $images->delete(); // حذف من قاعدة البيانات
            }
            
            $story->delete();
            return response()->json(['message' => 'Delete successful']);
        } catch (\Exception $e) {
            return response()->json(['error' => 'faild :' . $e->getMessage()], 500);
        }
    }
    


}
