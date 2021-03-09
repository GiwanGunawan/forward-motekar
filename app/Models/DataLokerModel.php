<?php

namespace App\Models;

use CodeIgniter\Model;

class DataLokerModel extends Model
{
    // ...

    protected $table      = 'dataloker';
    protected $useTimestamps = true;
    protected $allowedFields = ['id', 'slug', 'loker', 'created_at', 'updated_at'];
}
