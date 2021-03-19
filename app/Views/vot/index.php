<?= $this->extend('layout/template'); ?>
<?= $this->Section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col">

            <?php foreach ($TbConversationModel as $tbcvn) :  ?>
                <?php
                $json_tbcvn = json_decode($tbcvn['notes'], true);
                ?>
                <div class="card mb-3" style="max-width: 100%;">
                    <div class="row no-gutters">

                        <div class="col-md-8">
                            <div class="card-body">

                                <div class="form-group row my-0 py-0">
                                    <label class="col-sm-3 col-form-label font-weight-bold my-0 py-0 font-italic">Tanggal</label>
                                    <div class="col-sm-9 align-self-center my-0 py-0">
                                        <?= $tbcvn['created_at']; ?>
                                    </div>
                                </div>

                                <div class="form-group row my-0 py-0">
                                    <label class="col-sm-3 col-form-label font-weight-bold my-0 py-0 font-italic">Kepada</label>
                                    <div class="col-sm-9 align-self-center my-0 py-0">
                                        <?= $json_tbcvn['kepada']; ?>
                                    </div>
                                </div>

                                <div class="form-group row my-0 py-0">
                                    <label class="col-sm-3 col-form-label font-weight-bold my-0 py-0 font-italic">Masukan</label>
                                    <div class="col-sm-9 align-self-center my-0 py-0">
                                        <?= $json_tbcvn['masukan']; ?>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>

        </div>
    </div>
</div>



<?= $this->EndSection(); ?>