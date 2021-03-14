<?php

namespace App\Models;

use CodeIgniter\Model;

class DataAppreciateModel extends Model
{
    // ...

    protected $table      = 'dataappreciate';
    protected $useTimestamps = true;
    protected $allowedFields = ['id', 'id_personnel', 'slug', 'nama', 'nik', 'nik_ta', 'level', 'tanggal_appreciate', 'keterangan', 'created_at', 'updated_at'];

    // public function hitungdata($nik)
    // {
    //     $builder = $this->table('datafraud');
    //     $builder->where('nik', $nik);
    //     return $builder->countAllResults();
    // }
}
