<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class User
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if(auth()->user()->type =='user'){
            return $next($request);
        }else{
            return redirect()->route('dashboard')->withError('Bu alana erişiniz yok.');
        }
        
    }
}
