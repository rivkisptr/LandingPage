<?= $this->extend('layout/dashboard_template') ; ?>

<?= $this->section('dashboardContent'); ?>

<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        <li class="nav-item">
            <a class="nav-link collapsed" href="/dashboard">
                <i class="ri ri-home-4-line"></i>
                <span>Home</span>
            </a>
        </li>
        <!-- End Dashboard Nav -->

        <li class="nav-item">
            <a class="nav-link collapse" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-layout-text-window-reverse"></i><span>Daftar Tabel</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="tables-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/dashboard/apptabel">
                        <i class="bi bi-circle"></i><span>Aplikasi</span>
                    </a>
                </li>
                <li>
                    <a href="/dashboard/instansitabel" class="active">
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
        <h1>Tambah Instansi</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/dashboard">Home</a></li>
                <li class="breadcrumb-item">Daftar Tabel</li>
                <li class="breadcrumb-item"><a href="/dashboard/instansitabel">Instansi</a></li>
                <li class="breadcrumb-item active">Create Instansi</li>
            </ol>
        </nav>
    </div>
    <!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">
            <div class="col-12">
                <!-- CONTENT -->
            </div>
        </div>
    </section>

</main>

<?= $this->endSection('dashboardContent'); ?>