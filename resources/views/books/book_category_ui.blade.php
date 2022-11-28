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
                                            <th>Book category</th>
                                            <th>Category code</th>
                                            <th>Category description</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Book category</th>
                                            <th>Category code</th>
                                            <th>Category description</th>
                                            <th>Action</th>
                                           
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                        @foreach($bookCategories as $bookCategory) 
                                        </tr>
                                        <tr>
                                            <td>{{ $bookCategory->book_category }}</td>
                                            <td>{{ $bookCategory->book_category_id}}</td>
                                            <td>{{ $bookCategory->book_category_desc }}</td>
                                            
                                            
                                            <td>
                                                <div class="btn-group-sm">
                                                    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">book Action</button>
                                                    <div class="dropdown-menu">
                                                      <a class="btn btn-danger dropdown-item" href="#">Delete</a>
                                                      <a class="btn btn-info dropdown-item showBookCategory" href="#" data-index="{{ $bookCategory->id }}">Edit</a>
                                                      
                                                    </div>
                                                </div>
                                               </td>
                                        </tr>
                                      @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- The Modal -->
    <div class="modal" id="myBookCategoryEditModal">
    <div class="modal-dialog">
      <div class="modal-content">
  
<!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Edit Book Category </h4>
         </div>
  
        <!-- Modal body -->
        <div class="modal-body">
            <form>
                <input type="text" class="form-control mb-2" id="book_category" >
                <input type="text" class="form-control mb-2" id="book_category_id">
                <input type="text" class="form-control" id="book_category_desc">
            </form>
          
        </div>
  
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-success editBookCategory" value="">Submit</button>
          <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
        </div>
  
      </div>
    </div>
  </div>
  <!-- End of Modal -->

@endsection
@section('js')
<script>
$(document).ready(function(){
   
   
    $(document).on('click','.showBookCategory', function(e){
        e.preventDefault();
        let book_id = $(this).data('index')
        getBookDetails(book_id)
        

    });

    $(document).on('click','.editBookCategory', function(e){
        e.preventDefault();
        let book_id = $(this).val()

        editBook(book_id)
        

    });
 function getBookDetails(book_id){
        try{
        const EditBookform = $("#myBookCategoryEditModal");
        const category_name = $("#book_category");
        const category_id = $("#book_category_id");
        const category_desc = $("#book_category_desc");
        $.ajax({
         url: "get_books_id/"+book_id,
            type: "GET",
   // data: $('#ajax-contact-form').serialize(),
         success: function(response) {
            $("#myBookCategoryEditModal").addClass('fade');
            $("#myBookCategoryEditModal").modal('show');
            const response_data = response.data[0];
            category_name.val(response_data.book_category);
            category_id.val(response_data.book_category_id);
            category_desc.val(response_data.book_category_desc);
            $('.editBookCategory').val(book_id)
 
       // console.log(response['data'][0].book_category);
        //
     // $('#submit').html('Submit');
      //$("#submit"). attr("disabled", false);
      //alert('Ajax form has been submitted successfully');
      //document.getElementById("ajax-contact-form").reset(); 
        }
        });
    
        }catch(error){
        console.log(error)

        }

    }

function editBook(book_id){
    const data = {
        "book_category":"hjkkl",
        "book_category_id":"hjkkl",
        "book_category_desc":"hjkkl",

         }
        try{
            $.ajax({
                 url: "update_book/"+book_id,
                type: "GET",
                data: data,
                success: function(response) {
                    console.log(response);
                //  $("#myBookCategoryEditModal").addClass('fade');
                  $("#myBookCategoryEditModal").form.reset(); 
                  $("#myBookCategoryEditModal").modal('hide');
                
                

           

        
       
    
     // $('#submit').html('Submit');
      //$("#submit"). attr("disabled", false);
      //alert('Ajax form has been submitted successfully');
      //document.getElementById("ajax-contact-form").reset(); 
    }
   });

        }
        catch(error){
            console.log(error);

        }


    }
    
    

    //     EditBookButton.click(function(e){
    //  e.preventDefault();
    // let book_id = EditBookButton;
    // console.log(book_id);
    // // const EditBookform = $("#myBookCategoryEditModal");
    // const category_name = $("#book_category");
    // const category_id = $("#book_category_id");
    // const category_desc = $("#book_category_desc");
   
//     const request = new XMLHttpRequest();
   
//     request.open("GET", "get_books_id/"+book_id);
//  // Defining event listener for readystatechange event
//  request.onreadystatechange = function() {
//         // Check if the request is compete and was successful
//         if(this.readyState === 4 && this.status === 200) {
//             // Inserting the response from server into an HTML element
//            // document.getElementById("result").innerHTML = this.responseText;
//            console.log(JSON.parse(this.response).data[0]['book_category']);
//         }
//     };

//     // Sending the request to the server
//     request.send();

    
    //console.log('My book id is'+ " " +book_id);


   
   


 });  
</script> 
@endsection


