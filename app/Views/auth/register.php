<?= $this->extend('auth/templates/auth_template'); ?>

<?= $this->section('authContent'); ?>
<main>
    <div class="container">

        <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-5 col-md-6 d-flex flex-column align-items-center justify-content-center">

                        <div class="card mb-3">

                            <div class="card-body">

                                <div class="pt-4 pb-2">
                                    <h5 class="card-title text-center pb-0 fs-4"><?= lang('Auth.register') ?></h5>
                                    <p class="text-center small">Enter your personal details to create account</p>
                                </div>

                                <?= view('Myth\Auth\Views\_message_block') ?>

                                <form action="<?= route_to('register') ?>" method="post" class="row g-3">
                                    <?= csrf_field() ?>
                                    <div class="col-12">
                                        <label for="fullname" class="form-label">Account Name</label>
                                        <input type="text" name="fullname" class="form-control" id="fullname" value="<?= old('fullname'); ?>">
                                    </div>

                                    <div class="col-12">
                                        <label for="email" class="form-label"><?= lang('Auth.email') ?></label>
                                        <input type="email" name="email" class="form-control <?php if (session('errors.email')) : ?>is-invalid<?php endif ?>"
                                            id="email" value="<?= old('email') ?>">
                                    </div>

                                    <div class="col-12">
                                        <label for="username" class="form-label">Username</label>
                                        <div class="input-group has-validation">
                                            <span class="input-group-text" id="inputGroupPrepend">@</span>
                                            <input type="text" name="username" class="form-control <?php if (session('errors.username')) : ?>is-invalid<?php endif ?>"
                                                id="username" value="<?= old('username') ?>">
                                        </div>
                                    </div>


                                    <div class="col-6">
                                        <label for="password" class="form-label">Password</label>
                                        <input type="password" name="password" class="form-control <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>"
                                            id="password" autocomplete="off">
                                    </div>

                                    <div class="col-6">
                                        <label for="pass_confirm" class="form-label">Confirm password</label>
                                        <input type="password" name="pass_confirm" class="form-control <?php if (session('errors.pass_confirm')) : ?>is-invalid<?php endif ?>"
                                            id="pass_confirm" autocomplete="off">
                                    </div>

                                    <div class="col-12">
                                        <button type="submit" class="btn btn-primary w-100" type="submit">Create Account</button>
                                    </div>
                                    <div class="col-12">
                                        <p class="small mb-0">Already have an account? <a href="<?= route_to('login') ?>">Log in</a></p>
                                    </div>
                                </form>

                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </section>

    </div>
</main><!-- End #main -->
<?= $this->endSection(); ?>