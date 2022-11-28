<?php

namespace App\Http\Controllers\auth;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;
use App\Mail\passwordResetmail;
use Illuminate\Support\Facades\Mail;
use Carbon\Carbon;
use App\Models\User;
use Validator;

class RegisterController extends Controller
{
public function index(){
    return view('Auth.login');
}
public function login(Request $request)
    {
       try {
              if($request->method() == 'GET'){
                 return view('Auth.login');
                 //dd('hey Precious');
         
                }
            $this->validate($request, [
                'user_email' =>['required', 'string', 'max:255'],
                'password' => ['required','string'],
            ]);
           
            $userModel = new User();
           
           if (!$token = Auth::attempt(['user_email' => $request->user_email, 'password' => $request->password, 'status'=>'active'])) {
         // dd($request->is('api/login'));
            return  $request->is('api/login') ? response()->json([ 'code'=>'400', 'message' => 'Invalid Login'], 401) :  back()->with('error', 'Login failed') ;

            }
            //$request->session()->regenerate();
           // 
         $users = Auth::user(); 
        //dd(User::where('user_email', $request->user_email));

        $success['token'] =  $users->createToken('MyApp')->plainTextToken; 
        $success['user_information'] =  $users;
        //dd($user->subscription());
        //$success['days_left'] = customersubscriptionDaysLeft();
        if ($request->is('api/*')) {
            
            return response()->json(["code" =>'000',"message" => "Login Successful", "userInfo"=> $success], 200);
        }
        
         return redirect('admin/users')->with('users', $users);
    
        
        }
         catch (ValidationException $th) {
        return ($request->is('api/login')) ?
             response()->json([
                'message' => $th->validator->errors()->first()
            ], 422) :  redirect()->back()->with('error', $th->validator->errors()->first());

        } 
        catch (\Exception $error) {
            return response()->json([
                'code'=>'400',
                'message' => $error->getMessage()//'Invalid Login'
            ], 500);
        }
    }
public function logout(){
    if(Auth::check()){
        Auth::logout();
         return back();
    }
    return view('auth.login');
   
}

public function userStatusToggle(Request $request){

   // user = $request->input('id');
}

public function Register(Request $request){
  try{
    //  
    if($request->isMethod('post')){
    $this->validate($request, [
        'user_firstname' => ['required', 'string', 'max:255'],
        'user_othernames' =>['required','string','max:255'],
        'user_email' => ['bail','required','string','email','max:255','unique:users'],
        'password' => ['bail','required','min:5','confirmed'],
        'password_confirmation' => ['required','min:5']
     ]);
     
     $reg_date = Carbon::now()->timezone('Africa/lagos')->format('Y-m-d');
      
        $user = new User;
        $user->user_firstname = $request->user_firstname;
        $user->user_othernames = $request->user_othernames;
        $user->user_email = $request->user_email;
        $user->user_role = "Reader";
        $user->status = "active";
        $user->reg_date = $reg_date;
        $user->password = Hash::make($request->password);
        $user->save();
        
        $success['token'] =  $user->createToken('MyApp')->plainTextToken;
        $success['name'] =  $user->user_firstname;

        //return $this->sendResponse($success, 'User register successfully.');
     if($user){
        return response()->json([
            'code' => '000',
            'message' =>  $success
        ], 200);
      
     }
    }
  
              return view('Auth.register');
            
           
  }catch (ValidationException $th) {
    return response()->json([
        'message' => $th->validator->errors()->first()
    ], 422);
 } catch(\Exception $e){
   
    return response()->json([
        'message' => 'Login failed'
      
    ], 500);
  }
      

}

public function resetPassword(Request $request){
   
        $this->validate($request, [
            'email' => 'required|email'
       ]);
       try{
        $user_email = $request->email;
        $user = User::where("user_email",$user_email)->get(["user_email","id"])->first();
        $recovery_pin = mt_rand(100000, 999999);  
         Mail::to($user->user_email)->send(new passwordResetmail($recovery_pin, $user));
         $user_to_update = User::find($user->id);
         $user_to_update->password = Hash::make($recovery_pin);
         try {
            $user_to_update->save();
        } catch (\Throwable $e) {
            return $e->getMessage();
        }
         
         //dd($user->wasChanged('password'));
        if($request->is('api/*')){
            return response()->json(['code' => '400', 'message'=>'successful'], 200);
            
            }
            //dd('success');
        
            return back()->with('success','Book uploaded');
      
    
       }
       catch(\Exception $error){
    
        if($request->is('api/*')){
            return response()->json(['code' => '500', 'message'=>"failed"], 500);
            
            }
            return back()->with('danger','failed');
    
       }
       
    
          
        }
        
    
}



