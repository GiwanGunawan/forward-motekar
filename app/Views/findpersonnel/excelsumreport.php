<?php
header("Content-type: aplication/vnd-ms-excel");
header("Content-Disposition: attachment; filename= sumreport.xls ");
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
                <th scope="col">Jumlah Blacklist</th>

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
                    <td><?= $df['count']; ?></td>

                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>

</html>