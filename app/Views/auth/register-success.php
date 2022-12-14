<?php $this->layout(config('view.layout')) ?>

<?php $this->start('page') ?>
<div style="background-color: #ABD9FF;">
    <div class="container container-fluid p-3 mt-5">
        <div class="row">
            <div class="card-body p-4 p-sm-5">
                <div class="card bg-whiteborder-0 shadow rounded-3 my-5">
                    <div class="card-body p-4 p-sm-5">
                        <h2>Your Account created successfully!</h2>
                        <p>Thanks for joining with us, please <a href="/login">Login</a> to your account now.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $this->stop(); ?>