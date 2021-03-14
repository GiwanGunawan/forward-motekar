<?php
header("Content-type: aplication/vnd-ms-excel");
header("Content-Disposition: attachment; filename= sumappreciation.xls ");
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
                <th scope="col">Qty Appreciation</th>

            </tr>
        </thead>
        <tbody>
            <?php $i = 1; ?>
            <?php foreach ($dataappreciation as $dap) :  ?>
                <tr>
                    <td scope="row"><?= $i++; ?></td>
                    <td><?= $dap['nama']; ?></td>
                    <td>"<?= $dap['nik']; ?>"</td>
                    <td><?= $dap['nik_ta']; ?></td>
                    <td><?= $dap['count']; ?></td>

                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>

</html>