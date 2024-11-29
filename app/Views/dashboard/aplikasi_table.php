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
            <a class="nav-link active" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-layout-text-window-reverse"></i><span>Daftar Tabel</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="tables-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="#" class="active">
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
        <h1>Tabel Aplikasi</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/dashboard">Home</a></li>
                <li class="breadcrumb-item">Daftar Tabel</li>
                <li class="breadcrumb-item active">Aplikasi</li>
            </ol>
        </nav>
    </div>
    <!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row mt-4 mb-5 align-items-center">
                            <form action="/dashboard/apptabel" class="d-flex col-md-4 position-relative" method="get">
                                <input type="text" class="form-control ms-3" placeholder="Cari Aplikasi" name="keyword" value="<?= esc($keyword); ?>">
                                <button type="submit" class="btn btn-outline-secondary">🔍</button>
                                <a href="/dashboard/apptabel" class="btn btn-secondary ms-2 <?= empty($keyword) ? 'disabled' : ''; ?>">Back</a>
                            </form>
                            <div class="col-auto ms-auto">
                                <button type="button" class="btn btn-primary me-3"><i class="bi bi-plus-lg me-1"></i>
                                    <a href="/dashboard/createAplikasi" style="color: white;">Add Aplikasi</a></button>
                            </div>
                        </div>
                        <?php if (session()->getFlashdata('pesan')) : ?>
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <i class="bi bi-check-circle me-1"></i>
                                <?= session()->getFlashdata('pesan'); ?>
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        <?php endif; ?>
                        <table class="table table-hover table-aplikais">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Image Aplikasi</th>
                                    <th scope="col">Nama Aplikasi</th>
                                    <th scope="col">Slug Instansi</th>
                                    <th scope="col">Link</th>
                                    <th scope="col">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i = 1 + (5 * ($currentPage - 1)); ?>
                                <?php foreach ($aplikasi as $app) : ?>
                                    <tr>
                                        <th scope="row"><?= $i++; ?></th>
                                        <td><img src="/assets/img/Jakselapp/<?= $app['img']; ?>" alt="img" class="imageApp"></td>
                                        <td><?= $app['nama_aplikasi']; ?></td>
                                        <td><?= $app['slug_instansi']; ?></td>
                                        <td><a href="<?= $app['link']; ?>"><?= $app['link']; ?></a></td>
                                        <td>
                                            <a href="/dashboard/edit/<?= $app['id']; ?>" class="btn btn-success rounded-pill">Edit </a>
                                            <form action="/dashboard/<?= $app['id']; ?>" method="post" class="d-inline">
                                                <?= csrf_field(); ?>
                                                <input type="hidden" name="_method" value="DELETE">
                                                <button type="submit" class="btn btn-danger rounded-pill"
                                                    onclick="return confirm('Apakah anda yakin ingin menghapus <?= $app['nama_aplikasi']; ?> ?');">
                                                    Delete <i class="ri-delete-bin-2-fill"></i></button>
                                            </form>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                        <?= $pager->links('aplikasi', 'dashboard_paginate'); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<?= $this->endSection('dashboardContent'); ?>