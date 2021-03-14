<?= $this->extend('layout/template'); ?>
<?= $this->Section('content'); ?>

<div class="container mb-3">
    <div class="row">
        <div class="col">
            <a href="/summaryreport">Kembali</a>
        </div>
    </div>
</div>

<div class="container mb-3">
    <div class="row">
        <div class="col">
            <h5><strong>Raw Report/Blacklist</strong></h5>
        </div>
    </div>
</div>

<div class="container mb-3">
    <div class="row">
        <div class="col">
            <a href="/excelrawreport" class="btn btn-info mb-3">donwload excel</a>
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
                        <th scope="col">Jenis Pelaporan</th>
                        <th scope="col">Label ODP</th>
                        <th scope="col">Pelapor</th>
                        <th scope="col">Tanggal Pelaporan</th>
                        <th scope="col">Evident Laporan</th>
                        <th scope="col">Keterangan</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($datafraud as $df) :  ?>
                        <tr>
                            <td scope="row"><?= $i++; ?></td>
                            <td><?= $df['nama']; ?></td>
                            <td><?= $df['nik']; ?></td>
                            <td><?= $df['nik_ta']; ?></td>
                            <td><?= $df['jenis_pelaporan']; ?></td>
                            <td><?= $df['label_odp']; ?></td>
                            <td><?= $df['pelapor']; ?></td>
                            <td><?= $df['tanggal_pelaporan']; ?></td>
                            <td><?= $df['evident_fraud']; ?></td>
                            <td><?= $df['keterangan']; ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>

        </div>
    </div>
</div>


<?= $this->EndSection(); ?>