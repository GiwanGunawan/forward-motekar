<?php

namespace App\Models;

use CodeIgniter\Model;

class DataLevelModel extends Model
{
    // ...

    protected $table      = 'datalevel';
    protected $useTimestamps = true;
    protected $allowedFields = ['id', 'slug', 'level',  'created_at', 'updated_at'];
}
