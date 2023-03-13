<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFirmalarsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('firmalars', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('sektor_id');
            $table->string('title_tr');
            $table->string('title_en')->nullable();
            $table->longText('desciption_tr')->nullable();
            $table->longText('desciption_en')->nullable();
            $table->integer('ulke');
            $table->longText('keywords')->nullable();
            $table->enum('status',['1','0'])->default(1);
            $table->enum('randevuonay',['1','0'])->default(1);
            $table->timestamps();
            $table->foreign('sektor_id')->references('id')->on('sektorler')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('firmalars');
    }
}
