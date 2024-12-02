<?= $this->extend('auth/templates/auth_template'); ?>

<?= $this->section('authContent'); ?>
<main>
    <div class="container">

        <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                        <div class="card mb-3">

                            <div class="card-body">

                                <div class="pt-4 pb-2">
                                    <h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
                                </div>
                                <?= view('Myth\Auth\Views\_message_block') ?>

                                <form action="<?= route_to('login'); ?>" class="row g-3 needs-validation" method="post">
                                    <?= csrf_field(); ?>

                                    <?php if ($config->validFields === ['email']): ?>
                                        <div class="col-12">
                                            <label for="login" class="form-label">Email</label>
                                            <div class="input-group has-validation">
                                                <span class="input-group-text" id="inputGroupPrepend">@</span>
                                                <input type="text" name="login" class="form-control <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>"
                                                    id="login" autofocus>
                                                <div class="invalid-feedback">
                                                    <?= session('errors.login') ?>
                                                </div>
                                            </div>
                                        </div>

                                    <?php else: ?>
                                        <div class="col-12">
                                            <label for="login" class="form-label">Email or Username</label>
                                            <div class="input-group has-validation">
                                                <span class="input-group-text" id="inputGroupPrepend">@</span>
                                                <input type="text" name="login" class="form-control <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>"
                                                    id="login" autofocus>
                                                <div class="invalid-feedback">
                                                    <?= session('errors.login') ?>
                                                </div>
                                            </div>
                                        </div>

                                    <?php endif; ?>

                                    <div class="col-12">
                                        <label for="password" class="form-label">Password</label>
                                        <input type="password" name="password" class="form-control <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" id="password">
                                        <div class="invalid-feedback">
                                            <?= session('errors.password') ?>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <button type="submit" class="btn btn-primary w-100" type="submit">Login</button>
                                    </div>
                                    <?php if ($config->allowRegistration): ?>
                                        <div class="col-12">
                                            <p class="small mb-0">Don't have account? <a href="<?= route_to('register') ?>">Create an account</a></p>
                                        </div>
                                    <?php endif; ?>
                                </form>

                            </div>
                        </div>

                    </div>
                </div>
                <div class="container">
                <div class="row mt-3 align-items-center flex-column d-flex justify-content-center">
                    <div class="col-lg-4 justify-content-center">
                        <a href="/jakselapp" class="btn btn-success" target="_blank">Jaksel Apps <i class="bi bi-arrow-right"></i></a>
                    </div>
                </div>
                </div>
            </div>

        </section>

    </div>
</main><!-- End #main -->
<?= $this->endSection(); ?>