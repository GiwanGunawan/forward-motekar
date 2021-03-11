<?= $this->extend('layout/template'); ?>
<?= $this->Section('content'); ?>

<?php if (session()->getFlashdata('tanda2') == 'showmodal') : ?>
    <script>
        $(document).ready(function() {
            // Show the Modal on load
            $("#exampleModal").modal("show");

        });
    </script>
<?php endif ?>


<div class="container">
    <div class="row">
        <div class="col">

            <h1>Appreciation & Blacklist</h1>

        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col">

            <form action="" method="post">
                <?= csrf_field(); ?>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Cari berdasarkan Nama, NIK, atau NIK MITRA" name="keyword" aria-label="Recipient's username" aria-describedby="button-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="submit" id="button-addon2" name="submit">Cari</button>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary mb-3" data-toggle="modal" data-target="#exampleModal">
                + Tambah personnel
            </button>
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
            <!-- Modal -->
            <form action="/findpersonnel/save_personnel" method="post" enctype="multipart/form-data">
                <?= csrf_field(); ?>
                <div class="modal fade" id="exampleModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Tambah Personnel</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">Nama</label>
                                    <div class="col-sm-10">
                                        <input name="nama" class="form-control" type="text" placeholder="Tulis nama disini" value="<?= old('nama'); ?>">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">NIK</label>
                                    <div class="col-sm-10">
                                        <input name="nik" class="form-control <?= ($validation->hasError('nik')) ? 'is-invalid' : ''; ?>" type="text" placeholder="Tulis NIK disini" value="<?= old('nik'); ?>">
                                        <div id="validationServer03Feedback" class="invalid-feedback">
                                            <?= $validation->getError('nik'); ?>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">NIK MITRA</label>
                                    <div class="col-sm-10">
                                        <input name="nik_ta" class="form-control" type="text" placeholder="Tulis NIK MITRA disini" value="<?= old('nik_ta'); ?>">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">Loker</label>
                                    <div class="col-sm-10">
                                        <!-- <input name="loker" class="form-control" type="text" placeholder="Tulis Loker disini"> -->
                                        <select name="loker" class="custom-select">
                                            <option value="">Pilih loker</option>
                                            <?php foreach ($dataloker as $dl) : ?>
                                                <option <?= (old('loker') == $dl['loker'] ? 'selected' : ''); ?> value="<?= $dl['loker']; ?>"><?= $dl['loker']; ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>



                                <div class="form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">Stream</label>
                                    <div class="col-sm-10">
                                        <!-- <input name="stream" class="form-control" type="text" placeholder="Tulis stream disini"> -->
                                        <select name="stream" class="custom-select">
                                            <option value="">Pilih stream</option>
                                            <?php foreach ($datastream as $ds) : ?>
                                                <option <?= (old('stream') == $ds['stream'] ? 'selected' : ''); ?> value="<?= $ds['stream']; ?>"><?= $ds['stream']; ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>



                                <div class="form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">STO</label>
                                    <div class="col-sm-10">
                                        <input name="sto" class="form-control" type="text" placeholder="Tulis STO disini" value="<?= old('sto'); ?>">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">Witel</label>
                                    <div class="col-sm-10">
                                        <!-- <input name="witel" class="form-control" type="text" placeholder="Tulis Witel disini"> -->
                                        <select name="witel" class="custom-select">
                                            <option value="">Pilih witel</option>
                                            <?php foreach ($datawitel as $dw) : ?>
                                                <option <?= (old('witel') == $dw['witel'] ? 'selected' : ''); ?> value="<?= $dw['witel']; ?>"><?= $dw['witel']; ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">Mitra</label>
                                    <div class="col-sm-10">
                                        <input name="mitra" class="form-control" type="text" placeholder="Tulis mitra disini" value="<?= old('mitra'); ?>">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">Alamat</label>
                                    <div class="col-sm-10">
                                        <input name="alamat" class="form-control" type="text" placeholder="Tulis alamat disini" value="<?= old('alamat'); ?>">
                                    </div>
                                </div>

                                <div class="form-group row">
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
                                <button name="tambahkan" type="submit" class="btn btn-primary">Tambahkan</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>


<div class="container">
    <div class="row">
        <div class="col">
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
                    <?php $i = 1 + (100 * ($currentPage - 1)); ?>
                    <?php foreach ($datapersonnel as $dp) :  ?>

                        <tr>
                            <td scope="row"><?= $i++; ?></td>
                            <td><?= $dp['nama']; ?></td>
                            <td><?= $dp['nik']; ?></td>
                            <td><?= $dp['nik_ta']; ?></td>
                            <td><a href="/findpersonnel/<?= $dp['id']; ?>" class="btn btn-success">Detail</a></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <?= $pager->links('datapersonnel', 'datapersonnel_pagination') ?>
            <!-- //tabel dan file pagination-nya -->
        </div>
    </div>
</div>





<?= $this->EndSection(); ?>