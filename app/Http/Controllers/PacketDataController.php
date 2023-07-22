<?php

namespace App\Http\Controllers;

use App\Models\SampleDataTable;
use App\Models\SampleMultiPhaseDataTable;
use Illuminate\Http\Request;

class PacketDataController extends Controller
{
    public function processPacketData($packet)
	{
	    $packetData = explode('|', $packet);
	    $packetAddress = $packetData[0];
	    $Device_id = $packetData[1];
	    $sensometerID = $packetData[2];
	    $deviceTimestamp = $packetData[3];
	    $sensorCount = $packetData[4];
	    $sensorData = array_slice($packetData, 5);

	    foreach ($sensorData as $sensorEntry) {
	        list($slaveAddress, $sensorID, $sensorValue) = explode('-', $sensorEntry);
	        // Save sensor readings
	        $SampleDataTable = new SampleDataTable();
	        $SampleDataTable->Packet_id = $packetAddress;
	        $SampleDataTable->Device_id = $Device_id;
	        $SampleDataTable->Sensometer_id = $sensometerID;
	        $SampleDataTable->Device_timestamp = date('m-d-Y H:i:s', $deviceTimestamp);
	        $SampleDataTable->Sensor_id = $sensorID;
	        $SampleDataTable->Slave_address = $slaveAddress;
	        $SampleDataTable->value = $sensorValue;

	        $SampleDataTable->save();
	    }
	    return response()->json(['message' => 'Packet data processed and saved successfully.']);
	}

	public function processPacketDataShow()
	{
		$processPacketData = SampleDataTable::orderBy('id', 'asc')->paginate(10);
        return view('datatables.sample_data_table',compact('processPacketData'))
                    ->with('i', (request()->input('page', 1) - 1) * 10);
	}

	public function processMultiPhasePacketData($packet)
	{

		$packetData = explode('|', $packet);

	    $Packet_id = $packetData[0];	//Packet address
	    $Device_id = $packetData[1];	//device_id
		$Sensometer_id = $packetData[2];	//sensometer_id
	    $Device_timestamp = $packetData[3];	//Device timestamp
	    $Data_count = $packetData[4];	//Data count

	    $Meter_parameter_id = $packetData[5];	//Meter parameterid
	    $Meter_id = $packetData[6];	//Meter id
	    $Phase = $packetData[7];	//Phase
	    $Sensor_count = $packetData[8];	//Sensor count
	    $phaseEntries = array_slice($packetData, 9);
	    foreach ($phaseEntries as $sensorEntry) {
	        $sensorData = explode('-', $sensorEntry);
            foreach ($sensorData as $key => $value) {
        		$sensorData2=explode('_',$value);
        		$Sensor_type='';
        		$type='';
        		$value=$sensorData2[1];

        		if($sensorData2[0][0]=='V'){
        			$Sensor_type = $sensorData2[0];
        			$type='voltage';
        		}elseif($sensorData2[0][0]=='W'){
        			$Sensor_type = $sensorData2[0];
        			$type='Watt';
        		}elseif($sensorData2[0][0]=='A'){
        			$Sensor_type = $sensorData2[0];
        			$type='Ampere';
        		}elseif($sensorData2[0][0]=='E'){
        			$Sensor_type = $sensorData2[0];
        			$type='Kilo Watt hour';
        		}
        		// Save sensor readings
		        $SampleDataTable = new SampleMultiPhaseDataTable();
		        $SampleDataTable->Packet_id = $Packet_id;
		        $SampleDataTable->Device_id = $Device_id;
		        $SampleDataTable->Sensometer_id = $Sensometer_id;
		        $SampleDataTable->Device_timestamp = date('m-d-Y H:i:s', $Device_timestamp);
		        $SampleDataTable->Data_count = $Data_count;
		        $SampleDataTable->Meter_parameter_id = $Meter_parameter_id;
		        $SampleDataTable->Meter_id = $Meter_id;
		        $SampleDataTable->Phase = $Phase;

		        $SampleDataTable->Sensor_type = $Sensor_type;
		        $SampleDataTable->type = $type;
		        $SampleDataTable->value = $value;

		        $SampleDataTable->save();  
            }
	    }
	    return response()->json(['message' => 'Packet data processed and saved successfully.']);
	}


	public function processMultiPhasePacketDataShow()
	{
		$processMultiPhasePacketData = SampleMultiPhaseDataTable::orderBy('id', 'asc')->paginate(10);
        return view('datatables.sample_multi_phase_data_table',compact('processMultiPhasePacketData'))
                    ->with('i', (request()->input('page', 1) - 1) * 10);
	}
}
