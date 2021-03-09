<?= $this->extend('layout/template'); ?>
<?= $this->Section('content'); ?>

<script>
    $(document).ready(function() {
        // Show the Modal on load
        $("#exampleModal").modal("show");

    });
</script>

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
    Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>


HELLO WORLD

<form action="/coba/save" method="post" enctype="multipart/form-data">
    <?= csrf_field(); ?>

    <div class="form-group row">
        <label for="inputEmail3" class="col-sm-2 col-form-label">Nama</label>
        <div class="col-sm-10">
            <input name="nama" class="form-control <?= ($validation->hasError('nama')) ? 'is-invalid' : ''; ?>" type="text" placeholder="Tulis nama disini">
            <div id="validationServer03Feedback" class="invalid-feedback">
                <?= $validation->getError('nama'); ?>
            </div>
        </div>
    </div>
    <div class="form-group row">
        <label for="inputEmail3" class="col-sm-2 col-form-label">NIK</label>
        <div class="col-sm-10">
            <input name="nik" class="form-control" type="text" placeholder="Tulis NIK disini">
        </div>
    </div>

    <div class="form-group row">
        <label for="inputEmail3" class="col-sm-2 col-form-label">NIK TA</label>
        <div class="col-sm-10">
            <input name="nik_ta" class="form-control" type="text" placeholder="Tulis NIK TA disini">
        </div>
    </div>

    <div class="form-group row">
        <label for="inputEmail3" class="col-sm-2 col-form-label">Loker</label>
        <div class="col-sm-10">
            <!-- <input name="loker" class="form-control" type="text" placeholder="Tulis Loker disini"> -->
            <select name="loker" class="custom-select">
                <option value="">Pilih loker</option>
                <?php foreach ($dataloker as $dl) : ?>
                    <option value="<?= $dl['loker']; ?>"><?= $dl['loker']; ?></option>
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
                    <option value="<?= $ds['stream']; ?>"><?= $ds['stream']; ?></option>
                <?php endforeach; ?>
            </select>
        </div>
    </div>



    <div class="form-group row">
        <label for="inputEmail3" class="col-sm-2 col-form-label">STO</label>
        <div class="col-sm-10">
            <input name="sto" class="form-control" type="text" placeholder="Tulis STO disini">
        </div>
    </div>
    <div class="form-group row">
        <label for="inputEmail3" class="col-sm-2 col-form-label">Witel</label>
        <div class="col-sm-10">
            <!-- <input name="witel" class="form-control" type="text" placeholder="Tulis Witel disini"> -->
            <select name="witel" class="custom-select">
                <option value="">Pilih witel</option>
                <?php foreach ($datawitel as $dw) : ?>
                    <option value="<?= $dw['witel']; ?>"><?= $dw['witel']; ?></option>
                <?php endforeach; ?>
            </select>
        </div>
    </div>
    <div class="form-group row">
        <label for="inputEmail3" class="col-sm-2 col-form-label">Mitra</label>
        <div class="col-sm-10">
            <input name="mitra" class="form-control" type="text" placeholder="Tulis mitra disini">
        </div>
    </div>
    <div class="form-group row">
        <label for="inputEmail3" class="col-sm-2 col-form-label">Alamat</label>
        <div class="col-sm-10">
            <input name="alamat" class="form-control" type="text" placeholder="Tulis alamat disini">
        </div>
    </div>

    <div class="form-group row">
        <label for="inputEmail3" class="col-sm-2 col-form-label">Upload Foto</label>
        <div class="col-sm-10">
            <div class="form-group">
                <input name="upload_gambar" type="file" class="form-control-file" id="exampleFormControlFile1">
            </div>
        </div>
    </div>

    <button name="tambahkan" type="submit" class="btn btn-primary">Tambahkan</button>


    </div>
</form>




<?= $this->EndSection(); ?>