<?php

namespace App\Models;

use CodeIgniter\Model;

class TbAssessmentModel extends Model
{
    protected $table      = 'tb_assessment';
    protected $useTimestamps = true;
    protected $allowedFields = [
        'id', 'id_personnel', 'slug', 'nama', 'nik', 'nik_ta',
        'col1', 'col2', 'col3', 'col4', 'col5', 'col6', 'col7', 'col8',
        'sumcol123', 'sumcol678', 'sumcolall', 'hasil', 'tanggal_assessment', 'created_at', 'updated_at'
    ];
}
