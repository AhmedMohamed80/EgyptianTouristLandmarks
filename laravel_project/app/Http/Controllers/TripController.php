<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Trip;
use App\Models\TripInclude;
use App\Models\Exclude;
use App\Models\Steps;
use App\Models\Photo;
use Illuminate\Support\Facades\Storage;

class TripController extends Controller
{
    // عرض جميع الرحلات مع البيانات المرتبطة
 public function Display_all_trip()
{
    $trips = Trip::with(['photos', 'includes', 'excludes','steps'])
        ->paginate(9999999);

    // نضيف حقل "عرض" لكل رحلة
    $trips->getCollection()->transform(function ($trip) {
        $trip->hasoffer = $trip->bayment_bersent > 0 ? 'true' : 'false';
        return $trip;
    });

    return response()->json($trips);
}


    // عرض تفاصيل رحلة معينة
    public function show_specific_trip($id)
    {
        try {
            $trip = Trip::with(['photos', 'includes', 'excludes','steps'])->find($id);
    
            if (!$trip) {
                return response()->json(['message' => 'Trip not found'], 404);
            }
    
            // تحديد إذا فيه خصم ولا لأ
            $hasOffer = $trip->bayment_bersent > 0 ? 'true' : 'false' ;
    
            return response()->json([
                'message' => 'Successful',
                'trip' => $trip,
                'hasOffer' => $hasOffer
            ], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Failed: ' . $e->getMessage()], 500);
        }
    }


    // إنشاء رحلة جديدة
    public function store_new_trip(Request $request)
    {
        try {
            $request->validate([
                'name' => 'required|string|max:255',
                'description' => 'nullable|string',
                'from_location' => 'required|string',
                'to_location' => 'required|string',
                'trip_date' => 'required|date',
                'price' => 'nullable|numeric',
                'bayment_bersent' => 'nullable|numeric',
                'main_image' => 'nullable|image|mimes:jpeg,png,jpg,gif,webp|max:10240',
                'photos.*' => 'nullable|image|mimes:jpeg,png,jpg,gif,webp|max:10240',
                'includes.*' => 'nullable|string',
                'excludes.*' => 'nullable|string',
                'step.*' => 'nullable|string',
            ]);
            
            $off=0;
            
            if($request->bayment_bersent>0)
            {
                $off=$request->price-($request->price * $request->bayment_bersent)/100;
                
            }
    
            $trip = new Trip();
            $trip->name = $request->name;
            $trip->description = $request->description;
            $trip->from_location = $request->from_location;
            $trip->to_location = $request->to_location;
            $trip->trip_date = $request->trip_date;
            $trip->trip_status = $request->has('trip_status') ? $request->trip_status : 1;
            $trip->bayment_bersent = $request->bayment_bersent;
            $trip->offers = $off;
            $trip->price = $request->price;
    
            if ($request->hasFile('main_image')) {
                $main = $request->file('main_image');
                $file_extension = $main->getClientOriginalExtension();
                $file_name = time() . rand(1000, 9999) . '.' . $file_extension;
                $path = $_SERVER['DOCUMENT_ROOT'] . '/image/Trips/';
                if (!file_exists($path)) {
                    mkdir($path, 0777, true);
                }
                $main->move($path, $file_name);
                $trip->main_image = url('image/Trips/' . $file_name);
            }
    
            $trip->save();
    
            if ($request->hasFile('photos')) {
                foreach ($request->file('photos') as $photo) {
                    $file_extension = $photo->getClientOriginalExtension();
                    $file_name = time() . rand(1000, 9999) . '.' . $file_extension;
                    $path = $_SERVER['DOCUMENT_ROOT'] . '/image/trips/';
                    if (!file_exists($path)) {
                        mkdir($path, 0777, true);
                    }
                    $photo->move($path, $file_name);
                    Photo::create([
                        'Item_ID' => null,
                        'trip_id' => $trip->id,
                        'image_path' => asset("image/trips/$file_name"),
                    ]);
                }
            }
    
            if ($request->has('includes')) {
                foreach ($request->includes as $include) {
                    $trip->includes()->create(['point' => $include]);
                }
            }
    
            if ($request->has('excludes')) {
                foreach ($request->excludes as $exclude) {
                    $trip->excludes()->create(['point' => $exclude]);
                }
            }
    
            if ($request->has('step')) {
                foreach ($request->step as $step) {
                    $trip->steps()->create(['step' => $step]);
                }
            }
    
            $trip->load(['photos', 'includes', 'excludes', 'steps']);
    
            return response()->json([
                'message' => 'Trip created successfully',
                'trip' => $trip
            ], 201);
    
        } catch (\Exception $e) {
            return response()->json(['error' => 'Failed: ' . $e->getMessage()], 500);
        }
    }

    



    // تحديث رحلة
    public function update_an_trip(Request $request, $id)
    {
        try {
            $trip = Trip::find($id);

            if (!$trip) {
                return response()->json(['message' => 'Trip not found'], 404);
            }

            $trip->update($request->only([
                'name', 'description', 'from_location', 'to_location', 
                'trip_date', 'trip_status', 'offers','price','bayment_bersent'
            ]));

            if ($request->has('bayment_bersent')) {
                $baymentBersent = $request->bayment_bersent;
                $trip->bayment_bersent = $baymentBersent;    
                if ($trip->price !== null && $baymentBersent !== null) {
                    $trip->offers = $trip->price * ($baymentBersent / 100);
                }
    
                $trip->save();
            } 

            // تحديث الصورة الرئيسية
            if ($request->hasFile('main_image')) {
                // حذف الصورة القديمة إذا كانت موجودة
                if ($trip->main_image) {
                    Storage::disk('public')->delete($trip->main_image);
                }

                $imagePath = $request->file('main_image')->store('trips', 'public');
                $trip->main_image = $imagePath;
                $trip->save();
            }

            // تحديث TripIncludes
            if ($request->has('includes')) {
                $trip->includes()->delete();
                foreach ($request->includes as $include) {
                    TripInclude::create([
                        'trip_id' => $trip->id,
                        'point' => $include
                    ]);
                }
            }

            // تحديث Excludes
            if ($request->has('excludes')) {
                $trip->excludes()->delete();
                foreach ($request->excludes as $exclude) {
                    Exclude::create([
                        'trip_id' => $trip->id,
                        'point' => $exclude
                    ]);
                }
            }

            if ($request->has('steps')) {
                $trip->steps()->delete();
                foreach ($request->steps as $steps) {
                    Exclude::create([
                        'trip_id' => $trip->id,
                        'step' => $steps
                    ]);
                }
            }

            // تحديث Photos
            if ($request->hasFile('photos')) {
                $trip->photos()->delete(); // حذف الصور القديمة
                foreach ($request->file('photos') as $photo) {
                    $photoPath = $photo->store('trips/photos', 'public');
                    Photo::create([
                        'trip_id' => $trip->id,
                        'image_path' => $photoPath
                    ]);
                }
            }

            $trip->load(['photos', 'includes', 'excludes']);

            return response()->json([
                'message' => 'Trip updated successfully',
                'trip' => $trip->load(['photos', 'includes', 'excludes']) // تحميل البيانات المرتبطة
            ], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Failed: ' . $e->getMessage()], 500);
        }
    }


    public function update_an_bayment_bersent(Request $request, $id)
    {
        try {
            $trip = Trip::find($id);
    
            if (!$trip) {
                return response()->json(['message' => 'Trip not found'], 404);
            }
    
            if ($request->has('bayment_bersent')) {
                $baymentBersent = $request->bayment_bersent;
                if ($trip->price !== null && $baymentBersent !== null) {
                    $offers = $trip->price-$trip->price * ($baymentBersent / 100);
                }
                $trip->update([
                    'bayment_bersent'=>$baymentBersent,
                    'offers'=>$offers,
                ]);
            }    
            return response()->json([
                'message' => 'Trip updated successfully',
                'trip' => $trip
            ], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Failed: ' . $e->getMessage()], 500);
        }
    }
    
    

    // حذف رحلة
    public function Delete_an_trip($id)
    {
        try {
            $trip = Trip::find($id);

            if (!$trip) {
                return response()->json(['message' => 'Trip not found'], 404);
            }

            // حذف الصور المرتبطة بالرحلة
             foreach ($trip->photos as $photos) {
                // استخرج اسم الصورة من رابط asset
                $imageName = basename($photos->image_path);
            
                // المسار الفعلي في public_html على Hostinger
                $realPath = $_SERVER['DOCUMENT_ROOT'] . '/image/trips/' . $imageName;
            
                if (file_exists($realPath)) {
                    unlink($realPath); // حذف الصورة
                }
            
                $photos->delete(); // حذف من قاعدة البيانات
            }

            // حذف شامل لجميع النقاط والاستثناءات والصور المرتبطة بالرحلة
            $trip->includes()->delete();
            $trip->excludes()->delete();
            $trip->steps()->delete();

            $trip->delete();

            return response()->json(['message' => 'Trip deleted successfully'], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Failed: ' . $e->getMessage()], 500);
        }
    }
}
