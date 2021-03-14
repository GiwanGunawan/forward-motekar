<?= $this->extend('layout/template'); ?>
<?= $this->Section('content'); ?>

<div class="container mb-3">
    <div class="row">
        <div class="col">
            <a href="/summaryappreciation">Kembali</a>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col">
            <strong>Raw Appreciation</strong>
        </div>
    </div>
</div>

<div class="container mb-3">
    <div class="row">
        <div class="col">
            <a href="/excelrawappreciation" class="btn btn-info mb-3">donwload excel</a>
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
                        <th scope="col">level</th>
                        <th scope="col">Tanggal Appreciation</th>
                        <th scope="col">Keterangan</th>
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
                            <td><?= $dap['level']; ?></td>
                            <td><?= $dap['tanggal_appreciation']; ?></td>
                            <td><?= $dap['keterangan']; ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>

        </div>
    </div>
</div>


<?= $this->EndSection(); ?>