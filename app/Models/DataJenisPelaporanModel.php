<?php

namespace App\Models;

use CodeIgniter\Model;

class DataJenisPelaporanModel extends Model
{
    // ...

    protected $table      = 'datajenispelaporan';
    protected $useTimestamps = true;
    protected $allowedFields = ['id', 'slug', 'jenis_pelaporan', 'jumlah_jenis_pelaporan', 'created_at', 'updated_at'];
}
