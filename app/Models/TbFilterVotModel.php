<?php

namespace App\Models;

use CodeIgniter\Model;

class TbFilterVotModel extends Model
{
    // ...

    protected $table      = 'tbfiltervot';
    protected $useTimestamps = true;
    protected $allowedFields = ['id', 'opsi',  'created_at', 'updated_at'];
}
