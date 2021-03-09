<?php

namespace App\Controllers;

class Report extends BaseController
{
    protected $dataPersonnelModel;
    protected $dataJenisPelaporanModel;
    protected $dataFraudModel;
    protected $dataLevelModel;
    protected $dataAppreciateModel;

    public function __construct()
    {
        $this->dataPersonnelModel = new \App\Models\DataPersonnelModel();
        $this->dataJenisPelaporanModel = new \App\Models\DataJenisPelaporanModel();
        $this->dataFraudModel = new \App\Models\DataFraudModel();
        $this->dataLevelModel = new \App\Models\DataLevelModel();
        $this->dataAppreciateModel = new \App\Models\DataAppreciateModel();
    }

    public function index()
    {
        $keyword = htmlspecialchars(stripslashes(trim($this->request->getVar('keyword'))));
        if ($keyword) {
            $datapersonnel = $this->dataPersonnelModel->search($keyword);
        } else {
            $datapersonnel = $this->dataPersonnelModel;
        }
        $currentPage = $this->request->getVar('page_datapersonnel') ?  $this->request->getVar('page_datapersonnel') : 1;

        $data = [
            'validation' => \Config\Services::validation(),
            'title' => 'Report',
            'datapersonnel' => $datapersonnel->orderBy('id', 'DESC')->paginate(5, 'datapersonnel'),
            'pager' => $this->dataPersonnelModel->pager,
            'currentPage' => $currentPage,
            'datajenispelaporan' => $this->dataJenisPelaporanModel->findAll(),
            'datalevel' => $this->dataLevelModel->findAll(),
        ];
        return view('report/index', $data);
    }

    public function detail($nik)
    {
        $data = [
            'title' => 'Detail Report',
            'datapersonnel' => $this->dataPersonnelModel->detail($nik),
            'datajenispelaporan' => $this->dataJenisPelaporanModel->findAll(),
            'nik' => $nik,
            'datafraud' => $this->dataFraudModel->where(['nik' => $nik])->orderBy('id', 'DESC')->findAll(1),
            'dataappreciate' => $this->dataAppreciateModel->where(['nik' => $nik])->orderBy('id', 'DESC')->findAll(1),
            'datalevel' => $this->dataLevelModel->findAll(),
        ];
        if (empty($data['datapersonnel'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException("Data Personnel dengan NIK " . $nik . " tidak ditemukan");
        }

        return view('report/detail', $data);
    }
}
