<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SampleDataTable extends Model
{
    use HasFactory;
    protected $table = 'sample_data_table';
    protected $fillable = ['Packet_id','Device_id','Sensometer_id','Device_timestamp','Sensor_id','Slave_address','value'];
}