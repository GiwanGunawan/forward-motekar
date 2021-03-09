<?php

namespace App\Controllers;

class Coba extends BaseController
{
    //protected $coba;
    protected $dataPersonnelModel;
    protected $dataFraudModel;
    protected $dataJenisPelaporanModel;
    protected $dataLokerModel;
    protected $dataStreamModel;
    protected $dataWitelModel;
    protected $dataLevelModel;
    protected $dataAppreciateModel;

    public function __construct()
    {
        $this->dataPersonnelModel = new \App\Models\DataPersonnelModel();
        $this->dataFraudModel = new \App\Models\DataFraudModel();
        $this->dataJenisPelaporanModel = new \App\Models\DataJenisPelaporanModel();
        $this->dataLokerModel = new \App\Models\DataLokerModel();
        $this->dataStreamModel = new \App\Models\DataStreamModel();
        $this->dataWitelModel = new \App\Models\DataWitelModel();
        $this->dataLevelModel = new \App\Models\DataLevelModel();
        $this->dataAppreciateModel = new \App\Models\DataAppreciateModel();
    }


    public function index()
    {

        $data = [
            'validation' => \Config\Services::validation(),
            'title' => 'Detail Report',
            'dataloker' => $this->dataLokerModel->findAll(),
            'datastream' => $this->dataStreamModel->findAll(),
            'datawitel' => $this->dataWitelModel->findAll(),

        ];
        return view('coba', $data);
    }

    public function save()
    {

        if (!$this->validate([
            'nama' => 'required'

        ])) {
            //  $validation = \Config\Services::validation();
            // return redirect()->to('/komik/create')->withInput()->with('validation', $validation);
            return redirect()->to('/coba')->withInput();
        }


        if (($_FILES['upload_gambar']['name'] == "") && ($_FILES['upload_gambar']['size'] == 0)) {
            $namagambar = null;
        } else {
            //ambil gambar
            $filegambar = $this->request->getFile('upload_gambar');
            //dd($filesampul);

            //ubah nama supaya random
            $namagambar = $filegambar->getRandomName();

            //pindahkan file ke folder img
            //fungsi move mengarah ke public, jadi kita tinggal tulis img aja
            $filegambar->move('img', $namagambar);
        }

        $this->dataPersonnelModel->save([
            'nama' => $this->request->getVar('nama'),
            'nik' => $this->request->getVar('nik'),
            'nik_ta' => $this->request->getVar('nik_ta'),
            'loker' => $this->request->getVar('loker'),
            'stream' => $this->request->getVar('stream'),
            'sto' => $this->request->getVar('sto'),
            'witel' => $this->request->getVar('witel'),
            'mitra' => $this->request->getVar('mitra'),
            'alamat' => $this->request->getVar('alamat'),
            'upload_gambar' => $namagambar
        ]);

        session()->setFlashdata('pesan', 'Data berhasil ditambahkan.');

        return redirect()->to("/findpersonnel");
        // return view('findpersonnel/index');
    }
}
