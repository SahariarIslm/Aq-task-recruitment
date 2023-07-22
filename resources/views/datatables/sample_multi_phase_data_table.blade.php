@extends('datatables.layout')
 
@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left text-center mb-4">
                <h2>Aq-task: Multi-phase Packet Data Show</h2>
            </div>
        </div>
    </div>
 
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
 
    <table class="table table-bordered">
        <tr>
          <th>ID</th>
          <th>Packet_id</th>
          <th>Device_id</th>
          <th>Sensometer_id</th>
          <th>Device_timestamp</th>
          <th>Data_count</th>
          <th>Meter_param_id</th>
          <th>Meter_id</th>
          <th>phase</th>
          <th>Sensor_type</th>
          <th>type</th>
          <th>value</th>
          <th>Created_at</th>
          <th>Updated_at</th>
          <!-- Add more table headers as needed -->
        </tr>
        @foreach ($processMultiPhasePacketData as $data)
        <tr>
          <td>{{ $data->id }}</td>
          <td>{{ $data->Packet_id }}</td>
          <td>{{ $data->Device_id }}</td>
          <td>{{ $data->Sensometer_id }}</td>
          <td>{{ $data->Device_timestamp }}</td>
          <td>{{ $data->Data_count }}</td>
          <td>{{ $data->Meter_parameter_id }}</td>
          <td>{{ $data->Meter_id }}</td>
          <td>{{ $data->phase }}</td>
          <td>{{ $data->Sensor_type }}</td>
          <td>{{ $data->type }}</td>
          <td>{{ $data->value }}</td>
          <td>{{ $data->created_at }}</td>
          <td>{{ $data->updated_at }}</td>
        </tr>
        @endforeach
    </table>
  

    {!! $processMultiPhasePacketData->links('pagination::bootstrap-4') !!}
      
@endsection