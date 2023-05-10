<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBloodBankTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('book_bank', function (Blueprint $table) {
            $table->uuid('id_book_bank')->unique()->primary();;
            $table->foreignUuid('id_institutions');
            $table->integer('Novel');
            $table->integer('Komik');
            $table->integer('Biografi');
            $table->integer('Ilmiah');
            $table->integer('Kamus');
            $table->integer('Atlas');
            $table->integer('Majalah');
            $table->integer('Dongeng');
            $table->string('modified_by')->nullable();
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
        Schema::dropIfExists('book_bank');
    }
}
