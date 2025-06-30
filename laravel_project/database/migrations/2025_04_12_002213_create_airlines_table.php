<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */

        public function up(): void
        {
            Schema::create('airlines', function (Blueprint $table) {
                $table->id();
                $table->unsignedBigInteger('airport_id');
                $table->string('name');
                $table->string('terminal')->nullable();
                $table->string('email')->nullable();
                $table->string('phone')->nullable();
                $table->string('website_link')->nullable();
                $table->timestamps();
    
                // foreign key constraint
                $table->foreign('airport_id')->references('id')->on('airports')->onDelete('cascade');
            });
        }
    
        public function down(): void
        {
            Schema::dropIfExists('airlines');
        }

    
};
