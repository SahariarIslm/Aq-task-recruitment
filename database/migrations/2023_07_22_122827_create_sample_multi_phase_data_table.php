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
        Schema::create('sample_multi_phase_data_table~', function (Blueprint $table) {
            $table->id();
            $table->string('Packet_id');
            $table->string('Device_id');
            $table->string('Sensometer_id');
            $table->string('Device_timestamp');
            $table->string('Data_count');
            $table->string('Meter_parameter_id');
            $table->string('phase');
            $table->string('Meter_id');
            $table->string('Sensor_type');
            $table->string('type');
            $table->string('value');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sample_multi_phase_data_table~');
    }
};
