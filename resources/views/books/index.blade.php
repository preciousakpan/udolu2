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
                                            <th>Book name</th>
                                            <th>Author</th>
                                            <th>Co-Author</th>
                                            <th>Book Price</th>
                                            <th>Description date</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Book name</th>
                                            <th>Author</th>
                                            <th>Co-Author</th>
                                            <th>Book Price</th>
                                            <th>Description date</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                        @foreach($all_books as $book) 
                                        </tr>
                                        <tr>
                                            <td>{{ $book->book_name }}</td>
                                            <td>{{ $book->book_author }}</td>
                                            <td>{{ $book->coauthor }}</td>
                                            <td>{{ $book->book_price }}</td>
                                            <td>{{ $book->book_description }}</td>
                                            <td>
                                                <div class="btn-group-sm">
                                                    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">book Action</button>
                                                    <div class="dropdown-menu">
                                                      <a class="btn btn-danger dropdown-item" href="#">Delete</a>
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


