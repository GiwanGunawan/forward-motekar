<?= $this->extend('layout/template'); ?>
<?= $this->Section('content'); ?>



<div class="container">
    <div class="row">
        <div class="col">
            <h5 class="mt-3 alert alert-secondary">History Assessment Kompetensi Teknis</h5>
            <a href="/findpersonnel/<?= $datapersonnel['id']; ?>">Kembali</a>
        </div>
    </div>
</div>



<?php if ($tb_assessmentmodal != null) : ?>
    <div class="container">
        <div class="row">
            <div class="col">
                <?php $i = 1 ?>
                <?php foreach ($tb_assessmentmodal as $tb_assessment) : ?>
                    <div class="card mb-5">
                        <h5 class="card-header">
                            History Assessment - <?= $i++; ?>
                        </h5>
                        <div class="container ">
                            <p>Tanggal Assessment : <?= $tb_assessment['tanggal_assessment']; ?></p>
                            <p>Total perolehan score : <?= $tb_assessment['sumall']; ?></p>
                            <p>Hasil Kelulusan : <?= $tb_assessment['hasil']; ?></p>
                            <p>Detail Assessment :</p>
                        </div>

                        <div class="container">
                            <div class="col">
                                <div class="row">


                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">Item</th>
                                                <th scope="col">Score</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="css3">
                                                <td> Test Standard Pemasangan</td>
                                                <td><?= $tb_assessment['sumtsp']; ?></td>
                                            </tr>
                                            <tr>
                                                <td>Pemasangan S-Klem <span class="badge badge-secondary">(score: <?= $tb_assessment['tsp1']; ?>)</span></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>Pemasangan DC ke OTP <span class="badge badge-secondary">(score: <?= $tb_assessment['tsp2']; ?>)</span></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>Pemasangan DC ke ODC <span class="badge badge-secondary">(score: <?= $tb_assessment['tsp3']; ?>)</span></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr class="css3">
                                                <td>Test Pembuatan SOC</td>
                                                <td><?= $tb_assessment['tpsoc']; ?></td>
                                            </tr>
                                            <tr>
                                                <td>Jumlah SOC yang benar (sisa 1) <span class="badge badge-secondary"><?= ($tb_assessment['tpsoc'] == 15) ? "(score: " . $tb_assessment['tpsoc'] . ")" : null ?></span></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>Jumlah SOC yang benar (sisa 0) <span class="badge badge-secondary"><?= ($tb_assessment['tpsoc'] == 10) ? "(score: " . $tb_assessment['tpsoc'] . ")" : null ?></span></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>Gagal atau perlu tambahan <span class="badge badge-secondary"><?= ($tb_assessment['tpsoc'] == 0) ? "(score: " . $tb_assessment['tpsoc'] . ")" : null ?></span></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td> </td>
                                                <td> </td>
                                            </tr>
                                            <tr class="css3">
                                                <td>Test Redaman</td>
                                                <td><?= $tb_assessment['tred']; ?></td>
                                            </tr>
                                            <tr>
                                                <td>Hasil redaman yang didapat = <span class="badge badge-secondary"><?= $tb_assessment['hasiltred']; ?> dB</span></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>Redaman SOC < 0.7 dB <span class="badge badge-secondary"><?= ($tb_assessment['tred'] == 55) ? "(score: " . $tb_assessment['tred'] . ")" : "" ?></span></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>Redaman SOC 0.7 - 0.9 dB <span class="badge badge-secondary"><?= ($tb_assessment['tred'] == 35) ? "(score: " . $tb_assessment['tred'] . ")" : "" ?></span></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>Redaman SOC > 0.7 dB <span class="badge badge-secondary"><?= ($tb_assessment['tred'] == 20) ? "(score: " . $tb_assessment['tred'] . ")" : "" ?></span></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>LOS <span class="badge badge-secondary"><?= ($tb_assessment['tred'] == 0) ? "(score: " . $tb_assessment['tred'] . ")" : "" ?></span></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr class="css3">
                                                <td>Test Kebersihan dan K3</td>
                                                <td><?= $tb_assessment['sumtkk']; ?></td>
                                            </tr>
                                            <tr>
                                                <td>Sisa potongan DC atau Core <span class="badge badge-secondary">(score: <?= $tb_assessment['tkk1']; ?>)</span></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>Pemakaian APD <span class="badge badge-secondary">(score: <?= $tb_assessment['tkk2']; ?>)</span></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>Kerapihan dan kebersihan peralatan setelah praktik <span class="badge badge-secondary">(score: <?= $tb_assessment['tkk3']; ?>)</span></td>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
<?php else : ?>
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            Tidak ada record
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php endif; ?>

<?= $this->EndSection(); ?>