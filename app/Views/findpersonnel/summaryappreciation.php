<?= $this->extend('layout/template'); ?>
<?= $this->Section('content'); ?>

<div class="container mb-3">
    <div class="row">
        <div class="col">
            <a href="/findpersonnel">Kembali</a>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col">
            <h5><strong>Summary Appreciation</strong></h5>
        </div>
    </div>
</div>

<div class="container mb-3">
    <div class="row">
        <div class="col">
            <a href="/rawappreciation">Raw data appreciation</a>
        </div>
    </div>
</div>

<div class="container mb-3">
    <div class="row">
        <div class="col">
            <a href="/excelsumappreciation" class="btn btn-info mb-3">donwload excel</a>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Nama</th>
                        <th scope="col">NIK</th>
                        <th scope="col">NIK MITRA</th>
                        <th scope="col">Qty Appreciation</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($dataappreciation as $dap) :  ?>
                        <tr>
                            <td scope="row"><?= $i++; ?></td>
                            <td><?= $dap['nama']; ?></td>
                            <td><?= $dap['nik']; ?></td>
                            <td><?= $dap['nik_ta']; ?></td>
                            <td><?= $dap['count']; ?></td>
                            <td><a href="/findpersonnel/<?= $dap['id_personnel']; ?>" class="btn btn-success">Detail</a></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>

        </div>
    </div>
</div>


<?= $this->EndSection(); ?>