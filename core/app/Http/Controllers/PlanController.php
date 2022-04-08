<?php

namespace App\Http\Controllers;

use App\Models\BvLog;
use App\Models\GeneralSetting;
use App\Models\Plan;
use App\Models\Transaction;
use App\Models\User;
use App\Models\UserExtra;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use DB;

class PlanController extends Controller
{

    public function __construct()
    {
        $this->activeTemplate = activeTemplate();
    }

    function planIndex()
    {
        $data['page_title'] = "Plans";
        $data['plans'] = Plan::whereStatus(1)->orderBy('price')->get();
        return view($this->activeTemplate . '.user.plan', $data);

    }

    function planStore(Request $request)
    {
       //dd($request->all());

        $this->validate($request, ['plan_id' => 'required|integer']);
        $plan = Plan::find($request->plan_id);

        $gnl = GeneralSetting::first();

        if ($plan) {
            $user = User::find(auth()->user()->id);
            // $user = User::where('id','32')->first();
        //$user_data=User::where('id',Auth::id())->get()->first();
        //dd($user_data->placement_id);
        
        
        
        //dd('ABCD');
            
            $cashWallet = Transaction::where(['user_id' => auth()->id(), 'trx_type' => '+', 'wallet_type' => 'cash_wallet'])->sum('amount') - Transaction::where(['user_id' => auth()->id(), 'trx_type' => '-', 'wallet_type' => 'cash_wallet'])->sum('amount');
            //dd($cashwallet);
            if ($cashWallet >= $plan->price) {
                
                $oldPlan = $user->plan_id;

                $user->plan_id = $plan->id;
                $user->balance -= $plan->price;
                $user->total_invest += $plan->price;
                $user->dpl  = 0;
                $user->save();

                $trx = $user->transactions()->create([
                    'data_id' => $plan->id,
                    'amount' => $plan->price,
                    'trx_type' => '-',
                    'details' => 'Purchased ' . $plan->name,
                    'remark' => 'purchased_plan',
                    'trx' => getTrx(),
                    'post_balance' => getAmount($user->balance),
                    'wallet_type' => "cash_wallet",
                ]);

                notify($user, 'plan_purchased', [
                    'plan' => $plan->name,
                    'amount' => getAmount($plan->price),
                    'currency' => $gnl->cur_text,
                    'trx' => $trx->trx,
                    'post_balance' => getAmount($user->balance) . ' ' . $gnl->cur_text,
                ]);

                if ($oldPlan == 0) {
                    updatePaidCount($user->id);
                }

                $details = Auth::user()->username . ' Subscribed to ' . $plan->name . ' plan.';

                //updateBV($user->id, $plan->bv, $details);

                if ($plan->tree_com > 0) {
                    $this->binary_count($user->pos_id,$user->position, $plan->price);
                }

                referralComission($user->id, $details);

                $notify[] = ['success', 'Purchased ' . $plan->name . ' Successfully'];
                return redirect()->route('user.home')->withNotify($notify);
            }
            $notify[] = ['error', 'You do not have enough balance to buy this plan. Increase your balance through our deposit system'];
            return redirect()->route('user.deposit')->withNotify($notify);
        }
        $notify[] = ['error', 'Something Went Wrong!'];
        return back()->withNotify($notify);
    }
    
      public function binary_count($placement_id, $pos, $planAmount)
    {
     // dd($placement_id,$pos);
        // print_r($placement_id." pos ".$pos." \n");

       if ($pos == 1){
            $pos = 'left_count';
            $posActive = 'left_active';
       }else{
           $pos = 'right_count';
           $posActive = 'right_active';
       }
        // DB::statement("UPDATE users SET $posActive = `$posActive`+$planAmount WHERE id = '$placement_id'");

        // $i = 0;
        while($placement_id != null && $pos != null){

            DB::statement("UPDATE users SET $pos = `$pos`+$planAmount WHERE id = '$placement_id'");
            DB::statement("UPDATE users SET $posActive = `$posActive`+$planAmount WHERE id = '$placement_id'");
            // if($pos = 'left_count'){
            //     DB::statement("UPDATE users SET `left_active` = `left_active`+$planAmount WHERE id = '$placement_id'");
            // }else if($pos = 'right_count'){
            //     DB::statement("UPDATE users SET `right_active` = `right_active`+$planAmount WHERE id = '$placement_id'");
            // }
            // $i++;
            // print_r($i." ");
            // print_r($placement_id." pos ".$pos." \n");

            //$this->is_pair_generate($placement_id);
            
            $newUser = find_placement_user($placement_id);
            if($newUser){
                $posInt= $newUser->position;
                if ($posInt == 1){
                    $pos = 'left_count';
                    $posActive = 'left_active';
                }elseif($posInt == 2){
                    $pos = 'right_count';
                    $posActive = 'right_active';
                }else{
                    $pos = null;
                }
                $placement_id= $newUser->pos_id;
            }else{
                $pos = null;
                $placement_id = null;
            }
            
            
            
            //print_r($placement_id);
            //dd($placement_id);
           
        }

    }


    public function binaryCom()
    {
        $data['page_title'] = "Binary Commission";
        $data['logs'] = Transaction::where('user_id', auth()->id())->where('remark', 'binary_commission')->orderBy('id', 'DESC')->paginate(config('constants.table.default'));
        $data['empty_message'] = 'No data found';
        return view($this->activeTemplate . '.user.transactions', $data);
    }

    public function binarySummery()
    {
        $data['page_title'] = "Binary Summery";
        $data['logs'] = User::where('id', auth()->id())->firstOrFail();
        $data['gnl'] = GeneralSetting::first();
        return view($this->activeTemplate . '.user.binarySummery', $data);
    }

    public function bvlog(Request $request)
    {

        if ($request->type) {
            if ($request->type == 'leftBV') {
                $data['page_title'] = "Left BV";
                $data['logs'] = BvLog::where('user_id', auth()->id())->where('position', 1)->where('trx_type', '+')->orderBy('id', 'desc')->paginate(config('constants.table.default'));
            } elseif ($request->type == 'rightBV') {
                $data['page_title'] = "Right BV";
                $data['logs'] = BvLog::where('user_id', auth()->id())->where('position', 2)->where('trx_type', '+')->orderBy('id', 'desc')->paginate(config('constants.table.default'));
            } elseif ($request->type == 'cutBV') {
                $data['page_title'] = "Cut BV";
                $data['logs'] = BvLog::where('user_id', auth()->id())->where('trx_type', '-')->orderBy('id', 'desc')->paginate(config('constants.table.default'));
            } else {
                $data['page_title'] = "All Paid BV";
                $data['logs'] = BvLog::where('user_id', auth()->id())->where('trx_type', '+')->orderBy('id', 'desc')->paginate(config('constants.table.default'));
            }
        }else{
            $data['page_title'] = "BV LOG";
            $data['logs'] = BvLog::where('user_id', auth()->id())->orderBy('id', 'desc')->paginate(config('constants.table.default'));
        }

        $data['empty_message'] = 'No data found';
        return view($this->activeTemplate . '.user.bvLog', $data);
    }

    public function myRefLog()
    {
        $data['page_title'] = "My Referral";
        $data['empty_message'] = 'No data found';
        $data['logs'] = User::where('ref_id', auth()->id())->latest()->paginate(config('constants.table.default'));
        return view($this->activeTemplate . '.user.myRef', $data);
    }

    public function myTree()
    {
        $data['tree'] = showTreePage(Auth::id());
        $data['page_title'] = "My Tree";
        return view($this->activeTemplate . 'user.myTree', $data);
    }


    public function otherTree(Request $request, $username = null)
    {
        if ($request->username) {
            $user = User::where('username', $request->username)->first();
        } else {
            $user = User::where('username', $username)->first();
        }
        if ($user && treeAuth($user->id, auth()->id())) {
            $data['tree'] = showTreePage($user->id);
            $data['page_title'] = "Tree of " . $user->fullname;
            return view($this->activeTemplate . 'user.myTree', $data);
        }

        $notify[] = ['error', 'Tree Not Found or You do not have Permission to view that!!'];
        return redirect()->route('user.my.tree')->withNotify($notify);

    }

}
