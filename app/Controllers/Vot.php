<?php

namespace App\Controllers;

class Vot extends BaseController
{

    protected $TbConversationModel;
    protected $TbFilterVotModel;


    public function __construct()
    {
        $this->TbConversationModel = new \App\Models\TbConversationModel();
        $this->TbFilterVotModel = new \App\Models\TbFilterVotModel();
    }

    public function index()
    {
        if ($this->request->getVar('filtervot')) {
            $TbConversation = $this->TbConversationModel->orderBy('id', 'DESC')->like(['notes' => $this->request->getVar('filtervot')])->where(['status' => 'stopped'])->findAll();
        } else {
            $TbConversation = $this->TbConversationModel->orderBy('id', 'DESC')->where(['status' => 'stopped'])->findAll();
        }


        $data = [
            'validation' => \Config\Services::validation(),
            'title' => 'Voice Of Technician',
            // 'TbConversationModel' => $this->TbConversationModel->orderBy('id', 'DESC')->where(['status' => 'stopped'])->findAll(),
            'TbConversationModel' => $TbConversation,
            'TbFilterVotModel' => $this->TbFilterVotModel->findAll(),
            'filtervot' => $this->request->getVar('filtervot')
        ];
        return view('vot/index', $data);
    }
}
