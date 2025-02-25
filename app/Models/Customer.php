<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{

    protected $connection = 'mysql_no_prefix'; 
    
    // Specify the table name explicitly if it's not the plural of the model name
    protected $table = 'customer';

    public function getTable()
    {
        return 'customer'; // Devuelve el nombre exacto de la tabla sin prefijo
    }
}
