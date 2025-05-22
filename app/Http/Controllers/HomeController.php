<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Repositories\Interfaces\User\UserRepositoryInterface;
use Session;
use Illuminate\Validation\Rule;
use Validator;
use App\Http\Requests\UserRequest;
use Hash;
use DB;
//use Spatie\Activitylog\Models\Activity;
use App\Models\User;
use Carbon\Carbon;

 

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    private $userRepo;
    
    public function __construct(UserRepositoryInterface $userRepository)
    {
        $this->middleware('permission:log', ['only' => ['getLogs','ajaxData']]);
        
        $this->userRepo = $userRepository;
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {  
		return view('home');
    }

    
}
