<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<main class="main">
    <!-- Portfolio Section -->
    <section id="portfolio" class="portfolio section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <span class="description-title">Satuan Kerja Kecamatan dan Kelurahan</span>
            <h2>Satuan Kerja Kecamatan dan Kelurahan</h2>
        </div>
        <!-- End Section Title -->
        <div class="isotope-container" data-aos="fade-up" data-aos-delay="50">
            <div class="row justify-content-center">

                <?php foreach ($kecamatan as $k): ?>
                    <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item isotope-item" data-bs-toggle="modal" data-bs-target="#KecamatanBackdrop-<?= $k['slug']; ?>">
                        <div class="portfolio-content h-100">
                            <a data-gallery="portfolio-gallery-app"><img src="assets/img/kecamatan.png" class="img-fluid" alt=""></a>
                            <div class="portfolio-info">
                                <h4><a href="" title="More Details">Kecamatan <?= $k['nama_kecamatan']; ?></a></h4>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>

                <hr>

                <!-- Modal Kecamatan -->
                <?php foreach ($kecamatan as $k): ?>
                    <div class="modal fade" id="KecamatanBackdrop-<?= $k['slug']; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Kecamatan <?= $k['nama_kecamatan']; ?></h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="container">
                                        <!-- Link Kecamatan Section -->
                                        <div class="container section-title" data-aos="fade-up">
                                            <h3>Link Kecamatan</h3>
                                        </div>

                                        <div class="row justify-content-center">
                                            <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item isotope-item">
                                                <div class="portfolio-content h-100">
                                                    <a href="<?= $k['link']; ?>" data-gallery="portfolio-gallery-app">
                                                        <img src="assets/img/kecamatan.png" class="img-fluid" alt="">
                                                    </a>
                                                    <div class="portfolio-info">
                                                        <h4><a title="More Details"><?= $k['nama_kecamatan']; ?></a></h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Link Kelurahan Section -->
                                        <div class="container section-title">
                                            <h4>Link Kelurahan di Kecamatan <?= $k['nama_kecamatan']; ?></h4>
                                        </div>

                                        <div class="row justify-content-center">
                                            <?php foreach ($kelurahan as $kel): ?>
                                                <?php if ($kel['slug_kecamatan'] == $k['slug']): ?>
                                                    <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item isotope-item">
                                                        <div class="portfolio-content h-100">
                                                            <a href="<?= $kel['link']; ?>" data-gallery="portfolio-gallery-app">
                                                                <img src="assets/img/kelurahan.png" class="img-fluid" alt="">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <h4><a title="More Details"><?= $kel['nama_kelurahan']; ?></a></h4>
                                                            </div>
                                                        </div>
                                                    </div>
                                                <?php endif; ?>
                                            <?php endforeach; ?>
                                        </div>

                                    </div>
                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                                </div>

                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>

    </section>
    <section>
        <div class="container justify-content-center">
            <h1>Jaksel Apps</h1>
            <div class="box">

                <div class="list">
                    <div class="imgbx">
                        <img src="/assets/img/Website-Kota-Adm-Jakarta-Selatan.png" alt="img">
                    </div>
                    <div class="content">
                        <h2 class="link">
                            <a href="URL_YANG_DIINGINKAN" class="button">Kunjungi</a>
                        </h2>
                        <h4>Website Kota Adm Jakarta Selatan</h4>
                        <p>
                            Media Informasi Kota Adm Jakarta Selatan yang terdiri dari Berita,
                            <br>Agenda, Data dan Informasi
                        </p>
                    </div>
                </div>

                <div class="list">
                    <div class="imgbx">
                        <img src="/assets/img/PPID-Jakarta-Selatan.png" alt="img">
                    </div>
                    <div class="content">
                        <h2 class="link">
                            <a href="URL_YANG_DIINGINKAN" class="button">Kunjungi</a>
                        </h2>
                        <h4>PPID Jakarta Selatan</h4>
                        <p>
                            Website Pejabat Pengelola Informasi dan Dokumentasi (PPID)
                            <br>Sekretariat Kota Administrasi Jakarta Selatan
                        </p>
                    </div>
                </div>

                <div class="list">
                    <div class="imgbx">
                        <img src="/assets/img/TechnoCare.png" alt="img">
                    </div>
                    <div class="content">
                        <h2 class="link">
                            <a href="URL_YANG_DIINGINKAN" class="button">Kunjungi</a>
                        </h2>
                        <h4>Technocare LTIK</h4>
                        <p>
                            Layanan Help Desk Sudin Kominfotik
                            <br>Kota Adminitrasi Jakarta Selatan
                        </p>
                    </div>
                </div>

                <div class="list">
                    <div class="imgbx">
                        <img src="/assets/img/Ekin-PJLP-Setko.png" alt="img">
                    </div>
                    <div class="content">
                        <h2 class="link">
                            <a href="URL_YANG_DIINGINKAN" class="button">Kunjungi</a>
                        </h2>
                        <h4>Ekin PJLP Setko</h4>
                        <p>
                            Sistem pencatatan aktivitas kerja PJLP Setko
                            <br>Kota Adminitrasi Jakarta Selatan
                        </p>
                    </div>
                </div>

                <div class="list">
                    <div class="imgbx">
                        <img src="/assets/img/Sinoli.png" alt="img">
                    </div>
                    <div class="content">
                        <h2 class="link">
                            <a href="URL_YANG_DIINGINKAN" class="button">Kunjungi</a>
                        </h2>
                        <h4>Sinoli</h4>
                        <p>
                            Sistem Informasi non Litigasi Bagian Hukum
                            <br>Kota Adminitrasi Jakarta Selatan
                        </p>
                    </div>
                </div>

                <div class="list">
                    <div class="imgbx">
                        <img src="/assets/img/Siperbast.png" alt="img">
                    </div>
                    <div class="content">
                        <h2 class="link">
                            <a href="URL_YANG_DIINGINKAN" class="button">Kunjungi</a>
                        </h2>
                        <h4>Siperbast</h4>
                        <p>
                            Sistem Informasi Penerbitan Berita Acara
                            <br>Serah Terima Bagian PLH
                        </p>
                    </div>
                </div>

                <div class="list">
                    <div class="imgbx">
                        <img src="/assets/img/E-Kinerja-PJLP.png" alt="img">
                    </div>
                    <div class="content">
                        <h2 class="link">
                            <a href="URL_YANG_DIINGINKAN" class="button">Kunjungi</a>
                        </h2>
                        <h4>E-Kinerja PJLP</h4>
                        <p>
                            Sistem pencatatan aktivitas kerja PJLP
                            <br>Sudin Kominfotik Jakarta Selatan
                        </p>
                    </div>
                </div>

                <div class="list">
                    <div class="imgbx">
                        <img src="/assets/img/Posko-Siaga-Bencana.png" alt="img">
                    </div>
                    <div class="content">
                        <h2 class="link">
                            <a href="URL_YANG_DIINGINKAN" class="button">Kunjungi</a>
                        </h2>
                        <h4>Posko Siaga Bencana</h4>
                        <p>
                            Sistem pencatatan segala keperluan dan bantuan
                            <br>yang dibutuhkan dalam bencana
                        </p>
                    </div>
                </div>

                <div class="list">
                    <div class="imgbx">
                        <img src="/assets/img/Destinasi-Jakarta-Selatan.png" alt="img">
                    </div>
                    <div class="content">
                        <h2 class="link">
                            <a href="URL_YANG_DIINGINKAN" class="button">Kunjungi</a>
                        </h2>
                        <h4>Destinasi Jakarta Selatan</h4>
                        <p>
                            Peta destinasi pariwisata di Jakarta Selatan
                        </p>
                    </div>
                </div>

                <div class="list">
                    <div class="imgbx">
                        <img src="/assets/img/Website-Bagian-Hukum.png" alt="img">
                    </div>
                    <div class="content">
                        <h2 class="link">
                            <a href="URL_YANG_DIINGINKAN" class="button">Kunjungi</a>
                        </h2>
                        <h4>Website Bagian Hukum</h4>
                        <p>
                            Dokumentasi kegiatan bagian hukum
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<!-- Scroll Tap -->
<a class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
<?= $this->endSection('content'); ?>