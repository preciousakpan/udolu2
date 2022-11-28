<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Auth;
use Closure;
use Illuminate\Http\Request;

class adminMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        
        if(Auth::check()){
            if(Auth::user()->user_role == "admin"){

                return $next($request);

            }else{
                return redirect('/login')->with('error', 'You are not authorized to use this platform');
            }


        }else{
            //return redirect('/login')->with('error', 'You are not logged in!');

        }
       // return $next($request);
    }
}
