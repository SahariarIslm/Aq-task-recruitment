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
        Schema::create('sample_data_table', function (Blueprint $table) {
            $table->id();
            $table->string('Packet_id');
            $table->string('Device_id');
            $table->string('Sensometer_id');
            $table->string('Device_timestamp');
            $table->string('Sensor_id');
            $table->string('Slave_address');
            $table->string('value');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sample_data_table');
    }
};
