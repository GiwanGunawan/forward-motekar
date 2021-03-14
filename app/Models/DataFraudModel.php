<?php

namespace App\Models;

use CodeIgniter\Model;

class DataFraudModel extends Model
{
    // ...

    protected $table      = 'datafraud';
    protected $useTimestamps = true;
    protected $allowedFields = ['id', 'id_personnel', 'slug', 'nama', 'nik', 'nik_ta', 'jenis_pelaporan', 'label_odp', 'pelapor', 'hp_pelapor', 'tanggal_pelaporan', 'evident_fraud', 'keterangan',  'upload_gambar', 'created_at', 'updated_at'];

    // public function hitungdata($nik)
    // {
    //     $builder = $this->table('datafraud');
    //     $builder->where('nik', $nik);
    //     return $builder->countAllResults();
    // }
}
