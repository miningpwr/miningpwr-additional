<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    protected $table = "transactions";

    protected  $guarded = ['id'];
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    
    public function plan()
    {
        return $this->hasOne(Plan::class, 'id', 'data_id');
    }
    
    public function date()
    {
        return $this->hasOne(Transaction::class, 'id', 'data_id');
    }

}
