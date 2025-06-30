<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFacilitiesAirportsTable extends Migration
{
    public function up()
    {
        Schema::create('facilities_airports', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('airport_id');
            $table->string('facility_name');
            $table->foreign('airport_id')->references('id')->on('airports')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('facilities_airports');
    }
}
