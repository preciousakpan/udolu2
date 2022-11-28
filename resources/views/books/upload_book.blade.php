@extends('Layout.app')
@section('content')
<div class="container mb-5">
    <div class="row justify-content-center">
        <div class="col-lg-10s">
            <div class="card shadow-lg border-0 rounded-lg mt-5">
                <div class="card-header"><h3 class="text-center font-weight-light my-4">Create Book</h3></div>
                <div class="card-body">
                    <form action="{{route('submit_book')}}" enctype="multipart/form-data" class="create_book" method="post">
                        @csrf
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <div class="form-floating mb-3 mb-md-0">
                                    <select name="book_category_id" class="form-control" placeholder="click to select category" readonly>
                                        <option value="">Click to select category</option>
                                        @foreach ($bookCategory as $category)
                                        <option value="{{ $category->id }}">{{ $category->book_category }}</option>
                                        @endforeach
                                        @error('book_category_id')
                                        <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </select>
                               </div>
                            </div>
                            
                            <div class="col-md-4">
                                <div class="form-floating">
                                    <input class="form-control" id="book_name" type="text" name="book_name" value="{{ old('book_name') }}" placeholder="Enter book name" />
                                    <label for="book_category_id">Book Name</label>
                                    @error('book_name')
                                    <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-floating">
                                    <input class="form-control" id="book_title" type="text" name="book_title" value="{{ old('book_title') }}" placeholder="Enter book title" />
                                    <label for="book_title">Book Title</label>
                                    @error('book_title')
                                    <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <div class="form-floating">
                                    <input class="form-control" id="book_author" type="text" name="book_author" value="{{ old('book_author') }}" placeholder="Enter book author" />
                                    <label for="book_author">Book Author</label>
                                    @error('book_author')
                                    <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-floating">
                                    <input class="form-control" id="coauthor" type="text" name="coauthor" value="{{ old('coauthor') }}" placeholder="Enter co-author" />
                                    <label for="sub_title">Co Author</label>
                                    @error('coauthor')
                                    <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div> 
                            
                           
                            <div class="col-md-4">
                                <div class="form-floating">
                                    <input class="form-control" id="sub_title" type="text" name="sub_title" value="{{ old('sub_title') }}" placeholder="Enter book sub title" />
                                    <label for="sub_title">Book Sub Title</label>
                                    @error('sub_title')
                                    <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <div class="form-floating mb-3 mb-md-0">
                                    <input class="form-control" id="keywords" type="text" name="keywords" value="{{ old('keywords') }}" placeholder="Enter keywords" />
                                    <label for="keywords">Keywords seperated by comma</label>
                                    @error('keywords')
                                    <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            
                            <div class="col-md-4">
                                <div class="form-floating">
                                    <input class="form-control" id="Publisher" type="text" name="publisher" value="{{ old('publisher') }}" placeholder="Enter publisher" />
                                    <label for="publisher">Publisher</label>
                                    @error('Publisher')
                                    <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-floating">
                                    <input class="form-control" id="narrators" type="text" name="narrators" value="{{ old('narrators') }}" placeholder="Enter Narrators" />
                                    <label for="narrators">Narrator</label>
                                    @error('narrators')
                                    <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <div class="form-floating mb-3 mb-md-0">
                                    <input class="form-control" id="book_price" type="number" name="book_price" value="{{ old('book_price') }}" placeholder="Enter book price" />
                                    <label for="book_price">Book Price</label>
                                    @error('book_price')
                                    <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            
                            <div class="col-md-4">
                                <div class="form-floating mb-3 mb-md-0">
                                    <input class="form-control" id="book_isbn" type="text" name="book_isbn" value="{{ old('book_isbn') }}" placeholder="Enter book isbn" />
                                    <label for="book_isbn">Book Isbn</label>
                                    @error('book_isbn')
                                    <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-floating">
                                    <select name="language_id" class="form-control" placeholder="Click to select language" readonly>
                                        <option value="">click to select available language</option>
                                        @foreach ($language as $language)
                                        <option value="{{ $language->id }}">{{ $language->language }}</option>
                                        @endforeach
                                        @error('language_id')
                                        <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3"> 
                            <div class="col-md-4">
                                <div class="form-floating">
                                <textarea class="form-control" id="book_description" rows="2" type="text" name="book_description" value="{{ old('book_description') }}" placeholder="Book Description" ></textarea>
                                <label for="book_description">Book Description</label>
                                @error('book_description')
                                <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                             <div class="col-md-4">
                                <div class="form-floating">
                                <input class="form-control" id="book_cover_image" type="file" name="book_cover_image"/>
                                <label for="book_cover_image">book cover image</label>
                                @error('book_cover_image')
                                <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                       
                   
                    </div>
                   
                        <div class="row mb-3" id="audio"></div>
                        <div class="row mt-4">
                           
                                <div  class="col"><button type="submit" class="btn btn-primary btn-sm">Upload Book</button></div>
                                <div class="col "><button type="button" class="btn btn-outline-secondary btn-sm" id="addAudio">Add Audio</button></div> 
                             
                            </div>
                       
                           
                    </form>
                </div>
               
            </div>
        </div>
    </div>
</div>

@endsection
@section('js')
<script>
// document.onreadystatechange = () => {
//   if (document.readyState === 'complete') {
//     // document ready
//   
//     var documentForm = document.forms[0];

//     


//   }
//   //if($('#remove_audio')){
       
        
    //}
//};
   $(document).ready(function(){
    var add_audio = document.getElementById("addAudio");
    add_audio.addEventListener("click", function(e){
            e.preventDefault();
            var book_name = $('#book_name').val();
               var html = `<div class="row"><div class="col-md-4 mb-3">
                                <div class="form-floating mb-3 mb-md-0">
                                    <input class="form-control" id="audio_book_name" type="text" name="audio_book_name[]" value="${book_name}" placeholder="Enter audio book name" readonly/>
                                    <label for="audio_book_name">Audio book name</label>
                                    @error('audio_book_name')
                                    <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            
                            <div class="col-md-3 mb-3">
                                <div class="form-floating">
                                    <input class="form-control" id="audio_book_chapter" type="text" name="audio_book_chapter[]" value="" placeholder="Enter the chapter" />
                                    <label for="audio_book_chapter">Audio chapter</label>
                                    @error('audio_chapter')
                                    <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <div class="form-floating">
                                    <input class="form-control form-control-sm" id="Audio_file" type="file" name="Audio_book_file[]"/>
                                   
                                </div>
                            </div>
                            <div class="col-md-2 mb-1 d-grid justify-items-center">
                                <div class="form-floating">
                                    <button class="btn btn-sm btn-danger" id="remove_audio_btn" type="button" name="remove_audio" >Remove</button>
                                </div>
                            </div></div>`
                          $('#audio').append(html);
})

                         $(document).on('click', '#remove_audio_btn', function(e){
                          e.preventDefault();
                            let row_item =  $(this).parent().parent().parent();
                              row_item.remove();
                 })



   })

</script>

@endsection