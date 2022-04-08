<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\BvLog;
use App\Models\PtcView;
use App\Models\Tran;
use App\Models\Transaction;
use App\Models\Plan;
use App\Models\GeneralSetting;
use App\Models\UserLogin;
use Illuminate\Http\Request;
use Carbon\Carbon;

class TranController extends Controller
{
    public function test(Request $request)
    {
        $trans = Tran::where('remark', 'everyday_roi')->where('user_id', 221)->with(['user', 'date'])->get();
        foreach($trans as $i => $tran){
            $trans[$i]->plan = Plan::where('id', $tran->date->data_id)->first();
        }
        // dd($trans);
        $msg = '';
        foreach($trans as $i => $tran){
            $msg .= $i.'->'.$tran->id.'->'.$tran->plan->name." \n ";
        }
        return $msg;
    }

    public function roi(Request $request)
    {
        $users = User::all();
        foreach($users as $i => $user){
            $openWallet = Transaction::where(['user_id' => $user->id, 'trx_type' => '+', 'wallet_type' => 'open_wallet'])->sum('amount') - Transaction::where(['user_id' => $user->id, 'trx_type' => '-', 'wallet_type' => 'open_wallet'])->sum('amount');
            $savingWallet = Transaction::where(['user_id' => $user->id, 'trx_type' => '+', 'wallet_type' => 'saving_wallet'])->sum('amount') - Transaction::where(['user_id' => $user->id, 'trx_type' => '-', 'wallet_type' => 'saving_wallet'])->sum('amount');
            
            $user->balance = $openWallet + $savingWallet;
            echo $user->id.' -> '.$user->balance.' <br> ';
            $user->save();
            
            // $msg .= $i.'->'.$tran->id.'->'.$tran->plan->name." \n ";
        }
    }
    public function roi_del(Request $request)
    {
        //$time = Carbon::createFromFormat(Date("2022-02-1 1:00:01"));
        // $time = DateTime::createFromFormat('Y-m-d H:i:s', "2022-02-1 13:00:01");
        $time = Carbon::now()->subMonth();
        while (Carbon::now()->subDay() >= $time){
            $time->addDay();
            if($time->format('l') == "Sunday"){
                continue;
            }
            $gnl = GeneralSetting::first();
            $users = Tran::where(["remark" => "purchased_plan"])->with(['user', 'plan'])->where('created_at','<', $time)->get();
            // echo $time.' -> '.$users.' <br> ';
            
                foreach ($users as $i=>$data) {
                    // while($data->date->remark != 'purchased_plan'){
                    //     $data->date = Tran::where('id', $data->date->data_id)->first();
                    //     dd($data);
                    // }
                    // $data->plan = Plan::where('id', $data->date->data_id)->first();
                    // $p = $data->plan->price * 2 / 180; // 1000*2/180 = 2k/180 = 11.11
                    // $roi = $data->plan->price * 2 * $p /100; // 2k
                    // // return "roi ".$roi;
                    
                    $roi = $data->plan->price * 2 / 180;
        
                    // $data->user->balance += $roi * .9;
                    // $data->user->save();
                    
                    $trx = new Tran();
                    $trx->user_id = $data->user->id;
                    $trx->data_id = $data->plan->id;
                    $trx->amount = $roi * .9;
                    $trx->charge = 0;
                    $trx->trx_type = '+';
                    $trx->post_balance = $data->user->balance;
                    $trx->remark = 'everyday_roi';
                    $trx->trx = getTrx();
                    $trx->details = 'Paid ' . $roi * .9 . ' ' . $gnl->cur_text . ' For ' . $data->plan->name . ' Plan.';
                    $trx->wallet_type = "open_wallet";
                    $trx->created_at = $time;
                    $trx->save();
                    
                    // $data->user->balance += $roi * .1;
                    // $data->user->save();
        
                    $trx = new Tran();
                    $trx->user_id = $data->user->id;
                    $trx->data_id = $data->plan->id;
                    $trx->amount = $roi * 10/100;
                    $trx->charge = 0;
                    $trx->trx_type = '+';
                    $trx->post_balance = $data->user->balance;
                    $trx->remark = 'everyday_roi';
                    $trx->trx = getTrx();
                    $trx->details = 'Paid ' . $roi * .1 . ' ' . $gnl->cur_text . ' For ' . $data->plan->name . ' Plan.';
                    $trx->wallet_type =  "saving_wallet";
                    $trx->created_at = $time;
                    $trx->save();
                }
            
        }
        // return $time;
    }
    public function roiAdd(Request $request)
    {
        $gnl = GeneralSetting::first();
        $users = Tran::where(["remark" => "purchased_plan"])->with(['user', 'plan'])->get();
        // dd($users);
        foreach ($users as $i=>$data) {
            // while($data->date->remark != 'purchased_plan'){
            //     $data->date = Tran::where('id', $data->date->data_id)->first();
            //     dd($data);
            // }
            // $data->plan = Plan::where('id', $data->date->data_id)->first();
            // $p = $data->plan->price * 2 / 180; // 1000*2/180 = 2k/180 = 11.11
            // $roi = $data->plan->price * 2 * $p /100; // 2k
            // // return "roi ".$roi;
            
            $roi = $data->plan->price * 2 / 180;

            // $data->user->balance += $roi * .9;
            // $data->user->save();
            
            $trx = new Tran();
            $trx->user_id = $data->user->id;
            $trx->data_id = $data->id;
            $trx->amount = $roi * .9;
            $trx->charge = 0;
            $trx->trx_type = '+';
            $trx->post_balance = $data->user->balance;
            $trx->remark = 'everyday_roi_2';
            $trx->trx = getTrx();
            $trx->details = 'Paid ' . $roi * .9 . ' ' . $gnl->cur_text . ' For ' . $data->plan->name . ' Plan.';
            $trx->wallet_type =  "open_wallet_2";
            $trx->save();
            
            // $data->user->balance += $roi * .1;
            // $data->user->save();

            $trx = new Tran();
            $trx->user_id = $data->user->id;
            $trx->data_id = $data->id;
            $trx->amount = $roi * 10/100;
            $trx->charge = 0;
            $trx->trx_type = '+';
            $trx->post_balance = $data->user->balance;
            $trx->remark = 'everyday_roi_2';
            $trx->trx = getTrx();
            $trx->details = 'Paid ' . $roi * .1 . ' ' . $gnl->cur_text . ' For ' . $data->plan->name . ' Plan.';
            $trx->wallet_type =  "saving_wallet_2";
            $trx->save();
        }
    }


}
