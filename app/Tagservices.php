<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tagservices extends Model
{
    public function services() {
    	return $this->belongsTo('App\Services', 'codeservices');
    }
}
