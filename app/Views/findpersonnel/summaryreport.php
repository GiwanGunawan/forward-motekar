<?= $this->extend('layout/template'); ?>
<?= $this->Section('content'); ?>

<div class="container mb-3">
    <div class="row">
        <div class="col">
            <a href="/findpersonnel">Kembali</a>
        </div>
    </div>
</div>

<div class="container mb-3">
    <div class="row">
        <div class="col">
            <h5><strong>Summary Report/Blacklist</strong></h5>
        </div>
    </div>
</div>

<div class="container mb-3">
    <div class="row">
        <div class="col">
            <a href="/rawreport">Raw data blacklist</a>
        </div>
    </div>
</div>

<div class="container mb-3">
    <div class="row">
        <div class="col">
            <a href="/excelsumreport" class="btn btn-info mb-3">donwload excel</a>
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
                        <th scope="col">Jumlah Blacklist</th>
                        <th scope="col">Aksi</th>
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
                            <td><?= $df['count']; ?></td>
                            <td><a href="/findpersonnel/<?= $df['id_personnel']; ?>" class="btn btn-success">Detail</a></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>

        </div>
    </div>
</div>


<?= $this->EndSection(); ?>