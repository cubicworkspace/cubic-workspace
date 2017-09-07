<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bookingspaces extends Model
{
    public function service() {
    	return $this->belongsTo('App\Services', 'codeservices');
    }
}
