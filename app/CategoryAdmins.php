<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Categoryadmins extends Model
{
    
   public function admin() {
    	return $this->belongsTo('App\Admin', 'codecategoryadmin');
   }
}
