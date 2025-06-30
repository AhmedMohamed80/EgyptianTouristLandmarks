<?php

namespace App\Http\Controllers;

use App\Models\VertualImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;


class VertualImageController extends Controller
{
    public function index()
    {
        $images = VertualImage::all();
        return response()->json($images);
    }

    public function store(Request $request)
    {
        try{
            Log::info('Store function called');
        
            $request->validate([
                'name' => 'required|string|max:255',
                'link' => 'required|url',
                'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:10240',
            ]);
        
            $VertualImage = new VertualImage();
            $VertualImage->name = $request->name;
            $VertualImage->Link = $request->link;
        
            if ($request->hasFile('image')) {
                $main = $request->file('image');
                $file_extension = $main->getClientOriginalExtension();
                $file_name = time() . rand(1000, 9999) . '.' . $file_extension;
                $path = $_SERVER['DOCUMENT_ROOT'] . '/image/VertualImage/';
        
                if (!file_exists($path)) {
                    mkdir($path, 0777, true);
                }
        
                $main->move($path, $file_name);
        
                $VertualImage->main_image_path = asset('image/VertualImage/' . $file_name);
            }
        
            $VertualImage->save();
        
            return response()->json(['message' => 'Image stored successfully',
            'VertualImage'=>$VertualImage
            ]);
        } catch (\Exception $e) {
            // رسالة الخطأ إذا فشل إرسال البريد
            return response()->json(['message' =>  $e->getMessage()], 200);
        }
    }


    public function Delete_an_vertual_images($id)
    {
        try{
            $VI = VertualImage::find($id);
            if (!$VI) {
                return response()->json(['message' => 'failed: VertualImage not found'], 404);
            }

            if ($VI->main_image_path) {
                $mainImageName = basename($VI->main_image_path);
                $mainImagePath = $_SERVER['DOCUMENT_ROOT'] . '/image/VertualImage/' . $mainImageName;
            
                if (file_exists($mainImagePath)) {
                    unlink($mainImagePath);
                }
            }

            $VI->delete();
            return response()->json(['message' => 'Delete successful']);
        } catch (\Exception $e) {
            return response()->json(['error' => 'faild :' . $e->getMessage()], 500);
        }
    }
}

