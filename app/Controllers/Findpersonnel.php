<?php

namespace App\Controllers;

class Findpersonnel extends BaseController
{
    protected $dataPersonnelModel;
    protected $dataFraudModel;
    protected $dataJenisPelaporanModel;
    protected $dataLokerModel;
    protected $dataStreamModel;
    protected $dataWitelModel;
    protected $dataLevelModel;
    protected $dataAppreciationModel;
    protected $TbAssessmentModel;

    public function __construct()
    {
        $this->dataPersonnelModel = new \App\Models\DataPersonnelModel();
        $this->dataFraudModel = new \App\Models\DataFraudModel();
        $this->dataJenisPelaporanModel = new \App\Models\DataJenisPelaporanModel();
        $this->dataLokerModel = new \App\Models\DataLokerModel();
        $this->dataStreamModel = new \App\Models\DataStreamModel();
        $this->dataWitelModel = new \App\Models\DataWitelModel();
        $this->dataLevelModel = new \App\Models\DataLevelModel();
        $this->dataAppreciationModel = new \App\Models\DataAppreciationModel();
        $this->TbAssessmentModel = new \App\Models\TbAssessmentModel();
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
            'title' => 'Appreciation & Blacklist',
            'datapersonnel' => $datapersonnel->orderBy('id', 'DESC')->paginate(100, 'datapersonnel'),
            // 'pager' => $this->dataPersonnelModel->pager,
            'pager' => $datapersonnel->pager,
            'currentPage' => $currentPage,
            'dataloker' => $this->dataLokerModel->findAll(),
            'datastream' => $this->dataStreamModel->findAll(),
            'datawitel' => $this->dataWitelModel->findAll(),
            'keyword' => $this->request->getVar('keyword')
        ];

        return view('findpersonnel/index', $data);
    }

    public function detail($id)
    {
        // dd($this->TbAssessmentModel->where(['id_personnel' => $id])->orderBy('id', 'DESC')->first());
        // dd($this->dataLokerModel->findAll());
        $data = [
            'validation' => \Config\Services::validation(),
            'title' => 'Detail Personnel',
            'datapersonnel' => $this->dataPersonnelModel->detail($id),
            'datajenispelaporan' => $this->dataJenisPelaporanModel->findAll(),
            'dataloker' => $this->dataLokerModel->findAll(),
            'datastream' => $this->dataStreamModel->findAll(),
            'datawitel' => $this->dataWitelModel->findAll(),
            'datalevel' => $this->dataLevelModel->findAll(),
            'tb_assessment' => $this->TbAssessmentModel->where(['id_personnel' => $id])->orderBy('id', 'DESC')->first(),
        ];
        if (empty($data['datapersonnel'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException("Data Personnel dengan ID " . $id . " tidak ditemukan");
        }

        return view('findpersonnel/detail', $data);
    }

    public function detailfraud($id, $jenispelaporan)
    {
        // dd($this->dataFraudModel->where(['nik' => $nik, 'jenis_pelaporan' => $jenispelaporan])->findAll());
        $data = [
            'validation' => \Config\Services::validation(),
            'title' => 'Detail Fraud',
            // 'test1' => $nik,
            // 'test2' => $jenispelaporan,
            'datafraud' => $this->dataFraudModel->where(['id_personnel' => $id, 'jenis_pelaporan' => $jenispelaporan])->orderBy('id', 'DESC')->findAll(),
            'datapersonnel' => $this->dataPersonnelModel->detail($id),
            'datajenispelaporan' => $this->dataJenisPelaporanModel->findAll(),
        ];
        return view('findpersonnel/detailfraud', $data);
    }

    public function detailappreciation($id, $level)
    {
        $data = [
            'validation' => \Config\Services::validation(),
            'title' => 'Detail Appreciation',
            'dataappreciation' => $this->dataAppreciationModel->where(['id_personnel' => $id, 'level' => $level])->orderBy('id', 'DESC')->findAll(),
            'datapersonnel' => $this->dataPersonnelModel->detail($id),
            'datalevel' => $this->dataLevelModel->findAll(),
        ];
        return view('findpersonnel/detailappreciation', $data);
    }


    public function save_personnel()
    {

        if (!$this->validate([
            'nik' => [
                'rules' => 'required|is_unique[datapersonnel.nik]',
                'errors' => [
                    'required' => '{field} personnel harus diisi',
                    'is_unique' => '{field} personnel sudah terdaftar'
                ]
            ],
            'upload_gambar' => [
                'rules' => 'max_size[upload_gambar,5120]|is_image[upload_gambar]|mime_in[upload_gambar,image/jpg,image/jpeg,image/png]',
                'errors' => [

                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]

        ])) {
            session()->setFlashdata('tanda2', 'showmodal');
            return redirect()->to('/findpersonnel')->withInput();
        }


        if (($_FILES['upload_gambar']['name'] == "") && ($_FILES['upload_gambar']['size'] == 0)) {
            $namagambar = null;
        } else {

            $filegambar = $this->request->getFile('upload_gambar');
            $namagambar = $filegambar->getRandomName();
            // $nik = $this->request->getVar('nik');
            // $extensiongambar = $filegambar->getExtension();
            // $namagambar = $nik . '.' . $extensiongambar;

            $filegambar->move('img/uploadbuffer', $namagambar);
            $image = \Config\Services::image()
                ->withFile('img/uploadbuffer/' . $namagambar)
                ->resize(300, 400, true, 'width')
                //->fit(400, 600, 'center')
                ->save('img/fotopersonnel/' . $namagambar);

            helper('filesystem');
            delete_files('img/uploadbuffer');
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

    public function update_personnel($id)
    {
        // $dataPersonnelLama = $this->dataPersonnelModel->where(['id' => $this->request->getVar('id')])->first();
        $dataPersonnelLama = $this->dataPersonnelModel->where(['id' => $id])->first();

        if ($dataPersonnelLama['nik'] == $this->request->getVar('nik')) {
            $rule_nik = 'required';
        } else {
            $rule_nik = 'required|is_unique[datapersonnel.nik]';
        }

        if (!$this->validate([
            'nik' => [
                'rules' => $rule_nik,
                'errors' => [
                    'required' => '{field} personnel harus diisi',
                    'is_unique' => '{field} personnel sudah terdaftar'
                ]
            ],
            'upload_gambar' => [
                'rules' => 'max_size[upload_gambar,5120]|is_image[upload_gambar]|mime_in[upload_gambar,image/jpg,image/jpeg,image/png]',
                'errors' => [

                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]

        ])) {
            session()->setFlashdata('tanda2', 'showmodal');
            return redirect()->to('/findpersonnel/' . $id)->withInput();
        }

        if (($_FILES['upload_gambar']['name'] == "") && ($_FILES['upload_gambar']['size'] == 0)) {
            $namagambar = $this->request->getVar('gambar_eksis');
        } else {

            $filegambar = $this->request->getFile('upload_gambar');
            $namagambar = $filegambar->getRandomName();
            // $nik = $this->request->getVar('nik');
            // $extensiongambar = $filegambar->getExtension();
            // $namagambar = $nik . '.' . $extensiongambar;

            // unlink('img/fotopersonnel/' . $dataPersonnelLama['upload_gambar']);

            $filegambar->move('img/uploadbuffer', $namagambar);
            $image = \Config\Services::image()
                ->withFile('img/uploadbuffer/' . $namagambar)
                ->resize(300, 400, true, 'width')
                //->fit(400, 600, 'center')
                ->save('img/fotopersonnel/' . $namagambar);

            helper('filesystem');
            delete_files('img/uploadbuffer');

            $dataPersonnelLama = $this->dataPersonnelModel->where(['id' => $id])->first();
            if ($dataPersonnelLama['upload_gambar'] != null) {
                unlink('img/fotopersonnel/' . $dataPersonnelLama['upload_gambar']);
            }
        }

        $this->dataPersonnelModel->save([
            'id' => $id,
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
        session()->setFlashdata('pesan', 'Data berhasil diubah.');

        return redirect()->to("/findpersonnel/" . $id);
    }


    public function delete_personnel($id)
    {
        // unlink('img/fotopersonnel/' . $dataPersonnelLama['upload_gambar']);
        $dataPersonnelLama = $this->dataPersonnelModel->where(['id' => $id])->first();
        if ($dataPersonnelLama['upload_gambar'] != "") {
            unlink('img/fotopersonnel/' . $dataPersonnelLama['upload_gambar']);
        }

        $this->dataPersonnelModel->delete($id);
        session()->setFlashdata('pesan', 'Data berhasil dihapus.');
        return redirect()->to('/findpersonnel');
    }


    public function save_report()
    {

        if (!$this->validate([
            'jenis_pelaporan' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'jenis pelaporan harus diisi',
                ]
            ],
            'upload_gambar' => [
                'rules' => 'max_size[upload_gambar,5120]|is_image[upload_gambar]|mime_in[upload_gambar,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]

        ])) {
            // $nik = $this->request->getVar('nik');
            // session()->setFlashdata('tanda3', $nik);
            session()->setFlashdata('tanda2', 'showreportmodal');
            return redirect()->to("/findpersonnel/" . $this->request->getVar('id'))->withInput();
        }
        if (($_FILES['upload_gambar']['name'] == "") && ($_FILES['upload_gambar']['size'] == 0)) {
            $namagambar = null;
        } else {

            $filegambar = $this->request->getFile('upload_gambar');
            $namagambar = $filegambar->getRandomName();
            $filegambar->move('img/uploadbuffer', $namagambar);
            $image = \Config\Services::image()
                ->withFile('img/uploadbuffer/' . $namagambar)
                ->resize(300, 400, true, 'width')
                ->save('img/fotofraud/' . $namagambar);

            helper('filesystem');
            delete_files('img/uploadbuffer');
        }

        $this->dataFraudModel->save([
            'id_personnel' => $this->request->getVar('id'),
            'nama' => $this->request->getVar('nama'),
            'nik' => $this->request->getVar('nik'),
            'nik_ta' => $this->request->getVar('nik_ta'),
            'jenis_pelaporan' => $this->request->getVar('jenis_pelaporan'),
            'label_odp' => $this->request->getVar('label_odp'),
            'pelapor' => $this->request->getVar('pelapor'),
            'hp_pelapor' => $this->request->getVar('hp_pelapor'),
            'tanggal_pelaporan' => $this->request->getVar('tanggal_pelaporan'),
            'evident_fraud' => $this->request->getVar('evident_fraud'),
            'keterangan' => $this->request->getVar('keterangan'),
            'upload_gambar' => $namagambar
        ]);

        helper('filesystem');
        delete_files('img/uploadbuffer');

        session()->setFlashdata('pesan', 'Data report berhasil ditambahkan.');
        // $nik = $this->request->getVar('nik');
        // session()->setFlashdata('tanda1', $nik);

        return redirect()->to("/findpersonnel/" . $this->request->getVar('id'));
    }


    public function update_report($id)
    {

        if (!$this->validate([
            'jenis_pelaporan' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'jenis pelaporan harus diisi',
                ]
            ],
            'upload_gambar' => [
                'rules' => 'max_size[upload_gambar,5120]|is_image[upload_gambar]|mime_in[upload_gambar,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]

        ])) {
            session()->setFlashdata('tanda2', 'showmodal');
            $dataFraudLama = $this->dataFraudModel->where(['id' => $id])->first();
            return redirect()->to("/findpersonnel/" . $this->request->getVar('id') . "/" . $dataFraudLama['jenis_pelaporan'])->withInput();
        }

        if (($_FILES['upload_gambar']['name'] == "") && ($_FILES['upload_gambar']['size'] == 0)) {
            $namagambar = $this->request->getVar('gambar_eksis');
        } else {

            $filegambar = $this->request->getFile('upload_gambar');
            $namagambar = $filegambar->getRandomName();
            // $nik = $this->request->getVar('nik');
            // $extensiongambar = $filegambar->getExtension();
            // $namagambar = $nik . '_' . $id . '.' . $extensiongambar;


            // unlink('img/fotopersonnel/' . $dataPersonnelLama['upload_gambar']);

            $filegambar->move('img/uploadbuffer', $namagambar);
            $image = \Config\Services::image()
                ->withFile('img/uploadbuffer/' . $namagambar)
                ->resize(300, 400, true, 'width')
                //->fit(400, 600, 'center')
                ->save('img/fotofraud/' . $namagambar);

            helper('filesystem');
            delete_files('img/uploadbuffer');

            $dataFraudLama = $this->dataFraudModel->where(['id' => $id])->first();
            if ($dataFraudLama['upload_gambar'] != null) {
                unlink('img/fotofraud/' . $dataFraudLama['upload_gambar']);
            }
        }

        $this->dataFraudModel->save([
            'id' => $id,
            'id_personnel' => $this->request->getVar('id'),
            'nama' => $this->request->getVar('nama'),
            'nik' => $this->request->getVar('nik'),
            'nik_ta' => $this->request->getVar('nik_ta'),
            'jenis_pelaporan' => $this->request->getVar('jenis_pelaporan'),
            'label_odp' => $this->request->getVar('label_odp'),
            'pelapor' => $this->request->getVar('pelapor'),
            'hp_pelapor' => $this->request->getVar('hp_pelapor'),
            'tanggal_pelaporan' => $this->request->getVar('tanggal_pelaporan'),
            'evident_fraud' => $this->request->getVar('evident_fraud'),
            'keterangan' => $this->request->getVar('keterangan'),
            'upload_gambar' => $namagambar
        ]);
        session()->setFlashdata('pesan', 'Data report berhasil diubah.');
        return redirect()->to("/findpersonnel/" . $this->request->getVar('id') . "/" . $this->request->getVar('jenis_pelaporan'));
    }


    public function delete_report($id)
    {
        // unlink('img/fotopersonnel/' . $dataPersonnelLama['upload_gambar']);
        $dataFraudLama = $this->dataFraudModel->where(['id' => $id])->first();
        if ($dataFraudLama['upload_gambar'] != "") {
            unlink('img/fotofraud/' . $dataFraudLama['upload_gambar']);
        }

        $this->dataFraudModel->delete($id);
        session()->setFlashdata('pesan', 'Data report berhasil dihapus.');
        return redirect()->to('/findpersonnel/' . $this->request->getVar('id'));
    }


    public function save_appreciation()
    {
        if (!$this->validate([
            'level' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'level harus diisi',
                ]
            ],
            'keterangan' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'keterangan harus diisi',
                ]
            ],

        ])) {

            session()->setFlashdata('tanda2', 'showappreciationmodal');
            return redirect()->to('/findpersonnel/' . $this->request->getVar('id'))->withInput();
        }



        $this->dataAppreciationModel->save([
            'id_personnel' => $this->request->getVar('id'),
            'nama' => $this->request->getVar('nama'),
            'nik' => $this->request->getVar('nik'),
            'nik_ta' => $this->request->getVar('nik_ta'),
            'level' => $this->request->getVar('level'),
            'tanggal_appreciation' => $this->request->getVar('tanggal_appreciation'),
            'keterangan' => $this->request->getVar('keterangan'),
        ]);

        helper('filesystem');
        delete_files('img/uploadbuffer');

        session()->setFlashdata('pesan', 'Data appreciation berhasil ditambahkan.');
        // $nik = $this->request->getVar('nik');
        // session()->setFlashdata('tanda1', $nik);

        return redirect()->to("/findpersonnel/" . $this->request->getVar('id'));
    }

    public function update_appreciation($id)
    {

        if (!$this->validate([
            'level' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'level harus diisi',
                ]
            ],
            'keterangan' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'keterangan harus diisi',
                ]
            ],

        ])) {

            session()->setFlashdata('tanda2', 'showmodal');
            $dataAppreciationLama = $this->dataAppreciationModel->where(['id' => $id])->first();
            return redirect()->to("/findpersonnel/appreciation/" . $this->request->getVar('id') . "/" . $dataAppreciationLama['level'])->withInput();
        }

        $this->dataAppreciationModel->save([
            'id' => $id,
            'id_personnel' => $this->request->getVar('id'),
            'nama' => $this->request->getVar('nama'),
            'nik' => $this->request->getVar('nik'),
            'nik_ta' => $this->request->getVar('nik_ta'),
            'level' => $this->request->getVar('level'),
            'tanggal_appreciation' => $this->request->getVar('tanggal_appreciation'),
            'keterangan' => $this->request->getVar('keterangan'),
        ]);
        session()->setFlashdata('pesan', 'Data appreciation berhasil diubah.');

        return redirect()->to("/findpersonnel/appreciation/" . $this->request->getVar('id') . "/" . $this->request->getVar('level'));
    }

    public function delete_appreciation($id)
    {
        $this->dataAppreciationModel->delete($id);
        session()->setFlashdata('pesan', 'Data appreciation berhasil dihapus.');
        return redirect()->to('/findpersonnel/' . $this->request->getVar('id'));
    }

    public function summaryreport()
    {



        $data = [
            'title' => 'Summary Report',
            'datafraud' => $this->dataFraudModel
                ->select('id_personnel,nama,nik,nik_ta ,COUNT(*) AS count')
                ->groupBy('id_personnel')
                ->orderBy('count', 'DESC')
                ->findAll()

        ];

        return view('findpersonnel/summaryreport', $data);
    }

    public function summaryappreciation()
    {
        $data = [
            'title' => 'Summary Appreciation',
            'dataappreciation' => $this->dataAppreciationModel
                ->select('id_personnel,nama,nik,nik_ta ,COUNT(*) AS count')
                ->groupBy('id_personnel')
                ->orderBy('count', 'DESC')
                ->findAll()

        ];
        return view('findpersonnel/summaryappreciation', $data);
    }

    public function rawreport()
    {
        $data = [
            'title' => 'Raw Report',
            'datafraud' => $this->dataFraudModel->findAll()

        ];
        return view('findpersonnel/rawreport', $data);
    }

    public function rawappreciation()
    {
        $data = [
            'title' => 'Raw Appreciation',
            'dataappreciation' => $this->dataAppreciationModel->findAll()

        ];
        return view('findpersonnel/rawappreciation', $data);
    }

    public function excelsumreport()
    {
        $data = [
            'datafraud' => $this->dataFraudModel
                ->select('id_personnel,nama,nik,nik_ta ,COUNT(*) AS count')
                ->groupBy('id_personnel')
                ->orderBy('count', 'DESC')
                ->findAll()

        ];
        return view('findpersonnel/excelsumreport', $data);
    }

    public function excelsumappreciation()
    {
        $data = [
            'dataappreciation' => $this->dataAppreciationModel
                ->select('id_personnel,nama,nik,nik_ta ,COUNT(*) AS count')
                ->groupBy('id_personnel')
                ->orderBy('count', 'DESC')
                ->findAll()

        ];
        return view('findpersonnel/excelsumappreciation', $data);
    }

    public function excelrawreport()
    {
        $data = [
            'datafraud' => $this->dataFraudModel->findAll()

        ];
        return view('findpersonnel/excelrawreport', $data);
    }


    public function excelrawappreciation()
    {
        $data = [
            'dataappreciation' => $this->dataAppreciationModel->findAll()

        ];
        return view('findpersonnel/excelrawappreciation', $data);
    }

    public function save_assessment_komptek()
    {
        // dd($this->request->getVar('hasiltred'));

        $this->TbAssessmentModel->save([
            'id_personnel' => $this->request->getVar('id'),
            'nama' => $this->request->getVar('nama'),
            'nik' => $this->request->getVar('nik'),
            'nik_ta' => $this->request->getVar('nik_ta'),
            'tsp1' => $this->request->getVar('tsp1'),
            'tsp2' => $this->request->getVar('tsp2'),
            'tsp3' => $this->request->getVar('tsp3'),
            'tpsoc' => $this->request->getVar('tpsoc'),
            'tred' => $this->request->getVar('tred'),
            'hasiltred' => $this->request->getVar('hasiltred'),
            'tkk1' => $this->request->getVar('tkk1'),
            'tkk2' => $this->request->getVar('tkk2'),
            'tkk3' => $this->request->getVar('tkk3'),
            'tanggal_assessment' => $this->request->getVar('tanggal_assessment'),

        ]);


        session()->setFlashdata('pesan', 'Data assessment berhasil ditambahkan.');
        // $nik = $this->request->getVar('nik');
        // session()->setFlashdata('tanda1', $nik);

        return redirect()->to("/findpersonnel/" . $this->request->getVar('id'));
    }

    public function history_assessment($id)
    {
        $data = [
            'title' => 'History Assessment',
            'tb_assessmentmodal' => $this->TbAssessmentModel->where(['id_personnel' => $id])->orderBy('id', 'DESC')->findAll(),
        ];

        return view('findpersonnel/historyassessment', $data);
    }
}
