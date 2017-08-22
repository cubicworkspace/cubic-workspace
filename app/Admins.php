<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Admins extends Model
{
    
    public function cat() {
        return $this->hasOne(Categoryadmin::class);
    }
}
