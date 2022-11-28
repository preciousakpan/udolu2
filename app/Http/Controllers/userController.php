<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use App\Models\transaction;
use App\Models\user_subscription;
use App\Models\subscription;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;


class userController extends Controller
{
    public function __construct()
    {
       
    

        $this->middleware(function ($request, $next) {  
        if (!Auth::user()) {
            return redirect('/login');
        }
            return $next($request);
        });
    }
    //
    public function index(){
        
        $users = User::all();
        return view('users.user')->with('users1', $users);
    }

    public function subscription(Request $request){
        try{
            $this->validate($request, [
                'id' =>['required', 'string'],
                'subscription_duration' =>['required', 'string'],
                'amount' =>['required', 'string']
                ]);
               
               
                $subscriptionModel = new subscription;
                $subscriptionModel->id = $request->id;
                $subscriptionModel->subscription_duration = $request->subscription_duration;
                $subscriptionModel->amount = $request->amount;
                $subscriptionModel->save();
                 return response()->json(['code'=>'000', 'Message'=> 'Subscription type updated!'],200);
            }
           
        
        catch(\Exception $error){
            return response()->json(['code'=>'400','Message'=>'Subscription type not created!'],400);
        }


    }

    public function get_subscriptions(Request $request){
        try{
           $subscriptionModel = subscription::all();
           if($subscriptionModel){
                    return response()->json(['code'=>'000','subscriptions'=>$subscriptionModel]);

                }
                log($subscriptionModel);
                throw new \Exception('Record not found');
             }
        
        catch(\Exception $error){
            return back()->with('Failed', 'Subscription type not created!');
        }


    }
public function user(Request $request){
    $user = $request->user();
   $user_late_transaction = user_subscription::where('user_id', $user->user_email)->latest()->get()->first();
   $daysLeft = carbon::parse($user_late_transaction->subscribed_on)->diffInDays(carbon::parse($user_late_transaction->subscription_expiry));
   $user->setAttribute('days_left', $daysLeft);
   return $user;
    //dd($user);


}
//  public function customersubscriptionDaysLeft($request){
//     try{
//         $user = $request->user();
//          $daysLeft = carbon::parse($user_late_transaction->subscribed_on)->diffInDays(carbon::parse($user_late_transaction->subscription_expiry));
//         if($daysLeft) {
//             return $daysLeft;
//             }
//             return '-1';
//         }catch(\Exception $error){
//         throw response()->json(['code'=>'400','message'=>'unable to get user details']);
//     }
   
//           //  $user->setAttribute('days_left', $daysLeft);

//  }
public function profileUpdate(Request $request){
    $this->validate($request,[
        'first_name'=>['required','string'], 
        'last_name' =>['required','string'],  
        'password' => ['required','string'], 
        'profile_image'=> ['required']
        ]);
        $fileName = time().'_'.$request->file->getClientOriginalName();
        $filePath = $request->file('file')->storeAs('uploads', $fileName, 'public');
         $loggedinUser = Auth::user();
        $user_to_update = User::find($loggedinUser->id);
        $user_to_update->user_name = $request->first_name;
        $user_to_update->last_name = $request->last_name;
        $user_to_update->password = $request->password;
        $user_to_update->profile_image = '/storage/' . $filePath;
        try {
           $user_to_update->save();
           if($user_to_update){
            if($request->is('api/*')){
                return response()->json(['code'=>'200','message'=> 'Profile updated'], 200);
                
                }
                //dd('success');
            
                return back()->with('success','Profile updated');

           }
       } catch (\Throwable $e) {
           return response()->json(["code"=>"500",  "message"=>"Profile update failed"], 500);
       }
}
public function subscribe(Request $request){
      
       //addMonths()
        try{
            $user = Auth::user();
            //     dd( );
            $this->validate($request, [
                'udolu_transaction_id' =>['required','string'],
                 'paystack_transaction_ref' =>['required','string'],
                 'user_email' =>['required','string'],
                'amount' =>['required','string'],
                'transaction_status' =>['required','string'], 
                'subscription_id'=>['required'],
                'transaction_type'=>['required'],
                

          
        //     'id' =>['required'],
        //    'user_id'=>['required'],
        //    'subscription_id'=>['required'],
        //    'transaction_type'=>['required'],
        //    'payment_channel'=>['required'],
        //    'amount'=>['required']
        ]);
       
        $subscription_date = Carbon::now()->timezone('Africa/lagos')->format('Y-m-d');
        $usersubscription = subscription::find($request->subscription_id);

        if($usersubscription->amount != $request->amount ){
            throw new \Exception('You cannot subscribe to this plan');
        }
        $splitSub = explode('-', $usersubscription->subscription_duration, 2);
         $duration_number =  $splitSub['0'];
         $duration_word =  $splitSub['1'];
         if($duration_word == 'year' || $duration_word == 'years'){
            $expiry_date = Carbon::now()->timezone('Africa/lagos')->addYears($duration_number)->format('Y-m-d');
         }
         if($duration_word == 'weeks'){
            $expiry_date = Carbon::now()->timezone('Africa/lagos')->addWeeks($duration_number)->format('Y-m-d');
         }
         $remaining_subscription = carbon::parse($subscription_date)->diffInDays($expiry_date);
       //dd($remaining_subscription);
       if($remaining_subscription <= 0){
         throw new \Exception('Your subscription has expired');
       }
       try{
        DB::beginTransaction();
        $transaction = new transaction;
        $transaction->id = $request->udolu_transaction_id;
        $transaction->user_id = Auth::user()->user_email;
        $transaction->Transaction_type = $request->transaction_type;
        $transaction->transaction_status = $request->transaction_status;
        $transaction->paystack_ref = $request->paystack_transaction_ref;
        $transaction->payment_channel = $request->payment_channel;
        $transaction->amount = $request->amount;
        $transaction->save();
        if($request->transaction_type == 'subscription'){
          $user_subscription = new user_subscription;
          $user_subscription->user_id = Auth::user()->user_email;
          $user_subscription->transaction_id = $request->udolu_transaction_id;
          $user_subscription->subscription_id = $request->subscription_id;
          $user_subscription->subscription_status = $remaining_subscription <= 0 ? 'inactive' : 'active';
          $user_subscription->subscribed_on = $subscription_date;
          $user_subscription->subscription_expiry = $expiry_date;
          $user_subscription->save();
            }
        $updateUserSubscription = Auth::user();
        $updateUserSubscription->subisActive = $remaining_subscription <= 0 ? '0' : '1';
        $updateUserSubscription->save();
        DB::commit();

       }catch(\Exception $error){
        DB::rollBack();
        //throw $error;
        return response()->json(['code' => '400', 'message'=>$error]);
       } 
     
        
        return response()->json(['code' =>'000', 'message'=>'Subscription was successful']);


        }catch(\Exception $error){
            return response()->json(['code'=>'400','message'=>$error->getMessage()]);

        }


    
    }
public function authenticatedUserTransaction(Request $request){
       try{
        $user = $request->user();
        $user_transaction = transaction::where('user_id', '=', $user->user_email)->select('amount', 'transaction_type', 'id', 'transaction_status')->get();
        return $user_transaction;
            }catch(\Exception $error){
        throw $error;
       }
   
    }


}

