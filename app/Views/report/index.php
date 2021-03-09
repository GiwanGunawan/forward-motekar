<?= $this->extend('layout/template'); ?>
<?= $this->Section('content'); ?>

<?php $nik = session()->getFlashdata('tanda3'); ?>
<?php if (session()->getFlashdata('tanda2') == 'showmodal') : ?>
    <script>
        $(document).ready(function() {
            // Show the Modal on load
            $("#reportModal<?= $nik; ?>").modal("show");

        });
    </script>

<?php elseif (session()->getFlashdata('tanda2') == 'showmodal2') : ?>
    <script>
        $(document).ready(function() {
            // Show the Modal on load
            $("#appreciateModal<?= $nik; ?>").modal("show");

        });
    </script>

<?php endif ?>

<div class="container">
    <div class="row">
        <div class="col">
            <h1>Appreciation & Blacklist</h1>
            <?php if (session()->getFlashdata('pesan')) : ?>
                <div class="alert alert-success" role="alert">
                    <?= session()->getFlashdata('pesan'); ?>
                    <a href="findpersonnel/<?= session()->getFlashdata('tanda1'); ?>">Lihat disini</a>
                </div>
            <?php endif; ?>
            <form action="" method="post">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Cari berdasarkan Nama, NIK, atau NIK MITRA" name="keyword" aria-label="Recipient's username" aria-describedby="button-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="submit" id="button-addon2" name="submit">Cari</button>
                    </div>
                </div>
            </form>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nama</th>
                        <th scope="col">NIK</th>
                        <th scope="col">NIK MITRA</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1 + (5 * ($currentPage - 1)); ?>
                    <?php foreach ($datapersonnel as $dp) :  ?>

                        <tr>
                            <td scope="row"><?= $i++; ?></td>
                            <td><?= $dp['nama']; ?></td>
                            <td><?= $dp['nik']; ?></td>
                            <td><?= $dp['nik_ta']; ?></td>
                            <!-- Button trigger modal -->
                            <td><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#reportModal<?= $dp['nik']; ?>">
                                    Report !!
                                </button>
                                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#appreciateModal<?= $dp['nik']; ?>">
                                    Appreciation !!
                                </button>

                                <!-- Report Modal -->
                                <form action="/report/save_report" method="post" enctype="multipart/form-data">
                                    <?= csrf_field(); ?>
                                    <div class="modal fade" id="reportModal<?= $dp['nik']; ?>" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Profil Personnel</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="form-group row my-1">
                                                        <label for="inputEmail3" class="col-sm-2 col-form-label">Nama</label>
                                                        <div class="col-sm-10">
                                                            <input disabled name="nama" class="form-control" type="text" placeholder="Tulis nama disini" value="<?= $dp['nama']; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row my-1">
                                                        <label for="inputEmail3" class="col-sm-2 col-form-label">Stream</label>
                                                        <div class="col-sm-10">
                                                            <input disabled name="stream" class="form-control" type="text" placeholder="Tulis NIK disini" value="<?= $dp['stream']; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row my-1">
                                                        <label for="inputEmail3" class="col-sm-2 col-form-label">STO</label>
                                                        <div class="col-sm-10">
                                                            <input disabled name="sto" class="form-control" type="text" placeholder="Tulis NIK disini" value="<?= $dp['sto']; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row my-1">
                                                        <label for="inputEmail3" class="col-sm-2 col-form-label">Witel</label>
                                                        <div class="col-sm-10">
                                                            <input disabled name="witel" class="form-control" type="text" placeholder="Tulis NIK disini" value="<?= $dp['witel']; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row my-1">
                                                        <label for="inputEmail3" class="col-sm-2 col-form-label">NIK</label>
                                                        <div class="col-sm-10">
                                                            <input disabled name="nik" class="form-control" type="text" placeholder="Tulis NIK MITRA disini" value="<?= $dp['nik']; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row my-1">
                                                        <label for="inputEmail3" class="col-sm-2 col-form-label">NIK MITRA</label>
                                                        <div class="col-sm-10">
                                                            <input disabled name="nik_ta" class="form-control" type="text" placeholder="Tulis NIK MITRA disini" value="<?= $dp['nik_ta']; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row my-1">
                                                        <label for="inputEmail3" class="col-sm-2 col-form-label">Mitra</label>
                                                        <div class="col-sm-10">
                                                            <input disabled name="mitra" class="form-control" type="text" placeholder="Tulis NIK MITRA disini" value="<?= $dp['mitra']; ?>">
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Tambahkan Report</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">

                                                    <input name="nama" type="hidden" value="<?= $dp['nama']; ?>">
                                                    <input name="nik" type="hidden" value="<?= $dp['nik']; ?>">

                                                    <!-- <fieldset class="form-group row">
                                                        <legend class="col-form-label col-sm-4 float-sm-left pt-0">Jenis Pelaporan</legend>
                                                        <div class="col-sm-8">
                                                            <?php foreach ($datajenispelaporan as $djp) : ?>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="radio" name="jenis_pelaporan" id="gridRadios1" value="<?= $djp['jenis_pelaporan']; ?>">
                                                                    <label class="form-check-label" for="gridRadios1">
                                                                        <?= $djp['jenis_pelaporan']; ?>
                                                                    </label>
                                                                </div>
                                                            <?php endforeach ?>
                                                        </div>
                                                    </fieldset> -->

                                                    <div class="form-group row">
                                                        <label for="inputEmail3" class="col-sm-4 col-form-label">Jenis Pelaporan</label>
                                                        <div class="col-sm-8">
                                                            <!-- <input name="loker" class="form-control" type="text" placeholder="Tulis Loker disini"> -->
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
                                                            <input name="tanggal_pelaporan" class="form-control" type="date" value="<?= (old('tanggal_pelaporan')) ? old('tanggal_pelaporan') : date('Y-m-d'); ?>" max="<?php echo date('Y-m-d'); ?>" placeholder="Tulis tanggal pelaporan disini">
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

                                                    <!-- <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label">Keterangan</label>
                                                        <div class="col-sm-8">
                                                            <textarea name="keterangan" class="form-control" placeholder="Tulis keterangan disini" id="exampleFormControlTextarea1" rows="4" value="<?= old('keterangan'); ?>"></textarea>

                                                        </div>
                                                    </div> -->

                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label">Upload Evidence</label>
                                                        <div class="col-sm-8">
                                                            <div class="form-group">
                                                                <input name="upload_gambar" type="file" class="form-control-file" id="exampleFormControlFile1">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    <button name="tambahkan" type="submit" class="btn btn-primary">Report!</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>

                                <!-- Appreciate Modal -->
                                <form action="/report/save_appreciate" method="post" enctype="multipart/form-data">
                                    <?= csrf_field(); ?>
                                    <div class="modal fade" id="appreciateModal<?= $dp['nik']; ?>" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Profil Personnel</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="form-group row my-1">
                                                        <label for="inputEmail3" class="col-sm-2 col-form-label">Nama</label>
                                                        <div class="col-sm-10">
                                                            <input disabled name="nama" class="form-control" type="text" placeholder="Tulis nama disini" value="<?= $dp['nama']; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row my-1">
                                                        <label for="inputEmail3" class="col-sm-2 col-form-label">Stream</label>
                                                        <div class="col-sm-10">
                                                            <input disabled name="stream" class="form-control" type="text" placeholder="Tulis NIK disini" value="<?= $dp['stream']; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row my-1">
                                                        <label for="inputEmail3" class="col-sm-2 col-form-label">STO</label>
                                                        <div class="col-sm-10">
                                                            <input disabled name="sto" class="form-control" type="text" placeholder="Tulis NIK disini" value="<?= $dp['sto']; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row my-1">
                                                        <label for="inputEmail3" class="col-sm-2 col-form-label">Witel</label>
                                                        <div class="col-sm-10">
                                                            <input disabled name="witel" class="form-control" type="text" placeholder="Tulis NIK disini" value="<?= $dp['witel']; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row my-1">
                                                        <label for="inputEmail3" class="col-sm-2 col-form-label">NIK</label>
                                                        <div class="col-sm-10">
                                                            <input disabled name="nik" class="form-control" type="text" placeholder="Tulis NIK MITRA disini" value="<?= $dp['nik']; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row my-1">
                                                        <label for="inputEmail3" class="col-sm-2 col-form-label">NIK MITRA</label>
                                                        <div class="col-sm-10">
                                                            <input disabled name="nik_ta" class="form-control" type="text" placeholder="Tulis NIK MITRA disini" value="<?= $dp['nik_ta']; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row my-1">
                                                        <label for="inputEmail3" class="col-sm-2 col-form-label">Mitra</label>
                                                        <div class="col-sm-10">
                                                            <input disabled name="mitra" class="form-control" type="text" placeholder="Tulis NIK MITRA disini" value="<?= $dp['mitra']; ?>">
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Tambahkan Appreciation</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">

                                                    <input name="nama" type="hidden" value="<?= $dp['nama']; ?>">
                                                    <input name="nik" type="hidden" value="<?= $dp['nik']; ?>">

                                                    <div class="form-group row">
                                                        <label for="inputEmail3" class="col-sm-4 col-form-label">Level</label>
                                                        <div class="col-sm-8">
                                                            <!-- <input name="loker" class="form-control" type="text" placeholder="Tulis Loker disini"> -->
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

                                                    <!-- <fieldset class="form-group row">
                                                        <legend class="col-form-label col-sm-4 float-sm-left pt-0">Jenis Pelaporan</legend>
                                                        <div class="col-sm-8">
                                                            <?php foreach ($datajenispelaporan as $djp) : ?>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="radio" name="jenis_pelaporan" id="gridRadios1" value="<?= $djp['jenis_pelaporan']; ?>">
                                                                    <label class="form-check-label" for="gridRadios1">
                                                                        <?= $djp['jenis_pelaporan']; ?>
                                                                    </label>
                                                                </div>
                                                            <?php endforeach ?>
                                                        </div>
                                                    </fieldset> -->

                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label">Tanggal/Tahun</label>
                                                        <div class="col-sm-8">
                                                            <!-- <input name="tanggal_pelaporan" class="form-control" type="text" placeholder="Tulis tanggal pelaporan disini"> -->
                                                            <input name="tanggal_appreciate" class="form-control" type="date" value="<?= (old('tanggal_appreciate')) ? old('tanggal_appreciate') : date('Y-m-d'); ?>" max="<?php echo date('Y-m-d'); ?>">
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

                                                    <!-- <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label">Keterangan</label>
                                                        <div class="col-sm-8">
                                                            <textarea name="keterangan" class="form-control <?= ($validation->hasError('keterangan')) ? 'is-invalid' : ''; ?>" placeholder="Tulis keterangan disini" id="exampleFormControlTextarea1" rows="4" value="<?= old('keterangan'); ?>"></textarea>
                                                            <div id="validationServer03Feedback" class="invalid-feedback">
                                                                <?= $validation->getError('keterangan'); ?>
                                                            </div>
                                                        </div>
                                                    </div> -->

                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    <button name="tambahkan" type="submit" class="btn btn-primary">Report!</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>

                            </td>
                        </tr>

                    <?php endforeach; ?>
                </tbody>
            </table>
            <?= $pager->links('datapersonnel', 'datapersonnel_pagination') ?>
            <!-- //tabel dan file pagination-nya -->



        </div>
    </div>
</div>
</div>
</div>
</div>


<?= $this->EndSection(); ?>