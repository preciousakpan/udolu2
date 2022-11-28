<?php

namespace App\Http\Controllers;

use App\Models\book_category;
use App\Models\language;
use App\Models\book;
use App\Models\streamed_book;
use App\Models\book_file;
use App\Models\bookDownload;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Facades\collections;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary as Cloudinary;
use Carbon\Carbon;

class booksController extends Controller
{
    private $image = [];
    public function __construct()
    {
        $this->middleware(function ($request, $next) {  
        if (!Auth::user()) {
            abort(404);
        }
            return $next($request);
        });
    }
public function booksCategory(Request $request){

         if($request->method() == 'POST'){
            $this->validate($request, [
                'book_category' => ['required','string','max:255'],
                'book_category_id' =>['required', 'string', 'max:255'],
                'category_description' => ['required','string'],
           ]);
         
     try{
        if(!$request->hasFile('category_image')){
            throw new \Exception('Book category image file do not exist');
        }
        $getImagePath = $request->file('category_image')->storeAs('uploads', 'category_image', 'public');
        $bookCategory = new book_category;
        $bookCategory->book_category = $request->book_category;
        $bookCategory->book_category_id = $request->book_category_id;
        $bookCategory->book_category_desc = $request->category_description;
        $bookCategory->category_image = $getImagePath;
        $bookCategory->save();
         return back()->with('success', 'Book category updated!');

        }catch(\Exception $error){
            return back()->with('danger', $error);
         }
           
           }
        return view('books.create_book_category');
        }

    public function getBookCategory(){

     try{
      $bookCategory = book_category::all();
      return response()->json(['code'=>'000','message'=> $bookCategory], 200);
      }
      catch(\Exception $error){}
     return response()->json(['code'=>'400','message'=> 'Cannot fetch book category at this time'], 500);

    }

public function submitBook(Request $request){ 
    try{
    
         $request->request->add([
            'durationofaudio' => '0ms',
            'user_guidance' => '0',
            'hasAudio' => '0'
        ]);
       $this->validate($request, [
        'book_name' =>['required','string'],
        'sub_title' =>['required','string'],
        'coauthor' =>['required','string'],
        'publisher' =>['string'],
        'narrators' =>['required','string'],
        'keywords' => ['required','string'],
        'book_isbn' =>['required','string'],
        'book_title' =>['required','string'],
        'book_description' =>['required','string'],
        'book_author' =>['string'],
        'book_category_id' => ['required','string'],
        'language_id' =>['required','string'],
        'book_price' =>['required']
        ]);
       
        $bookCoverImage = $request->file('book_cover_image');
        $audio_chapter = $request->input('audio_book_chapter');
        $Audio_book_file = $request->file('Audio_book_file');
       $number_of_files_uploaded =  count($Audio_book_file);
       
        if($request->hasAudio == '1' && !$request->file('$Audio_book_file')){
         
                  throw new \Exception('please attach audio file for this book');
                }
        $submission_date = Carbon::now()->timezone('Africa/lagos')->format('Y-m-d');
      
       
             if(!$request->hasFile('book_cover_image')){
                throw new \Exception('Some files do not exist');
            }
            
           
            $name = time().'_'.$request->file('book_cover_image')->getClientOriginalName();
            $filePath = $request->file('book_cover_image')->storeAs('uploads', $name, 'public');
       
             $book = new book;
           $book->book_name = $request->book_name;
            $book->sub_title = $request->sub_title;
            $book->durationofaudio = $request->durationofaudio;
            $book->coauthor = $request->coauthor;
            $book->publisher = $request->publisher;
            $book->narrators = $request->narrators;
            $book->keywords = $request->keywords;
            $book->user_guidance = $request->user_guidance;
            $book->book_isbn = $request->book_isbn;
            $book->book_description = $request->book_description;
            $book->hasAudio = $request->hasAudio;
            $book->book_author = $request->book_author;
            $book->entry_date = $submission_date;
            $book->book_category_id  = $request->book_category_id ;
            $book->language_id = $request->language_id;
            $book->book_cover_image_path =  $filePath;
            $book->uploaded_by = $request->is('api/*') ? $request->uploaded_by : auth::user()->user_email;
             $book->book_price =  $request->book_price;
            $book->save();
            
          //  for($i=0; $i <= $number_of_files_uploaded-1; $i++){
            for($i=0; $i <= $number_of_files_uploaded-1; $i++){
                

                 $cloudinarySave = Cloudinary()->upload($Audio_book_file[$i]->getRealPath(), [
                    "resource_type" => "video"])->getSecurePath();
                    
                
                 $book_files = new book_file; 
                 $book_files->book_id = $book->id;
                 $book_files->chapter =  $audio_chapter[$i];
                 $book_files->audio_book_path =  $cloudinarySave;
                 $book_files->save();
                }
                 
           
            if($request->is('api/*')){
                return response()->json(['code'=>'000','message'=> 'Book uploaded'], 200);
                
                }
                //dd('success');
            
                return back()->with('success','Book uploaded');


        
        }

    catch (ValidationException $th) {
       if( $request->is('api/*')){
    return response()->json(['message' => $th->validator->errors()->first()], 422);
         }
    return back()->with('danger', $th->validator->errors()->first());
    }
    catch(\Exception $error){
       // return $error->getMessage();
       if( $request->is('api/*')){
        return response()->json(['message' => "Book upload failed"], 422);
             }
        return back()->with('error','failed');
    }
  
  
  }

public function getBooks(Request $request){
    try{
       
        if($request->Method() == 'POST'){
            $this->validate($request, [
                'id'=>['required','string']
            ]);
           $book_category_id = $request->id;
     if(!isset($book_category_id)){
                throw new \Exception('Book category cannot be empty');
            }
        //$getBook = book::where('book_category_id',  $book_category_id)->get();
        $getBook = book::where('book_category_id', $book_category_id)->get();
        $getBookCount = count( $getBook );
        if($getBookCount <= 0){
            throw new \Exception('No record found for this category');
        }
        return response()->json([
            'code'=>  '000',
            'message'=> $getBook,
        ], 200);

        }
        $All_books = book::all();

        if(!$All_books){
            throw new \Exception('No record found');
        }
        return response()->json([
            'code'=>  '000',
            'message'=> $All_books,
        ], 200);
    }catch(\Exception $error){
        return response()->json([
            'code'=>'400',
            'message'=>$error->getMessage()
        ], 500);

    }


  }

public function gettransaction(Request $request){
    dd('get with transactions with id');

}
public function submittransaction(Request $request){
   try{ 
    $this->validate($request,[
        'udolu_transaction_id' =>['required','string'],
        'paystack_transaction_ref' =>['required','string'],
        'user_email' =>['required','string'],
        'amount' =>['required','string'],
        'payment_status' =>['required','string'], 
    ]);



   }catch(\Exception $error){

   }
}
public function createlanguage(Request $request){
    
    if($request->method() == 'POST'){
        try{
       
            $this->validate($request, [
                'language'=>['required', 'string'],
                'language_code'=>['required', 'string'],
            ]);
            $language = new language;
            $language->language = $request->language;
            $language->language_code = $request->language_code;
            $language->save();
            if($language){
               $request->is('Api/*') ? response()->json(['code'=>'000', 'message'=> 'Language '.$request->language.' created']) : back()->with('success', 'Language Created'); 
            }
            throw new \Exception('Failed to create language');
    
        }catch(\Exception $error){
            $request->is('Api/*') ? response()->json(['code'=>'400', 'message'=>$error->getMessage()]) : back()->with('error', 'Language upload failed');
         }
    }
   
             return view('books.create_book_language');      
}

public function getlanguage(Request $request){
    try{
        $languages = language::all();
        if($languages){
            
           if( $request->is('Api/*')){ 
                response()->json(['code'=>'400','message'=>'No language found']);
             }

            return view('books.languages')->with('languages', $languages);
        }
       throw new \Exception('No language found'); 
    }catch(\Exception $error){
        $request->is('Api/*') ?  response()->json(['code'=>'400','message'=>'No language found']) : back()->with('error', 'No language found');
    }


    
}

public function createBook(Request $request){
    $bookCategory = book_category::all();
    $language = language::all();
    //dd($language);
    return view('books.upload_book',compact('bookCategory','language'));
}

public function getLanguageBasedBooks(Request $request){
    try{
        $this->validate($request, [
            'languageid'=>['required']
        ]);
   
    $book_language_id = $request->languageid;
    if(!isset($book_language_id)){
         throw new \Exception('Book category cannot be empty');
     }
     $getBook = book::where('language_id', $book_language_id)->get();
     $getBookCount = count( $getBook );
     if($getBookCount <= 0){
         throw new \Exception('No record found for this category');
     }
     return response()->json([
         'code'=>  '000',
         'message'=> $getBook,
     ], 200);

        

    }catch(\Exception $error){
        return response()->json([
            'code'=>'400',
            'message'=>$error->getMessage()
        ], 500);
    }


}

public function getBookCategories(){
    try{
        $bookCategories = book_category::all();
        if($bookCategories){
            return view('books.book_category_ui')->with('bookCategories', $bookCategories);
        }
       
       return back()->with('error', 'No record found');

    }catch(\Exception $error){
        return back()->with('error', 'No record found');
 }
}
public function getAllBooks(){
    $all_books = book::all();
   return view('books.index')->with('all_books', $all_books);
}
public function deleteRecord(Request $request, $id, $record){
    try{
        switch($record) {
            case('delete_bookCategory'):
                $bookCategory = new book_category;
                $record_to_delete = $bookCategory->find($id);
                $record_to_delete->delete();
                $msg = "Record deleted";
                break;
                case('delete_language'):
                  $languages = language::find($id);
                    $record_to_delete = $languages->delete();
                    if($record_to_delete){
                        dd('Deleted');
                    }
                    dd('not deleted');
                    //$msg = "Record deleted";
                    break;

                    case('delete_book'):
                        $books = new book;
                        $record_to_delete =  $books->find($id);
                        $record_to_delete->destroy();
                        $msg = "Record deleted";
                        break;
    
      default:
              throw new \Exception('Something went wrong');
            }
            return back()->with('success', 'Record deleted successfully');

    }catch(\Exception $error){
        return back()->with('error', 'Something went wrong');
    }
   
 
}

public function getAllBookById(Request $request){
    // $this->validate($request, [
    //     'id'=>['required']
    // ]);
    try{
        $book_id = $request->id;
        if(!$book_id || !isset($book_id)){
            return response()->json(['status'=>'500', 'data'=>'Record Not Found'], 500);

        }
        $book_category_to_edit = book_category::where('id', $book_id)->get();
        if($book_category_to_edit){
            return response()->json(['status'=>'200', 'data'=>$book_category_to_edit], 200);
                }
                return response()->json(['status'=>'404','data'=>'No rocord found'], 500);
      }catch(\Exception $error){

        return response()->json(['status'=>'500', 'data'=> $error], 500);
    }

}

public function update_book(Request $request){
    try{
       $this->validate($request, [
        'book_category' =>['required','string'],
        'book_category_id' =>['required','string'],
        'book_category_desc' =>['required','string']
        ]);   
    $book_id = $request->id;
    if(!$book_id || !isset($book_id)){
        return response()->json(['status'=>'500', 'data'=>'Record Not Found'], 500);
        }
    //$details_to_upload = $request->all();
    $book_category_to_edit = book_category::find($book_id);
   // ->update(['book_category' => $request->input('book_category'), 'book_category_id' => $request->input('book_category_id'),'book_category_desc' => $request->input('book_category_desc')]); 
    $book_category_to_edit->book_category = $request->input('book_category');
    $book_category_to_edit->book_category_id = $request->input('book_category_id');
    $book_category_to_edit->book_category_desc = $request->input('book_category_desc');
    $book_category_to_edit->save();
    if($book_category_to_edit){
        return response()->json(['status'=>'200', 'message'=>'Record Changed Successfully'], 200);

    }
        return response()->json(['status'=>'500', 'message'=>'Record Update Failed'], 500);

    }catch(\Exception $error){

    return response()->json(['status'=>'500', 'message'=>$error->getMessage()/**'Record Update Failed'**/], 500);

    }
  


   

} 
public function verifyStream(Request $request){
   
    try{
        $this->validate($request, [
            'user_email' =>['required','email'],
            'book_id' =>['required','string'],
            'stream_duration' =>['required','string'],
            'session_id' =>['required','string']
        ]);
    
        $bookExist = book::find($request->book_id);
        $sessionExist = streamed_book::where('session_id', $request->session_id)->get();
        if(!$bookExist){
            throw new \Exception('Book does not exist');
        }
        //dd($sessionExist);
        if(count($sessionExist) <= 0){
           return  $this->updateStreamDuration($request);
        }
        return $this->createStreamDuration($request);
    }catch(\Exception $error){
        return response()->json(['code' => '500', 'message'=>"Stream duration update failed"], 500);
    }
   
   }
public function createStreamDuration(Request $request){
    try{ 
        $this->validate($request, [
            'user_email' =>['required','email'],
            'book_id' =>['required','string'],
            'stream_duration' =>['required','string'],
            'session_id' =>['required','string']
        ]);
        //return 'update stream';
        $getLoggedInUser = book::where('id', $request->book_id)->get(['id','booklistencount']);
       if($getLoggedInUser){
            $streamTable = new streamed_book();
            $streamTable->book_id = $request->book_id;
            $streamTable->user_email = $request->user_email;
            $streamTable->stream_duration = $request->stream_duration;
            $streamTable->	uploaded_by =  $request->user_email;
            $streamTable->save();
            //return $streamTable;
    
            $updatebooks = book::find($request->book_id);
            $updatebooks->booklistencount = intval($updatebooks->booklistencount) + 1;
            $updatebooks->save();
            if($streamTable){
                if($request->is('api/*')){
                    return response()->json(['code' => '400', 'message'=>'Stream duration updated'], 200);
                    
                    }
                    //dd('success');
                
                    return back()->with('success','Stream duration updated');
              
            
               }
               if($request->is('api/*')){
                return response()->json(['code' => '400', 'message'=>'Stream duration failed'], 500);
                
                }
                //dd('success');
            
                return back()->with('danger','Stream duration failed');
              
            }
    
    
        }
        catch(\Exception $error){
            return response()->json(['code' => '500', 'message'=>"Stream duration update failed"], 500);
            
        if($request->is('api/*')){
            return response()->json(['code' => '500', 'message'=>"Stream duration update failed"], 500);
            
            }
            return back()->with('danger','Stream duration update failed');
    
       } 
}

public function updateStreamDuration(Request $request){
   try{ 
    $this->validate($request, [
        'user_email' =>['required','email'],
        'book_id' =>['required','string'],
        'stream_duration' =>['required','string'],
        'session_id' =>['required','string']
    ]);
    //return 'update stream';
    $getLoggedInUser = book::where('id', $request->book_id)->get(['id','booklistencount']);
   if($getLoggedInUser){
        $streamTable =  streamed_book::where('stream_id', $request->stream_id)->get();
        $streamTable->stream_duration = intval($streamTable->stream_duration) + $streamTable->stream_duration;
        $streamTable->save();
        //return $streamTable;

        $updatebooks = book::find($request->book_id);
        $updatebooks->booklistencount = intval($updatebooks->booklistencount) + 1;
        $updatebooks->save();
        if($streamTable){
            if($request->is('api/*')){
                return response()->json(['code' => '400', 'message'=>'Stream duration updated'], 200);
                
                }
                //dd('success');
            
                return back()->with('success','Stream duration updated');
          
        
           }
           if($request->is('api/*')){
            return response()->json(['code' => '400', 'message'=>'Stream duration failed'], 500);
            
            }
            //dd('success');
        
            return back()->with('danger','Stream duration failed');
          
        }


    }
    catch(\Exception $error){
        //return response()->json(['code' => '500', 'message'=>"Stream duration update failed"], 500);
        return $error->getMessage();
        
    if($request->is('api/*')){
        return response()->json(['code' => '500', 'message'=>"Stream duration update failed"], 500);
        
        }
        return back()->with('danger','Stream duration update failed');

   } 
}

public function bookRating(Request $request){
    try{
        $this->validate($request, [
            'rating' =>['required','string'],
            'bookid' =>['required','string']
        ]);

        $getBookToBeRated = book::find($request->bookid);
        $getBookToBeRated->book_rating = $getBookToBeRated->book_rating +=$request->rating;
        $getBookToBeRated->save();
        if($getBookToBeRated){
            if($request->is('api/*')){
                return response()->json(['code' => '400', 'message'=>'Book rating updated'], 200);
                
                }
                //dd('success');
            
                return back()->with('success','Book rating updated');
          
        
           }
           if($request->is('api/*')){
            return response()->json(['code' => '500', 'message'=>'Book rating failed'], 500);
            
            }
            //dd('success');
        
            return back()->with('danger','Book rating failed');

        



    }catch(\Exception $error){
        if($request->is('api/*')){
            return response()->json(['code' => '500', 'message'=>"Rating failed"], 500);
            
            }
            return back()->with('danger','Rating failed');
    
       } 
}

public function bookDownloads(Request $request){
    try{
        $this->validate($request, [
            'user_email' =>['required','string'],
            'bookid' =>['required','string']
        ]);

        $getBookToBeRated = book::find($request->bookid);
        $getBookToBeRated->downloadCount = $getBookToBeRated->downloadCount +=1;
        $getBookToBeRated->save();

        $updatedownloaddetails = new bookDownload();
        $updatedownloaddetails->book_id = $request->bookid;
        $updatedownloaddetails->user_email = $request->user_email;
        $updatedownloaddetails->save();
        if($getBookToBeRated && $updatedownloaddetails){
            if($request->is('api/*')){
                return response()->json(['code' => '400', 'message'=>'Book download updated'], 200);
                }
                //dd('success');
            
                return back()->with('success','Book download updated');
          
        
           }
           if($request->is('api/*')){
            return response()->json(['code' => '500', 'message'=>'Book download failed'], 500);
            
            }
            //dd('success');
        
            return back()->with('danger','Book download failed');

        



    }catch(\Exception $error){
        if($request->is('api/*')){
            return response()->json(['code' => '500', 'message'=>"Download failed"], 500);
            
            }
            return back()->with('danger','Download failed');
    
       } 

}
public function search(Request $request){
    try{
        if ($request->search_term) {

        if ($request->isMethod('post')) {

            $multiplycolumnSearch = book::where('book_author', 'like', '%' . $request->search_term . '%')
                ->orwhere('language_id', 'like', '%' . $request->search_term . '%')
                ->orWhere('book_title', 'like', '%' . $request->search_term . '%')->get();
             if($multiplycolumnSearch){
                return response()->json(["code"=>"200", "message"=> $multiplycolumnSearch], 200);
             }
             return response()->json(["code"=>"500", "message"=> "No book found"], 500);
        }
    
            
                $book = book::where('book_title', 'Like', '%' . request('search_term') . '%')->orderBy('id', 'DESC')->get();
                if($book){
                    if($request->is('api/*')){
                        return response()->json(['code' => '400', 'message'=>$book], 200);
                        
                        }
                     
                   }
                    
                    return back()->with('danger','Book download failed');
                
                
    
            }
            return response()->json(["code"=>"500", 'message'=>'No search term'], 500);

    }catch(\Exception $error){
        
        return response()->json(["code"=>"500", "message"=>"Books not found"], 500);
    }
  

      

}

}


