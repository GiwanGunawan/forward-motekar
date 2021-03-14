<?= $this->extend('layout/template'); ?>
<?= $this->Section('content'); ?>

<?php if (session()->getFlashdata('tanda2') == 'showmodal') : ?>
    <script>
        $(document).ready(function() {
            // Show the Modal on load
            $("#exampleModal").modal("show");

        });
    </script>
<?php elseif (session()->getFlashdata('tanda2') == 'showreportmodal') : ?>
    <script>
        $(document).ready(function() {
            // Show the Modal on load
            $("#reportModal").modal("show");

        });
    </script>
<?php elseif (session()->getFlashdata('tanda2') == 'showappreciationmodal') : ?>
    <script>
        $(document).ready(function() {
            // Show the Modal on load
            $("#appreciationModal").modal("show");

        });
    </script>
<?php endif ?>


<div class="container">
    <div class="row">
        <div class="col">

            <button type="button" class="btn btn-danger  mb-3 mt-3" data-toggle="modal" data-target="#reportModal">
                + Report
            </button>

            <button type="button" class="btn btn-success  mb-3 mt-3" data-toggle="modal" data-target="#appreciationModal">
                + Appreciation
            </button>

            <a href="/findpersonnel" class="d-inline">Kembali</a>

        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col">
            <?php if (session()->getFlashdata('pesan')) : ?>
                <div class="alert alert-success" role="alert">
                    <?= session()->getFlashdata('pesan'); ?>
                </div>
            <?php endif; ?>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col">
            <div class="card mb-3" style="max-width: 100%;">
                <h5 class="card-header">
                    Detail Personnel
                </h5>
                <div class="row no-gutters">
                    <div class="col-md-4 text-center align-self-center">
                        <img class="gambarcard" src="/img/fotopersonnel/<?= $datapersonnel['upload_gambar']; ?>" alt="...">
                    </div>
                    <div class="col-md-8">

                        <div class="card-body">
                            <h5 class="card-title my-1"><?= $datapersonnel['nama']; ?></h5>

                            <div class="form-group row my-0 py-0">
                                <label class="col-sm-2 col-form-label font-weight-bold my-0 py-0 font-italic">Loker</label>
                                <div class="col-sm-10 align-self-center my-0 py-0">
                                    <?= $datapersonnel['loker']; ?>
                                </div>
                            </div>
                            <div class="form-group row my-0 py-0">
                                <label class="col-sm-2 col-form-label font-weight-bold my-0 py-0 font-italic">Stream</label>
                                <div class="col-sm-10 align-self-center my-0 py-0">
                                    <?= $datapersonnel['stream']; ?>
                                </div>
                            </div>
                            <div class="form-group row my-0 py-0">
                                <label class="col-sm-2 col-form-label font-weight-bold my-0 py-0 font-italic">STO</label>
                                <div class="col-sm-10 align-self-center my-0 py-0">
                                    <?= $datapersonnel['sto']; ?>
                                </div>
                            </div>
                            <div class="form-group row my-0 py-0">
                                <label class="col-sm-2 col-form-label font-weight-bold my-0 py-0 font-italic">WITEL</label>
                                <div class="col-sm-10 align-self-center my-0 py-0">
                                    <?= $datapersonnel['witel']; ?>
                                </div>
                            </div>
                            <div class="form-group row my-0 py-0">
                                <label class="col-sm-2 col-form-label font-weight-bold my-0 py-0 font-italic">NIK MITRA</label>
                                <div class="col-sm-10 align-self-center my-0 py-0">
                                    <?= $datapersonnel['nik_ta']; ?>
                                </div>
                            </div>
                            <div class="form-group row my-0 py-0">
                                <label class="col-sm-2 col-form-label font-weight-bold my-0 py-0 font-italic">NIK</label>
                                <div class="col-sm-10 align-self-center my-0 py-0">
                                    <?= $datapersonnel['nik']; ?>
                                </div>
                            </div>
                            <div class="form-group row my-0 py-0">
                                <label class="col-sm-2 col-form-label font-weight-bold my-0 py-0 font-italic">Mitra</label>
                                <div class="col-sm-10 align-self-center my-0 py-0">
                                    <?= $datapersonnel['mitra']; ?>
                                </div>
                            </div>
                            <div class="form-group row my-0 py-0">
                                <label class="col-sm-2 col-form-label font-weight-bold my-0 py-0 font-italic">Alamat</label>
                                <div class="col-sm-10 align-self-center my-0 py-0">
                                    <?= $datapersonnel['alamat']; ?>
                                </div>
                            </div>
                            <button type="button" class="btn btn-warning mb-3 mt-3" data-toggle="modal" data-target="#exampleModal">
                                Ubah
                            </button>

                            <!-- http method spoofing -->
                            <form action="/findpersonnel/<?= $datapersonnel['id']; ?>" method="post" class="d-inline">
                                <?= csrf_field(); ?>
                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" class="btn btn-danger mb-3 mt-3" onclick="return confirm('apakah anda yakin?');">Hapus</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="container">
    <div class="row">
        <div class="col">
            <h5>Summary Report / Blacklist</h5>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col">
            <div class="list-group">
                <?php $dataFraudModel = new \App\Models\DataFraudModel(); ?>
                <?php foreach ($datajenispelaporan as $djp) : ?>
                    <?php
                    $testaja = $dataFraudModel->where(['id_personnel' => $datapersonnel['id'], 'jenis_pelaporan' => $djp['jenis_pelaporan']])->countAllResults();
                    ?>
                    <a href="/findpersonnel/<?= $datapersonnel['id']; ?>/<?= $djp['jenis_pelaporan']; ?>" class="list-group-item d-flex list-group-item-action justify-content-between align-items-center">
                        <?= $djp['jenis_pelaporan']; ?><span class="badge badge-primary badge-pill"><?= $testaja; ?></span>
                    </a>
                <?php endforeach ?>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col">
            <h5 class="mt-3">Summary Appreciation</h5>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col">
            <div class="list-group">
                <?php $dataAppreciationModel = new \App\Models\DataAppreciationModel(); ?>
                <?php foreach ($datalevel as $dlv) : ?>
                    <?php
                    $testaja = $dataAppreciationModel->where(['id_personnel' => $datapersonnel['id'], 'level' => $dlv['level']])->countAllResults();
                    ?>
                    <a href="/findpersonnel/appreciation/<?= $datapersonnel['id']; ?>/<?= $dlv['level']; ?>" class="list-group-item d-flex list-group-item-action justify-content-between align-items-center">
                        <?= $dlv['level']; ?><span class="badge badge-primary badge-pill"><?= $testaja; ?></span>
                    </a>
                <?php endforeach ?>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col">
            <!-- Personnel Modal -->
            <form action="/findpersonnel/update_personnel/<?= $datapersonnel['id']; ?>" method="post" enctype="multipart/form-data">
                <?= csrf_field(); ?>
                <input type="hidden" name="gambar_eksis" value="<?= $datapersonnel['upload_gambar']; ?>">
                <!-- <input name="id" type="hidden" value="<?= $datapersonnel['id']; ?>"> -->
                <div class="modal fade" id="exampleModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Ubah Personnel</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">Nama</label>
                                    <div class="col-sm-10">
                                        <input name="nama" class="form-control" type="text" placeholder="Tulis nama disini" value="<?= (old('nama')) ? old('nama') : $datapersonnel['nama']; ?>">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">NIK</label>
                                    <div class="col-sm-10">
                                        <input name="nik" class="form-control <?= ($validation->hasError('nik')) ? 'is-invalid' : ''; ?>" type="text" placeholder="Tulis NIK disini" value="<?= (old('nik')) ? old('nik') : $datapersonnel['nik']; ?>">
                                        <div id="validationServer03Feedback" class="invalid-feedback">
                                            <?= $validation->getError('nik'); ?>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">NIK MITRA</label>
                                    <div class="col-sm-10">
                                        <input name="nik_ta" class="form-control" type="text" placeholder="Tulis NIK MITRA disini" value="<?= (old('nik_ta')) ? old('nik_ta') : $datapersonnel['nik_ta']; ?>">
                                    </div>
                                </div>

                                <div class=" form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">Loker</label>
                                    <div class="col-sm-10">
                                        <select name="loker" class="custom-select">
                                            <option value="">Pilih loker</option>
                                            <?php foreach ($dataloker as $dl) : ?>
                                                <option <?= (($dl['loker']) == ($datapersonnel['loker'])) ? "selected" : ""; ?> value="<?= $dl['loker']; ?>"><?= $dl['loker']; ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>

                                <div class=" form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">Stream</label>
                                    <div class="col-sm-10">
                                        <select name="stream" class="custom-select">
                                            <option value="">Pilih stream</option>
                                            <?php foreach ($datastream as $ds) : ?>
                                                <option <?= (($ds['stream']) == ($datapersonnel['stream'])) ? "selected" : ""; ?> value="<?= $ds['stream']; ?>"><?= $ds['stream']; ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>
                                <div class=" form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">STO</label>
                                    <div class="col-sm-10">
                                        <input name="sto" class="form-control" type="text" placeholder="Tulis STO disini" value="<?= (old('sto')) ? old('sto') : $datapersonnel['sto']; ?>">
                                    </div>
                                </div>
                                <div class=" form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">Witel</label>
                                    <div class="col-sm-10">
                                        <select name="witel" class="custom-select">
                                            <option value="">Pilih witel</option>
                                            <?php foreach ($datawitel as $dw) : ?>
                                                <option <?= (($dw['witel']) == ($datapersonnel['witel'])) ? "selected" : ""; ?> value="<?= $dw['witel']; ?>"><?= $dw['witel']; ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>
                                <div class=" form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">Mitra</label>
                                    <div class="col-sm-10">
                                        <input name="mitra" class="form-control" type="text" placeholder="Tulis mitra disini" value="<?= (old('mitra')) ? old('mitra') : $datapersonnel['mitra']; ?>">
                                    </div>
                                </div>
                                <div class=" form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">Alamat</label>
                                    <div class="col-sm-10">
                                        <input name="alamat" class="form-control" type="text" placeholder="Tulis alamat disini" value="<?= (old('alamat')) ? old('alamat') : $datapersonnel['alamat']; ?>">
                                    </div>
                                </div>

                                <div class=" form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">Upload Foto</label>
                                    <div class="col-sm-10">
                                        <div class="form-group">
                                            <input name="upload_gambar" type="file" class="form-control-file <?= ($validation->hasError('upload_gambar')) ? 'is-invalid' : ''; ?>" id="exampleFormControlFile1">
                                            <div id="validationServer03Feedback" class="invalid-feedback">
                                                <?= $validation->getError('upload_gambar'); ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button name="tambahkan" type="submit" class="btn btn-primary">Ubah</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <!-- Report Modal -->
            <form action="/findpersonnel/save_report" method="post" enctype="multipart/form-data">
                <?= csrf_field(); ?>
                <input name="nama" type="hidden" value="<?= $datapersonnel['nama']; ?>">
                <input name="nik" type="hidden" value="<?= $datapersonnel['nik']; ?>">
                <input name="id" type="hidden" value="<?= $datapersonnel['id']; ?>">
                <input name="nik_ta" type="hidden" value="<?= $datapersonnel['nik_ta']; ?>">
                <div class="modal fade" id="reportModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Tambahkan Report</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group row">
                                    <label for="inputEmail3" class="col-sm-4 col-form-label">Jenis Pelaporan</label>
                                    <div class="col-sm-8">
                                        <select name="jenis_pelaporan" class="custom-select <?= ($validation->hasError('jenis_pelaporan')) ? 'is-invalid' : ''; ?>">
                                            <option value="">Pilih jenis pelaporan</option>
                                            <?php foreach ($datajenispelaporan as $djp) : ?>
                                                <option <?= (old('jenis_pelaporan') == $djp['jenis_pelaporan'] ? 'selected' : ''); ?> value="<?= $djp['jenis_pelaporan']; ?>"><?= $djp['jenis_pelaporan']; ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                        <div id="validationServer03Feedback" class="invalid-feedback">
                                            <?= $validation->getError('jenis_pelaporan'); ?>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Label ODP</label>
                                    <div class="col-sm-8">
                                        <input name="label_odp" class="form-control" type="text" placeholder="Tulis label ODP disini" value="<?= old('label_odp'); ?>">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Pelapor</label>
                                    <div class="col-sm-8">
                                        <input name="pelapor" class="form-control" type="text" placeholder="Tulis nama pelapor disini" value="<?= old('pelapor'); ?>">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Tanggal Temuan</label>
                                    <div class="col-sm-8">
                                        <input name="tanggal_pelaporan" class="form-control" type="date" value="<?= (old('tanggal_pelaporan')) ? old('tanggal_pelaporan') : date('Y-m-d'); ?>" max="<?php echo date('Y-m-d'); ?>" placeholder="Tulis tanggal temuan disini">
                                    </div>
                                </div>


                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Evident Fraud</label>
                                    <div class="col-sm-8">
                                        <input name="evident_fraud" class="form-control" type="text" placeholder="Tulis evident fraud disini" value="<?= old('evident_fraud'); ?>">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Keterangan</label>
                                    <div class="col-sm-8">
                                        <input name="keterangan" class="form-control" type="text" placeholder="Tulis keterangan disini" value="<?= old('keterangan'); ?>">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Upload Evidence</label>
                                    <div class="col-sm-8">
                                        <div class="form-group">
                                            <input name="upload_gambar" type="file" class="form-control-file <?= ($validation->hasError('upload_gambar')) ? 'is-invalid' : ''; ?>" id="exampleFormControlFile1">
                                            <div id="validationServer03Feedback" class="invalid-feedback">
                                                <?= $validation->getError('upload_gambar'); ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button name="tambahkan" type="submit" class="btn btn-primary">Tambahkan</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <!-- Appreciation Modal -->
            <form action="/findpersonnel/save_appreciation" method="post" enctype="multipart/form-data">
                <?= csrf_field(); ?>
                <input name="nama" type="hidden" value="<?= $datapersonnel['nama']; ?>">
                <input name="nik" type="hidden" value="<?= $datapersonnel['nik']; ?>">
                <input name="nik_ta" type="hidden" value="<?= $datapersonnel['nik_ta']; ?>">
                <input name="id" type="hidden" value="<?= $datapersonnel['id']; ?>">
                <div class="modal fade" id="appreciationModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Tambahkan Appreciation</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group row">
                                    <label for="inputEmail3" class="col-sm-4 col-form-label">Level</label>
                                    <div class="col-sm-8">
                                        <select name="level" class="custom-select <?= ($validation->hasError('level')) ? 'is-invalid' : ''; ?>">
                                            <option value="">Pilih level</option>
                                            <?php foreach ($datalevel as $dlv) : ?>
                                                <option <?= ($dlv['level'] == old('level')) ? "selected" : ""; ?> value="<?= $dlv['level']; ?>"><?= $dlv['level']; ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                        <div id="validationServer03Feedback" class="invalid-feedback">
                                            <?= $validation->getError('level'); ?>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Tanggal/Tahun</label>
                                    <div class="col-sm-8">
                                        <input name="tanggal_appreciation" class="form-control" type="date" value="<?= (old('tanggal_appreciation')) ? old('tanggal_appreciation') : date('Y-m-d'); ?>" max="<?php echo date('Y-m-d'); ?>">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Keterangan</label>
                                    <div class="col-sm-8">
                                        <input name="keterangan" class="form-control <?= ($validation->hasError('keterangan')) ? 'is-invalid' : ''; ?>" type="text" placeholder="Tulis keterangan disini" value="<?= old('keterangan'); ?>">
                                        <div id="validationServer03Feedback" class="invalid-feedback">
                                            <?= $validation->getError('keterangan'); ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button name="tambahkan" type="submit" class="btn btn-primary">Tambahkan</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>




<?= $this->EndSection(); ?>