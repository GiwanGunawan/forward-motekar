<?php

namespace App\Models;

use CodeIgniter\Model;

class TbAssessmentModel extends Model
{
    protected $table      = 'tb_assessment';
    protected $useTimestamps = true;
    protected $allowedFields = [
        'id', 'id_personnel', 'slug', 'nama', 'nik', 'nik_ta',
        'tsp1', 'tsp2', 'tsp3', 'tpsoc', 'tred', 'hasiltred', 'tkk1', 'tkk2', 'tkk3',
        'sumtsp', 'sumtkk', 'sumall', 'hasil', 'tanggal_assessment', 'created_at', 'updated_at'
    ];
}
