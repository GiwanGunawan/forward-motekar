<?php

namespace App\Models;

use CodeIgniter\Model;

class DataStreamModel extends Model
{
    // ...

    protected $table      = 'datastream';
    protected $useTimestamps = true;
    protected $allowedFields = ['id', 'slug', 'stream',  'created_at', 'updated_at'];
}
