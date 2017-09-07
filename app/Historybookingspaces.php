<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Historybookingspaces extends Model
{
     public function service() {
    	return $this->belongsTo('App\Services', 'codeservices');
    }
}
