@extends('Layout.app')
@section('content')
<div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Udolu User Details
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Date Registered</th>
                                            <th>User Role</th>
                                            <th>Action</th>
                                            
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Date Registered</th>
                                            <th>User Role</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        @foreach($users1 as $user)
                                        <tr>
                                            <td>{{$user->user_firstname }}</td>
                                            <td>{{$user->user_email}}</td>
                                            <td>{{$user->reg_date}}</td>
                                            <td>{{$user->user_role}}</td>
                                            <td class='text-center'>
                                                
                                                <div class="btn-group-sm">
                                                    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">User Action</button>
                                                    <div class="dropdown-menu">
                                                      <a class="btn btn-danger dropdown-item" href="#">Delete</a>
                                                      <a class="btn btn-info dropdown-item" href="#">Edit</a>
                                                    
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


