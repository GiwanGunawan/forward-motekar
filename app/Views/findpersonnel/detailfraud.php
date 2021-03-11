<?= $this->extend('layout/template'); ?>
<?= $this->Section('content'); ?>




<div class="container">
    <div class="row">
        <div class="col">
            <h1>Detail Report</h1>

            <?php if (session()->getFlashdata('pesan')) : ?>
                <div class="alert alert-success" role="alert">
                    <?= session()->getFlashdata('pesan'); ?>
                </div>
            <?php endif; ?>

            <a href="/findpersonnel/<?= $datapersonnel['id']; ?>">Kembali</a>

            <?php foreach ($datafraud as $df) :  ?>
                <div class="card mb-3" style="max-width: 100%;">
                    <div class="row no-gutters">
                        <div class="col-md-4 text-center align-self-center">
                            <img class="gambarcard" src="/img/fotofraud/<?= $df['upload_gambar']; ?>" alt="...">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title"><?= $df['jenis_pelaporan']; ?></h5>

                                <div class="form-group row my-0 py-0">
                                    <label class="col-sm-3 col-form-label font-weight-bold my-0 py-0 font-italic">Label ODP</label>
                                    <div class="col-sm-9 align-self-center my-0 py-0">
                                        <?= $df['label_odp']; ?>
                                    </div>
                                </div>

                                <div class="form-group row my-0 py-0">
                                    <label class="col-sm-3 col-form-label font-weight-bold my-0 py-0 font-italic">Pelapor</label>
                                    <div class="col-sm-9 align-self-center my-0 py-0">
                                        <?= $df['pelapor']; ?>
                                    </div>
                                </div>

                                <div class="form-group row my-0 py-0">
                                    <label class="col-sm-3 col-form-label font-weight-bold my-0 py-0 font-italic">Tanggal Laporan</label>
                                    <div class="col-sm-9 align-self-center my-0 py-0">
                                        <?= $df['tanggal_pelaporan']; ?>
                                    </div>
                                </div>

                                <div class="form-group row my-0 py-0">
                                    <label class="col-sm-3 col-form-label font-weight-bold my-0 py-0 font-italic">Evident Fraud</label>
                                    <div class="col-sm-9 align-self-center my-0 py-0">
                                        <?= $df['evident_fraud']; ?>
                                    </div>
                                </div>

                                <div class="form-group row my-0 py-0">
                                    <label class="col-sm-3 col-form-label font-weight-bold my-0 py-0 font-italic">Keterangan</label>
                                    <div class="col-sm-9 align-self-center my-0 py-0">
                                        <?= $df['keterangan']; ?>
                                    </div>
                                </div>

                                <?php if (session()->getFlashdata('tanda2') == 'showmodal') : ?>
                                    <script>
                                        $(document).ready(function() {
                                            // Show the Modal on load
                                            $("#exampleModal<?= $df['id']; ?>").modal("show");

                                        });
                                    </script>
                                <?php endif ?>

                                <button type="button" class="btn btn-warning mb-3 mt-3" data-toggle="modal" data-target="#exampleModal<?= $df['id']; ?>">
                                    Ubah
                                </button>
                                <!-- http method spoofing -->
                                <form action="/report/<?= $df['id']; ?>" method="post" class="d-inline">
                                    <?= csrf_field(); ?>
                                    <input type="hidden" name="id" value="<?= $datapersonnel['id']; ?>">
                                    <!-- <input type="hidden" name="deletedetailfraud" value="deletedetailfraud"> -->
                                    <input type="hidden" name="_method" value="DELETE">
                                    <button type="submit" class="btn btn-danger mb-3 mt-3" onclick="return confirm('apakah anda yakin?');">Hapus</button>
                                </form>
                                <!-- Modal -->
                                <form action="/findpersonnel/update_report/<?= $df['id']; ?>" method="post" enctype="multipart/form-data">
                                    <?= csrf_field(); ?>
                                    <input type="hidden" name="gambar_eksis" value="<?= $df['upload_gambar']; ?>">
                                    <input type="hidden" name="id" value="<?= $datapersonnel['id']; ?>">
                                    <div class="modal fade" id="exampleModal<?= $df['id']; ?>" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Ubah Report</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">

                                                    <!-- <fieldset class="form-group row">
                                                        <legend class="col-form-label col-sm-4 float-sm-left pt-0">Jenis Pelaporan</legend>
                                                        <div class="col-sm-8">
                                                            <?php foreach ($datajenispelaporan as $djp) : ?>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="radio" name="jenis_pelaporan" id="gridRadios1" value="<?= $djp['jenis_pelaporan']; ?>" <?= ($djp['jenis_pelaporan'] == $df['jenis_pelaporan']) ? "checked" : "unchecked"; ?>>
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
                                                            <select name="jenis_pelaporan" class="custom-select <?= ($validation->hasError('jenis_pelaporan')) ? 'is-invalid' : ''; ?>">
                                                                <option value="">Pilih jenis pelaporan</option>
                                                                <?php foreach ($datajenispelaporan as $djp) : ?>
                                                                    <option <?= ($djp['jenis_pelaporan'] == $df['jenis_pelaporan']) ? "selected" : ""; ?> value="<?= $djp['jenis_pelaporan']; ?>"><?= $djp['jenis_pelaporan']; ?></option>
                                                                <?php endforeach; ?>
                                                            </select>
                                                            <div id="validationServer03Feedback" class="invalid-feedback">
                                                                <?= $validation->getError('jenis_pelaporan'); ?>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label for="inputEmail3" class="col-sm-4 col-form-label">Label ODP</label>
                                                        <div class="col-sm-8">
                                                            <input name="label_odp" class="form-control" type="text" placeholder="Tulis label_odp disini" value="<?= (old('label_odp')) ? old('label_odp') : $df['label_odp'];  ?>">
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label for="inputEmail3" class="col-sm-4 col-form-label">Pelapor</label>
                                                        <div class="col-sm-8">
                                                            <input name="pelapor" class="form-control" type="text" placeholder="Tulis pelapor disini" value="<?= (old('pelapor')) ? old('pelapor') : $df['pelapor'];  ?>">
                                                        </div>
                                                    </div>

                                                    <div class=" form-group row">
                                                        <label for="inputEmail3" class="col-sm-4 col-form-label">Tanggal pelaporan</label>
                                                        <div class="col-sm-8">
                                                            <input name="tanggal_pelaporan" class="form-control" type="date" placeholder="Tulis tanggal pelaporan disini" max="<?php echo date('Y-m-d'); ?>" value="<?= (old('tanggal_pelaporan')) ? old('tanggal_pelaporan') : $df['tanggal_pelaporan'];  ?>">
                                                        </div>
                                                    </div>

                                                    <div class=" form-group row">
                                                        <label for="inputEmail3" class="col-sm-4 col-form-label">Evident Fraud</label>
                                                        <div class="col-sm-8">
                                                            <input name="evident_fraud" class="form-control" type="text" placeholder="Tulis evident fraud disini" value="<?= (old('evident_fraud')) ? old('evident_fraud') : $df['evident_fraud'];  ?>">
                                                        </div>
                                                    </div>
                                                    <div class=" form-group row">
                                                        <label for="inputEmail3" class="col-sm-4 col-form-label">Keterangan</label>
                                                        <div class="col-sm-8">
                                                            <input name="keterangan" class="form-control" type="text" placeholder="Tulis keterangan disini" value="<?= (old('keterangan')) ? old('keterangan') : $df['keterangan'];  ?>">
                                                        </div>
                                                    </div>

                                                    <div class=" form-group row">
                                                        <label for="inputEmail3" class="col-sm-4 col-form-label">Upload Foto</label>
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