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
            <strong>Summary Report</strong>
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
                        <th scope="col">Qty Report</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td scope="row"></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><a href="/findpersonnel/" class="btn btn-success">Detail</a></td>
                    </tr>

                </tbody>
            </table>

        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col">
            <strong>Summary Appreciation</strong>
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
                        <th scope="col">Qty Appreciation</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td scope="row"></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><a href="/findpersonnel/" class="btn btn-success">Detail</a></td>
                    </tr>

                </tbody>
            </table>

        </div>
    </div>
</div>



<?= $this->EndSection(); ?>