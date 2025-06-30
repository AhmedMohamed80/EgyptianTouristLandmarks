<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('photos', function (Blueprint $table) {
            $table->id('photo_id');
            $table->unsignedBigInteger('Item_ID')->nullable(); // Make Item_ID nullable
            $table->unsignedBigInteger('trip_id')->nullable(); // Add trip_id and make it nullable
            $table->string('image_path', 255);
            $table->timestamps();

            // Define foreign keys if Item_ID and trip_id are not null
            $table->foreign('Item_ID')->references('Item_ID')->on('items')->onDelete('cascade');
            $table->foreign('trip_id')->references('id')->on('trips')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('photos');
    }
};
