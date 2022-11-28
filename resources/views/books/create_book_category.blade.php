@extends('Layout.app')
@section('content')

<div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Create Book Category</h3></div>
                                    <div class="card-body">
                                        <form action="{{route('create_book_category')}}" enctype="multipart/form-data" method="post">
                                            @csrf
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="book_category" type="text" name="book_category" value="{{ old('book_category') }}" placeholder="Enter category Name" />
                                                        <label for="book_category">Book Category</label>
                                                        @error('book_category')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                                
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input class="form-control" id="book_category_id" type="text" name="book_category_id" value="{{ old('book_category_id') }}" placeholder="Enter book category id" />
                                                        <label for="book_category_id">Book Category Id</label>
                                                        @error('book_category_id')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                            <div class="col-md-6">
                                            <div class="form-floating">
                                                <textarea class="form-control" id="category_description"  name="category_description" value="{{ old('category_description') }}" placeholder="Enter Book Category Description"></textarea>
                                                <label for="category_description">Category Description</label>
                                                @error('category_description')
                                                        <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                                </div>
                                                <div class="col-md-6">
                                                <div class="form-floating">
                                                <input type='file' class="form-control" id="category_image"  name="category_image" value="{{ old('category_image') }}" placeholder="Enter Book Category Description" />
                                                @error('Category_image')
                                                        <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            </div>
</div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><button type="submit" class="btn btn-primary btn-block">Create category</a></div>
                                            </div>
                                        </form>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                    </div>


@endsection
