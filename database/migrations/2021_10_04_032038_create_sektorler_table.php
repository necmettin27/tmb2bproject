<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSektorlerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sektorler', function (Blueprint $table) {
            $table->id();
            $table->string('title_tr'); 
            $table->string('title_en')->nullable(); 
            $table->string('title_fr')->nullable(); 
            $table->string('title_ar')->nullable(); 
            $table->string('title_de')->nullable(); 
            $table->enum('status',['0','1'])->default('1');
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
        Schema::dropIfExists('sektorler');
    }
}
