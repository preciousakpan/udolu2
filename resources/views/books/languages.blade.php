@extends('Layout.app')
@section('content')
<div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Details
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Language Id</th>
                                            <th>Language Code</th>
                                            <th>Language</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Language Id</th>
                                            <th>Language Code</th>
                                            <th>Language</th>
                                            <th>Action</th>
                                           
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                        @foreach($languages as $language) 
                                        </tr>
                                        <tr>
                                            <td>{{ $language->id }}</td>
                                            <td>{{ $language->language_code }}</td>
                                            <td>{{ $language->language }}</td>
                                            
                                            <td>
                                                <div class="btn-group-sm">
                                                    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">book Action</button>
                                                    <div class="dropdown-menu">
                                                      <a class="btn btn-danger dropdown-item" href="{{ route('delete_record', [ 'id'=> $language->id, 'record'=>'delete_language' ]) }}">Delete</a>
                                                      <a class="btn btn-info dropdown-item" href="#">Update</a>
                                                      
                                                    </div>
                                                </div>
                                               </td>
                                        </tr>
                                      @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>

@endsection


