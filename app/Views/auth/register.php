<?php $this->layout(config('view.layout')) ?>

<?php $this->start('page') ?>
<div class="account-login" style="background-color: #ABD9FF;">
    <div class="container container-fluid p-3 mt-5">
        <div class="row">
            <div class="card bg-whiteborder-0 shadow rounded-3 my-5">
                <div class="card-body p-4 p-sm-5">
                    <div class="register-form">
                        <?php if (isset($errors['failed'])) : ?>
                            <div class="row">
                                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                    <?= $errors['failed']; ?>
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                            </div>
                        <?php endif; ?>
                        <?php $this->insert('auth/register-form', ['errors' => $errors ?? [], 'params' => $params ?? []]) ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php $this->stop(); ?>