<?= $this->extend('layout/dashboard_template'); ?>

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
                    <a href="/dashboard/apptabel" class="active">
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
        <h1>Tambah Aplikasi</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/dashboard">Home</a></li>
                <li class="breadcrumb-item">Daftar Tabel</li>
                <li class="breadcrumb-item"><a href="/dashboard/apptabel">Aplikasi</a></li>
                <li class="breadcrumb-item active">Create Aplikasi</li>
            </ol>
        </nav>
    </div>
    <!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">
            <div class="col-10">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Form Input Penambahan Aplikasi</h5>
                        <?php if (session()->getFlashdata('errors')) : ?>
                            <div class="alert alert-danger">
                                <?= session()->getFlashdata('errors'); ?>
                            </div>
                        <?php endif; ?>

                        <form action="/dashboard/save" method="post" enctype="multipart/form-data">
                            <?= csrf_field(); ?>
                            <div class="row mb-3">
                                <label for="nama_aplikasi" class="col-sm-2 col-form-label">Nama Aplikasi</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="nama_aplikasi" name="nama_aplikasi" required autofocus>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="link" class="col-sm-2 col-form-label">Link Aplikasi</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="link" name="link" required>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="deskripsi" class="col-sm-2 col-form-label">Deskripsi Aplikasi</label>
                                <div class="col-sm-6">
                                    <textarea class="form-control" style="height: 100px" id="deskripsi" name="deskripsi" required></textarea>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="sudin_bagian" class="col-sm-2 col-form-label">Suku Dinas/Bagian</label>
                                <div class="col-sm-8">
                                    <select class="form-select" id="sudin_bagian" name="sudin_bagian" required>
                                        <option selected>--- Pilih Suku Dinas/Bagian ---</option>
                                        <?php foreach ($instansi as $ins) : ?>
                                            <option value="<?= $ins['slug']; ?>"><?= $ins['nama_instansi']; ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="img" class="col-sm-2 costum-file-label">Image Aplikasi</label>
                                <div class="col-sm-2">
                                    <img src="/assets/img/Jakselapp/JakselApp.png" class="img-thumbnail img-preview">
                                </div>
                                <div class="col-sm-6">
                                    <input class="form-control custom-file-input" type="file" id="img" name="img" onchange="previewImg()">
                                </div>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Insert</button>
                                <button type="reset" class="btn btn-secondary">Reset</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </section>

</main>

<?= $this->endSection('dashboardContent'); ?>