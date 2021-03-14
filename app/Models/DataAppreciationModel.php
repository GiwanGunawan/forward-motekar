<?php

namespace App\Models;

use CodeIgniter\Model;

class DataAppreciationModel extends Model
{
    // ...

    protected $table      = 'dataappreciation';
    protected $useTimestamps = true;
    protected $allowedFields = ['id', 'id_personnel', 'slug', 'nama', 'nik', 'nik_ta', 'level', 'tanggal_appreciation', 'keterangan', 'created_at', 'updated_at'];

    // public function hitungdata($nik)
    // {
    //     $builder = $this->table('datafraud');
    //     $builder->where('nik', $nik);
    //     return $builder->countAllResults();
    // }
}
