<?php

namespace App\Models;

use CodeIgniter\Model;

class DataWitelModel extends Model
{
    // ...

    protected $table      = 'datawitel';
    protected $useTimestamps = true;
    protected $allowedFields = ['id', 'slug', 'witel', 'created_at', 'updated_at'];
}
