<?php

namespace App\Models;

use CodeIgniter\Model;

class DataPersonnelModel extends Model
{
    // ...

    protected $table      = 'datapersonnel';
    protected $useTimestamps = true;
    protected $allowedFields = ['id', 'slug', 'nama', 'nik', 'nik_ta', 'loker', 'stream', 'sto', 'witel',  'mitra', 'alamat', 'upload_gambar', 'created_at', 'updated_at'];

    public function search($keyword)
    {
        // $builder = $this->table('datapersonnel');
        // $builder->like('nama', $keyword);
        // return $builder;
        // return $this->table('datapersonnel')->like('nama', $keyword)->orLike('nik', $keyword)->orLike('nik_ta', $keyword)->orLike('alamat', $keyword);
        return $this->like('nama', $keyword)->orLike('nik', $keyword)->orLike('nik_ta', $keyword);
    }
    public function detail($nik)
    {
        $builder = $this->table('datapersonnel');
        $builder->where('nik', $nik);
        return $builder->first();
    }
}
