<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRandevularsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('randevulars', function (Blueprint $table) {
            $table->id();
            $table->integer('gorusme_yapan');
            $table->integer('gorusme_gelen');
            $table->string('gorusme_tarih');
            $table->integer('gorusme_saat');
            $table->integer('sector');
            $table->integer('country');
            $table->integer('randevutalepeden');
            $table->enum('status',[0,1,2,3]);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('randevulars');
    }
}
