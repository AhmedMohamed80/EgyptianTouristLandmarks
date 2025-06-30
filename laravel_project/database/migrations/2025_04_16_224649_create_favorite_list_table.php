<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('favorite_list', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users')->onDelete('cascade');

            // هنا بنحدد المفتاح الأساسي بـ item_id لكن نربطه بـ Item_ID من جدول items
            $table->unsignedBigInteger('item_id');
            $table->foreign('item_id')->references('Item_ID')->on('items')->onDelete('cascade');

            $table->timestamps();

            $table->unique(['user_id', 'item_id']); // لمنع التكرار
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('favorite_list');
    }
};
