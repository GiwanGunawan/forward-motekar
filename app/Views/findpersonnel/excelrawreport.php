<?php
header("Content-type: aplication/vnd-ms-excel");
header("Content-Disposition: attachment; filename= rawreport.xls ");
?>

<!DOCTYPE html>
<html lang="en">

<body>
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
                    <td>"<?= $df['nik']; ?>"</td>
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
</body>

</html>