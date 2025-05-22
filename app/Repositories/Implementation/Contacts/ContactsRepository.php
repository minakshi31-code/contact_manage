<?php

namespace App\Repositories\Implementation\Contacts;

use App\Base\BaseRepository;
use App\Models\Contacts;
use App\Repositories\Interfaces\Contacts\ContactsRepositoryInterface;
use Illuminate\Database\Eloquent\Collection;
use DB;
use DataTables;
use Spatie\Activitylog\Models\Activity;
class ContactsRepository  extends BaseRepository implements ContactsRepositoryInterface
{
    /**
     * @var Contacts
     */
    protected $contactsModel; 

    /**
     * ContactsRepository constructor.
     *
     * @param $contactsModelRepo
     */
    public function __construct(Contacts $contactsModel)
    {
        parent::__construct($contactsModel);
        $this->contactsModelRepo = $contactsModel;
    }

    /**
     * {@inheritDoc}
     */
    public function getContactsList()
    {     
        return  $this->contactsModelRepo
			->orderBy('id', 'DESC')
            ->get();
    }

    /**
     * {@inheritDoc}
     */
    public function getContacts(int $contactId)
    {
		return Contacts::select('*')
					->where('id',$contactId)
					->first();
    }
	
	 public function updateContact($contactId, $request = []) 
    {
        DB::beginTransaction();
        try {
            $contact =  $this->contactsModelRepo->find($contactId);
            $contact->update($request);
            DB::commit();
            return true;
        } catch (\Exception $e) {  
            DB::rollback();
            return false;
        }
    }

     /**
     * {@inheritDoc}
     */
    public function deleteContact(int $contactId)
    { 
        try{
            $contact =  $this->contactsModelRepo->findOrFail($contactId);
            return $contact->delete();
        } catch (\Exception $e) {  
            DB::rollback();
            return false;
        }
    }

     
	
	public function getAjaxList(){
        
        $results = $this->getContactsList(); 
        return Datatables::of($results)
        ->addIndexColumn()
        ->addColumn('action', function($results){
            $actionBtn = '';
			 
			$actionBtn .= '<a href="'.route('contacts.details',['id' => $results->id]).'">
                <button class="btn btn-sm btn-icon btn-pure btn-default on-default button-view" data-toggle="tooltip" data-original-title="User Detail"><i class="icon-user" aria-hidden="true"></i>
                </button></a>';
			 $actionBtn .= '<a href="'.route('contacts.edit',['id' => $results->id]).'">
                <button class="btn btn-sm btn-icon btn-pure btn-default on-default m-r-5 button-edit" data-toggle="tooltip" data-original-title="Edit"><i class="icon-pencil" aria-hidden="true"></i> 
                </button></a>';
			 $actionBtn .= '<a href="'.route('contacts.delete',['id' => $results->id]).'">
                <button class="btn btn-sm btn-icon btn-pure btn-default on-default button-remove" data-toggle="tooltip" data-original-title="Remove"><i class="icon-trash" aria-hidden="true"></i></button></a>';
            
            return $actionBtn;
           
        })
        ->rawColumns(['action'])
        ->make(true);
    }
}
