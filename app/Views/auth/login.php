<?php $this->layout(config('view.layout')); ?>
<?php $this->start('page'); ?>


<div class="account-login" style="background-color: #ABD9FF;">
    <div class="container container-fluid p-3 mt-5">
        <div class="row">
            <div class="card bg-whiteborder-0 shadow rounded-3 my-5">
                <div class="card-body p-4 p-sm-5">
                    <form class="login-form" method="post" action="/login">

                        <h3>Login Now</h3>
                        <div class="form-floating mb-3">
                            <input type="username" name="username" value="<?= $params['username'] ?? null ?>" class="form-control <?= isset($errors['username']) ? ' is-invalid' : ''  ?>" id="username" placeholder="Your username" required>
                            <label for="username">Username</label>
                            <div class="invalid-feedback">
                                <?= $errors['username'] ?? null; ?>
                            </div>
                        </div>
                        <div class="form-floating">
                            <input type="password" name="password" class="form-control <?= isset($errors['password']) ? ' is-invalid' : ''  ?>" id="password" placeholder="Password" required>
                            <label for="password">Password</label>
                            <div class="invalid-feedback">
                                <?= $errors['password'] ?? null ?>
                            </div>
                        </div>
                        <div class="d-flex flex-wrap justify-content-between  bottom-content">
                            <div class="form-check">
                                <input type="checkbox" name="remember_me" value="remember_password" class="form-check-input width-auto" id="remember_me" />
                                <label class="form-check-label" for="remember_me">Remember me</label>
                            </div>
                            <a class="lost-pass" href="account-password-recovery.html">Forgot password?</a>
                        </div>
                        <div class="d-grid">
                            <button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit">Login</button>
                        </div>
                        <p class="outer-link">
                            Don't have an account?
                            <a href="/register">Register here </a>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<?php $this->stop(); ?>