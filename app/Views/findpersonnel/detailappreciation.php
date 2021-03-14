<?= $this->extend('layout/template'); ?>
<?= $this->Section('content'); ?>



<div class="container">
    <div class="row">
        <div class="col">
            <h1>Detail Appreciation</h1>

            <?php if (session()->getFlashdata('pesan')) : ?>
                <div class="alert alert-success" role="alert">
                    <?= session()->getFlashdata('pesan'); ?>
                </div>
            <?php endif; ?>

            <a href="/findpersonnel/<?= $datapersonnel['id']; ?>">Kembali</a>

            <?php foreach ($dataappreciation as $dap) :  ?>

                <div class="card mb-3" style="max-width: 100%;">
                    <div class="row no-gutters">

                        <div class="col-md-8">
                            <div class="card-body">

                                <div class="form-group row my-0 py-0">
                                    <label class="col-sm-3 col-form-label font-weight-bold my-0 py-0 font-italic">Level</label>
                                    <div class="col-sm-9 align-self-center my-0 py-0">
                                        <?= $dap['level']; ?>
                                    </div>
                                </div>

                                <div class="form-group row my-0 py-0">
                                    <label class="col-sm-3 col-form-label font-weight-bold my-0 py-0 font-italic">Tahun/Tanggal</label>
                                    <div class="col-sm-9 align-self-center my-0 py-0">
                                        <?= $dap['tanggal_appreciation']; ?>
                                    </div>
                                </div>

                                <div class="form-group row my-0 py-0">
                                    <label class="col-sm-3 col-form-label font-weight-bold my-0 py-0 font-italic">Keterangan</label>
                                    <div class="col-sm-9 align-self-center my-0 py-0">
                                        <?= $dap['keterangan']; ?>
                                    </div>
                                </div>

                                <?php if (session()->getFlashdata('tanda2') == 'showmodal') : ?>
                                    <script>
                                        $(document).ready(function() {
                                            // Show the Modal on load
                                            $("#exampleModal<?= $dap['id']; ?>").modal("show");

                                        });
                                    </script>
                                <?php endif ?>

                                <button type="button" class="btn btn-warning mb-3 mt-3" data-toggle="modal" data-target="#exampleModal<?= $dap['id']; ?>">
                                    Ubah
                                </button>
                                <!-- http method spoofing -->
                                <form action="/appreciation/<?= $dap['id']; ?>" method="post" class="d-inline">
                                    <?= csrf_field(); ?>
                                    <input type="hidden" name="id" value="<?= $datapersonnel['id']; ?>">
                                    <!-- <input type="hidden" name="deletedetailappreciation" value="deletedetailappreciation"> -->
                                    <input type="hidden" name="_method" value="DELETE">
                                    <button type="submit" class="btn btn-danger mb-3 mt-3" onclick="return confirm('apakah anda yakin?');">Hapus</button>
                                </form>
                                <!-- Modal appreciation-->
                                <form action="/findpersonnel/update_appreciation/<?= $dap['id']; ?>" method="post" enctype="multipart/form-data">
                                    <?= csrf_field(); ?>
                                    <input type="hidden" name="id" value="<?= $datapersonnel['id']; ?>">
                                    <input type="hidden" name="nama" value="<?= $datapersonnel['nama']; ?>">
                                    <input type="hidden" name="nik" value="<?= $datapersonnel['nik']; ?>">
                                    <input type="hidden" name="nik_ta" value="<?= $datapersonnel['nik_ta']; ?>">
                                    <div class="modal fade" id="exampleModal<?= $dap['id']; ?>" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Ubah Appreciation</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">

                                                    <div class="form-group row">
                                                        <label for="inputEmail3" class="col-sm-4 col-form-label">Level</label>
                                                        <div class="col-sm-8">
                                                            <!-- <input name="loker" class="form-control" type="text" placeholder="Tulis Loker disini"> -->
                                                            <select name="level" class="custom-select <?= ($validation->hasError('level')) ? 'is-invalid' : ''; ?>">
                                                                <option value="">Pilih level</option>
                                                                <?php foreach ($datalevel as $dlv) : ?>
                                                                    <option <?= ($dlv['level'] == $dap['level']) ? "selected" : ""; ?> value="<?= $dlv['level']; ?>"><?= $dlv['level']; ?></option>
                                                                <?php endforeach; ?>
                                                            </select>
                                                            <div id="validationServer03Feedback" class="invalid-feedback">
                                                                <?= $validation->getError('level'); ?>
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label for="inputEmail3" class="col-sm-4 col-form-label">Tanggal/Tahun</label>
                                                        <div class="col-sm-8">
                                                            <input name="tanggal_appreciation" class="form-control" type="date" placeholder="Tulis tanggal_appreciation disini" max="<?php echo date('Y-m-d'); ?>" value="<?= (old('tanggal_appreciation')) ? old('tanggal_appreciation') : $dap['tanggal_appreciation'];  ?>">
                                                        </div>
                                                    </div>

                                                    <div class=" form-group row">
                                                        <label for="inputEmail3" class="col-sm-4 col-form-label">Keterangan</label>
                                                        <div class="col-sm-8">
                                                            <input name="keterangan" class="form-control <?= ($validation->hasError('keterangan')) ? 'is-invalid' : ''; ?>" type="text" placeholder="Tulis keterangan disini" value="<?= (old('keterangan')) ? old('keterangan') : $dap['keterangan'];  ?>">
                                                            <div id="validationServer03Feedback" class="invalid-feedback">
                                                                <?= $validation->getError('keterangan'); ?>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- <div class=" form-group row">
                                                        <label for="inputEmail3" class="col-sm-4 col-form-label">Keterangan</label>
                                                        <div class="col-sm-8">
                                                            <textarea name="keterangan" class="form-control <?= ($validation->hasError('keterangan')) ? 'is-invalid' : ''; ?>" type="text" placeholder="Tulis keterangan disini" value="<?= (old('keterangan')) ? old('keterangan') : $dap['keterangan'];  ?>"></textarea>
                                                            <div id="validationServer03Feedback" class="invalid-feedback">
                                                                <?= $validation->getError('keterangan'); ?>
                                                            </div>
                                                        </div>
                                                    </div> -->

                                                </div>

                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    <button name="tambahkan" type="submit" class="btn btn-primary">Ubah</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>



        </div>
    </div>
</div>


<?= $this->EndSection(); ?>