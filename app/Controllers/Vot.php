<?php

namespace App\Controllers;

class Vot extends BaseController
{

    protected $TbConversationModel;


    public function __construct()
    {
        $this->TbConversationModel = new \App\Models\TbConversationModel();
    }

    public function index()
    {

        $data = [
            'validation' => \Config\Services::validation(),
            'title' => 'Voice Of Technician',
            'TbConversationModel' => $this->TbConversationModel->orderBy('id', 'DESC')->where(['status' => 'stopped'])->findAll(),

        ];
        return view('vot/index', $data);
    }
}
