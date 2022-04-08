<?php
namespace App\Http\Controllers;
use App\Models\GeneralSetting;
use App\Models\Transaction;
use App\Models\User;
use App\Models\UserExtra;
use Carbon\Carbon;
use Illuminate\Http\Request;
class CronController extends Controller
{
    public function cron()
    {
        $data = "init";
        $gnl = GeneralSetting::first();
        $gnl->last_cron = Carbon::now()->toDateTimeString();
        $gnl->save();
        
// ROI start
        if($gnl->last_roi < Carbon::today()){
            if(Carbon::today()->format('l') != "Sunday"){
                $users = Transaction::where(["remark" => "purchased_plan"])->with(['user', 'plan'])->get();
                // dd($users);
                foreach ($users as $i=>$data) {
                    // $p = $data->plan->price * 2 / 180; // 1000*2/180 = 2k/180 = 11.11
                    // $roi = $data->plan->price * 2 * $p /100; // 2k
                    // // return "roi ".$roi;
                    
                    $roi = $data->plan->price * 2 / 180;

                    $data->user->balance += $roi * .9;
                    $data->user->save();
                    
                    $trx = new Transaction();
                    $trx->user_id = $data->user->id;
                    $trx->data_id = $data->plan->id;
                    $trx->amount = $roi * .9;
                    $trx->charge = 0;
                    $trx->trx_type = '+';
                    $trx->post_balance = $data->user->balance;
                    $trx->remark = 'everyday_roi';
                    $trx->trx = getTrx();
                    $trx->details = 'Paid ' . $roi * .9 . ' ' . $gnl->cur_text . ' For ' . $data->plan->name . ' Plan.';
                    $trx->wallet_type =  "open_wallet";
                    $trx->save();
                    
                    $data->user->balance += $roi * .1;
                    $data->user->save();
    
                    $trx = new Transaction();
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
                    $trx->save();
                }
                
            }
            $gnl->last_roi = Carbon::now()->toDateTimeString();
            $gnl->save();
            
        // echo 'avail';    
        }
// bonus start        
        // if ($gnl->matching_bonus_time == 'daily') {
        //     $day = Date('H');
        //     if (strtolower($day) != $gnl->matching_when) {
        //         return '1';
        //     }
        // }
        // if ($gnl->matching_bonus_time == 'weekly') {
        //     $day = Date('D');
        //     if (strtolower($day) != $gnl->matching_when) {
        //         return '2';
        //     }
        // }
        // if ($gnl->matching_bonus_time == 'monthly') {
        //     $day = Date('d');
        //     if (strtolower($day) != $gnl->matching_when) {
        //         return '3';
        //     }
        // }
        
    $canPay = 1;
     	$gnl = GeneralSetting::first();

        if ($gnl->matching_bonus_time == 'daily') {
            $day = Date('H');
            if (strtolower($day) != $gnl->matching_when) {
                $canPay = -1;
            }
        }
        if ($gnl->matching_bonus_time == 'weekly') {
            $day = Date('D');
            if (strtolower($day) != $gnl->matching_when) {
                $canPay  = -2;
            }
        }
        if ($gnl->matching_bonus_time == 'monthly') {
            $day = Date('d');
            if (strtolower($day) != $gnl->matching_when) {
                $canPay = -3;
            }
        }
    // $canPay = 1;
        
    if($canPay == 1 && $gnl->last_paid < Carbon::today()){
             $gnl->last_paid = Carbon::now()->toDateString();
            $gnl->save();
        $eligibleUsers = User::where('plan_id', '!=', 0)->where('left_active', '>=', 50)->where('right_active', '>=', 50)->with('plan')->get();
            foreach ($eligibleUsers as $i=>$user) {
                // $user = $uex->user;
                $weak = ($user->left_active <= $user->right_active)?$user->left_active:$user->right_active;
                $bonus = $weak * 0.08;
                $todayBonus = Transaction::where('user_id', $user->id)->where('remark', 'binary_commission')->whereDate('created_at', Carbon::today())->sum('amount');
                if($user->plan->price * 3 <= $todayBonus){
                    $user->left_active -=  $weak;
                    $user->right_active -=  $weak;
                    $user->save();
                    continue;
                }else if($user->plan->price * 3 <= $todayBonus+$bonus){
                    $bonus = $user->plan->price * 3 - $todayBonus;
                }
                
                // add balance to User
                $user->balance += $bonus;
                $user->total_binary_com += $bonus;
                $user->save();
                
                $trx = new Transaction();
                $trx->user_id = $user->id;
                $trx->amount = $bonus;
                $trx->charge = 0;
                $trx->trx_type = '+';
                $trx->post_balance = $user->balance;
                $trx->remark = 'binary_commission';
                $trx->trx = getTrx();
                $trx->details = 'Paid ' . $bonus . ' ' . $gnl->cur_text . ' For Binary Commission.';
                $trx->wallet_type =  "cash_wallet";
                $trx->save();
                
                
                $income=[0, 3, 2, 1, 4, 5];
                    $placement_id = $user->ref_id;
                    if($placement_id){
                        
                        for($i = 1; $i < 6 && $placement_id != ''; $i++){
    
                            $lavelUser = User::where('id', $placement_id)->first();
                            if($lavelUser){
                                
                                if($lavelUser->plan_id == 0){
                                    continue;
                                }
                                
                                $lavelUser->balance += $bonus * $income[$i] * .01;
                                $lavelUser->save();
                                
                                $trx = new Transaction();
                                $trx->user_id = $lavelUser->id;
                                $trx->amount = $bonus * $income[$i] * .01;
                                $trx->charge = 0;
                                $trx->trx_type = '+';
                                $trx->post_balance = $lavelUser->balance;
                                $trx->remark = 'level_bonus';
                                $trx->trx = getTrx();
                                $trx->details = "Paid Matching Bonus lavel $i for ".$user->username;
                                $trx->wallet_type =  "cash_wallet";
                                $trx->save();
        
                                $next_id = $this->find_placement_id($placement_id);
                              // dd($next_id,$placement_id);
                                $placement_id = $next_id;
                            }else{
                                $data .= "no user".$placement_id;
                            }
                        }
                    
                    }else{
                        $data .= "no place id".$placement_id;
                    }

                $user->left_active -=  $weak;
                $user->right_active -=  $weak;
                $user->save();



                // if ($gnl->cary_flash == 0) {
                //     $bv['setl'] = $uex->bv_left - $paidbv;
                //     $bv['setr'] = $uex->bv_right - $paidbv;
                //     $bv['paid'] = $paidbv;
                //     $bv['lostl'] = 0;
                //     $bv['lostr'] = 0;
                // }
                // if ($gnl->cary_flash == 1) {
                //     $bv['setl'] = $uex->bv_left - $weak;
                //     $bv['setr'] = $uex->bv_right - $weak;
                //     $bv['paid'] = $paidbv;
                //     $bv['lostl'] = $weak - $paidbv;
                //     $bv['lostr'] = $weak - $paidbv;
                // }
                // if ($gnl->cary_flash == 2) {
                //     $bv['setl'] = 0;
                //     $bv['setr'] = 0;
                //     $bv['paid'] = $paidbv;
                //     $bv['lostl'] = $uex->bv_left - $paidbv;
                //     $bv['lostr'] = $uex->bv_right - $paidbv;
                // }
                // $uex->bv_left = $bv['setl'];
                // $uex->bv_right = $bv['setr'];
                // $uex->save();
                // if ($bv['paid'] != 0) {
                //     createBVLog($user->id, 1, $bv['paid'], 'Paid ' . $bonus . ' ' . $gnl->cur_text . ' For ' . $paidbv . ' BV.');
                //     createBVLog($user->id, 2, $bv['paid'], 'Paid ' . $bonus . ' ' . $gnl->cur_text . ' For ' . $paidbv . ' BV.');
                // }
                // if ($bv['lostl'] != 0) {
                //     createBVLog($user->id, 1, $bv['lostl'], 'Flush ' . $bv['lostl'] . ' BV after Paid ' . $bonus . ' ' . $gnl->cur_text . ' For ' . $paidbv . ' BV.');
                // }
                // if ($bv['lostr'] != 0) {
                //     createBVLog($user->id, 2, $bv['lostr'], 'Flush ' . $bv['lostr'] . ' BV after Paid ' . $bonus . ' ' . $gnl->cur_text . ' For ' . $paidbv . ' BV.');
                // }
                notify($user, 'binary_commission', [
                    'amount' => $bonus,
                    'currency' => $gnl->cur_text,
                    'paid_bv' => $weak,
                    'post_balance' => $user->balance,
                    'trx' =>  $trx->trx,
                ]);
            }
    } // if canPay end
            
            //  	$shouldFlash = 1;
            //  	$gnl = GeneralSetting::first();
            //     if ($gnl->matching_bonus_time == 'daily') {
            //         $day = Date('H');
            //         if (strtolower($day) != $gnl->matching_when) {
            //             $shouldFlash = -1;
            //         }
            //     }
            //     if ($gnl->matching_bonus_time == 'weekly') {
            //         $day = Date('D');
            //         if (strtolower($day) != $gnl->matching_when) {
            //             $shouldFlash  = -2;;
            //         }
            //     }
            //     if ($gnl->matching_bonus_time == 'monthly') {
            //         $day = Date('d');
            //         if (strtolower($day) != $gnl->matching_when) {
            //             $shouldFlash = -3;
            //         }
            //     }

            //     if($shouldFlash == 1){
            //         $affected = User::where('id', '>', 0)->update(['left_active' => 0, 'right_active' => 0]);
            //     }

    
            return '--- ' ;
    }
    
    public function find_placement_id($ref_id){
        return User::where('id', $ref_id)->first()->ref_id;
    }
}