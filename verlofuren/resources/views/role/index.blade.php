@extends('layouts.app')

@section('content')
    <div class="container">
        <table class="table">
            {{--<thead class="thead-dark">--}}
            <tr  style="background-color: #000000">
                <th style="color: #ffffff" scope="col">{{__('role.Name')}}</th>
                <th style="color: #ffffff" scope="col"></th>
                <th style="color: #ffffff" scope="col"></th>
            </tr>
            {{--</thead>--}}
            <tbody>
            @foreach($role as  $data)
                <tr>
                    <td>{{$data->name}}</td>
                    <td>
                        <form method="post" action="{{route('role.edit', [$data->id])}}">
                            {{ csrf_field() }}
                            @method('GET')
                            <button type="submit" value="Edit" class="btn btn-outline-dark">{{__('role.Edit')}}</button>
                        </form>

                    </td>


                    <td>
                        <form method="post" action="{{route('role.destroy', [$data->id])}}">
                            {{ csrf_field() }}
                            @method('DELETE')
                            <button type="submit" value="Delete" class="btn btn-outline-dark">{{__('role.Delete')}}</button>
                        </form>

                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
@endsection
