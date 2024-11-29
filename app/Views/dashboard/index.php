<?= $this->extend('layout/dashboard_template'); ?>

<?= $this->section('dashboardContent'); ?>

<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        <li class="nav-item">
            <a class="nav-link" href="#">
                <i class="ri ri-home-4-line"></i>
                <span>Home</span>
            </a>
        </li>
        <!-- End Dashboard Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-layout-text-window-reverse"></i><span>Daftar Tabel</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="tables-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/dashboard/apptabel">
                        <i class="bi bi-circle"></i><span>Aplikasi</span>
                    </a>
                </li>
                <li>
                    <a href="/dashboard/instansitabel">
                        <i class="bi bi-circle"></i><span>Instansi</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- End Tables Nav -->
    </ul>
</aside>
<!-- End Sidebar-->

<main id="main" class="main">
    <div class="pagetitle">
        <h1>Home</h1>
    </div>
    <!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">
            <div class="col-lg-6">
                <div class="row">

                    <div class="col-xxl-4 col-md-6">
                        <div class="card info-card sales-card">
                            <div class="card-body">
                                <h5 class="card-title">Instansi</h5>

                                <div class="d-flex align-items-center">
                                    <div
                                        class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bx bxs-business"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6><?= $totalInstansi; ?></h6>
                                        <span class="text-success small pt-1 fw-bold">Total</span><span class="text-muted small pt-2 ps-1">instansi</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xxl-4 col-md-6">
                        <div class="card info-card revenue-card">

                            <div class="card-body">
                                <h5 class="card-title">Aplikasi</h5>

                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi bi-app-indicator"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6><?= $totalAplikasi; ?></h6>
                                        <span class="text-success small pt-1 fw-bold">Total</span><span class="text-muted small pt-2 ps-1">Aplikasi</span>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div><!-- End Revenue Card -->

                </div>
            </div>

        </div>
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Default Card</h5>
                    Ut in ea error laudantium quas omnis officia. Sit sed praesentium voluptas. Corrupti inventore consequatur nisi necessitatibus modi consequuntur soluta id. Enim autem est esse natus assumenda. Non sunt dignissimos officiis expedita. Consequatur sint repellendus voluptas.
                    Quidem sit est nulla ullam. Suscipit debitis ullam iusto dolorem animi dolorem numquam. Enim fuga ipsum dolor nulla quia ut.
                    Rerum dolor voluptatem et deleniti libero totam numquam nobis distinctio. Sit sint aut. Consequatur rerum in.
                </div>
            </div>
        </div>
    </section>
</main>
<!-- End #main -->

<?= $this->endSection('dashboardContent'); ?>