<?php

namespace App\Models;

use CodeIgniter\Model;

class TbConversationModel extends Model
{
    protected $table      = 'conversation';
    protected $useTimestamps = true;
    protected $allowedFields = [];
}
