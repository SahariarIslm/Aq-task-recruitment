<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SampleMultiPhaseDataTable extends Model
{
    use HasFactory;
    protected $table = 'sample_multi_phase_data_table~';
    protected $fillable = ['Packet_id','Device_id','Sensometer_id','Device_timestamp','Data_count','Meter_param_id','Meter_id','phase','Sensor_type','type','value'];
}
