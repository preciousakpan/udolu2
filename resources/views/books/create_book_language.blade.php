@extends('Layout.app')
@section('content')

<div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5 mb-3">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Create Book Language</h3></div>
                                    <div class="card-body">
                                        <form action="{{ route('create_book_languages') }}" enctype="multipart/form-data" method="post">
                                            @csrf
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="language_code" type="text" name="language_code" value="{{ old('language_code') }}" placeholder="Enter language id" />
                                                        <label for="language_code">Language Id</label>
                                                        @error('language_code')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                                
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input class="form-control" id="language" type="text" name="language" value="{{ old('language') }}" placeholder="Enter language" />
                                                        <label for="language">Language Name</label>
                                                        @error('language')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                         </div>
                                                         </div>
                                                </div>
                                           
                                                </div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><button type="submit" class="btn btn-primary btn-sm">Create language</a></div>
                                            </div>
                                        </form>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                   


@endsection
