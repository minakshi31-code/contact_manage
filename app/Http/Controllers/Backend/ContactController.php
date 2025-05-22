<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contacts;
use App\Repositories\Interfaces\Contacts\ContactsRepositoryInterface;
//use Spatie\Permission\Models\Permission;
use DB;
use Session;
use Auth;
use Response;
use App\Models\User;
use Config;
use Illuminate\Support\Facades\File;
use SimpleXMLElement;
use XMLReader;

class ContactController extends Controller
{
   
    protected $url = '';
	protected $contactsRepo;
   
    /**
     * contacts Type Construct 
     * @return url 
     */
    public function __construct(ContactsRepositoryInterface $contactsRepo){

        $this->url = [   
            'listUrl' => route('contacts.index'),
            'createUrl' => route('contacts.create'),
			'importUrl' => route('contacts.importfile')
        ];
		$this->contactsRepo = $contactsRepo;
    } 

   
    public function index(){
        $contacts = [];
        return view('backend.contacts.index',['contacts'=>$contacts,'url' => $this->url]); 
    }
	
	  
    public function create(){
        
        return view('backend.contacts.create',['url' => $this->url]); 
    }
	
	 
    
    public function store(Request $request){
        $this->validate($request, [
            'full_name' => 'required',
			 'mobile_number' => 'required|numeric|unique:contacts,mobile_number',            
            		
        ]);
        DB::beginTransaction();
        try{
			
			$insertData = $request->all();
            $contacts = $this->contactsRepo->create($insertData);
			 
            DB::commit();
            Session::flash('success', trans('messages.create_records'));
            
            return redirect()->route('contacts.index');
        }catch(\Exception $e){
            DB::rollback(); 
            $error = !empty($e->getMessage())?$e->getMessage() : '';
            ##store error log
            storeActicityLog(trans('messages.error'),$error,Auth::user());
            Session::flash('error', trans('messages.something'));
            return redirect()->route('contacts.index');   
            
        }
    }
	
	public function edit(Request $request, $id = ''){
		
        $contacts = Contacts::find($id);
        return view('backend.contacts.create',['contacts' => $contacts,'url' => $this->url]);  
    }
	 

     /**
     * Update Contact
     * @param Request $request
     * @thorw exception
     * @return Route
     */
    public function update(Request $request, $id) 
    { 
       $this->validate($request, [
            'full_name' => 'required',
			'mobile_number' => 'required|numeric|unique:contacts,mobile_number,'.$id,            
            		
        ]);
		
        DB::beginTransaction();
        try{
            
			$contacts = $this->contactsRepo->update($id,$request->all());
			
            DB::commit();
            Session::flash('success', trans('messages.update_records'));
            return redirect()->route('contacts.index');    
        }catch(\Exception $e){ 
            DB::rollback();
            $error = !empty($e->getMessage())?$e->getMessage() : '';
             
            Session::flash('error', trans('messages.something'));
            return redirect()->route('contacts.index'); 
        }
    }
 
    public function delete($id){ 
        
		$contacts = Contacts::find($id);
		$contacts->delete();
		Session::flash('success', trans('messages.delete_records'));
        return redirect()->route('contacts.index');
    }
	
	public function details($id){
		$contacts = Contacts::find($id);
		return view('backend.contacts.detail',['contacts' => $contacts,'url' => $this->url]); 
	}
	
	public function importfile(){
		 
		return view('backend.contacts.import',['url' => $this->url]); 
	}
	
	 
	public function importFileContacts(Request $request){
		 
	$file_mime_type = $request->import_file->getClientMimeType();
	if($file_mime_type=='text/xml'){

      if (!empty($request->file('import_file'))) {
                $xmlDataString = file_get_contents($request->file('import_file'));
                $xmlObject = simplexml_load_string($xmlDataString);
				 
                $json = json_encode($xmlObject);
                $array = json_decode($json, true);

                if (count($array['contact']) > 0) {

                    $dataArray = array();

                    foreach ($array['contact'] as $index => $data) {
						$mobile_number = str_replace('+', '',$data['phone']);
						$formatted_mobile = str_replace(' ', '', $mobile_number);
                        // check duplicate phone 
						
                        $contactDetails = Contacts::where(array('mobile_number' => $formatted_mobile))->first();
                        if (empty($contactDetails)) {
							
							
                            $dataArray[] = [
                                "full_name" => $data['name'],
								"mobile_number" => str_replace(' ', '', $formatted_mobile),
								"created_at" => date("Y-m-d H:i:s")
                            ];
                        }
                    }
                    
					Contacts::insert($dataArray);
					Session::flash('success','Data saved successfully and duplicate data has been ignored!');
					return redirect()->route('contacts.index');
                 }
            }
		}
		else{
			
				Session::flash('error','Please upload XML file!');
				return redirect()->route('contacts.index');
		}
	}
	
	public function getAjaxList(Request $request){
        $list = $this->contactsRepo->getAjaxList();
        return  $list;
    }
}
