<?php $this->layout(config('view.layout')); ?>

<?php $this->start('page') ?>

<div style="background-color: #ABD9FF;">
    <div class="container container-fluid p-3 mt-5">
        <div class="row">
            <div class="card-body p-4 p-sm-5">
                <div class="error-content">
                    <h1>404</h1>
                    <h2>Oops! Page Not Found!</h2>
                    <p>The page you are looking for does not exist. It might have been moved or deleted.</p>
                </div>
            </div>
        </div>
    </div>
</div>


<?php $this->stop() ?>