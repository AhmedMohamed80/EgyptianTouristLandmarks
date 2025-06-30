<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTripsTable extends Migration
{
    public function up()
    {
        Schema::create('trips', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->text('description')->nullable();
            $table->string('from_location');
            $table->string('to_location');
            $table->date('trip_date');
            $table->boolean('trip_status')->default('pending');
            $table->decimal('offers', 8, 2)->nullable();
            $table->decimal('price', 8, 2);
            $table->decimal('bayment_bersent', 5, 2)->nullable();
            $table->string('main_image')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('trips');
    }
}
