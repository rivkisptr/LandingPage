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
        <div class="isotope-container">
            <div id="kecamatan-container" class="row justify-content-center">

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


                <!-- Modal Kecamatan -->
                <?php foreach ($kecamatan as $k): ?>
                    <div class="modal fade" id="KecamatanBackdrop-<?= $k['slug']; ?>" data-bs-backdrop="static"
                        data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Kecamatan <?= $k['nama_kecamatan']; ?></h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <!-- Link Kecamatan Section -->
                                    <div class="container">
                                        <div class="row mb-2">
                                            <div class="col-12 section-title">
                                                <h3>Website Kecamatan</h3>
                                            </div>
                                        </div>

                                        <div class="row justify-content-center">
                                            <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item isotope-item">
                                                <div class="portfolio-content h-100">
                                                    <a href="<?= $k['link']; ?>" data-gallery="portfolio-gallery-app" target="_blank">
                                                        <img src="assets/img/kecamatan.png" class="img-fluid" alt="">
                                                    </a>
                                                    <div class="portfolio-info">
                                                        <h4><a title="More Details"><?= $k['nama_kecamatan']; ?></a></h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <br>

                                        <!-- Link Kelurahan Section -->
                                        <div class="container section-title">
                                            <div class="row mb-2">
                                                <div class="col-12 section-title">
                                                    <h3>Link Kelurahan di Kecamatan <?= $k['nama_kecamatan']; ?></h3>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row justify-content-center">
                                            <?php foreach ($kelurahan as $kel): ?>
                                                <?php if ($kel['slug_kecamatan'] == $k['slug']): ?>
                                                    <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item isotope-item">
                                                        <div class="portfolio-content h-100">
                                                            <a href="<?= $kel['link']; ?>" data-gallery="portfolio-gallery-app" target="_blank">
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
            </div>
            <div id="kecamatan-pagination-container" class="mt-4" data-aos="fade-up">
                <button class="kecamatan-pagination-button" data-page="1">1</button>
                <button class="kecamatan-pagination-button" data-page="2">2</button>
            </div>
        </div>
    </section>

    <section id="JakselApp" class="section">
        <div class="container section-title" data-aos="fade-up">
            <span class="description-title">Jaksel Apps</span>
            <h2>Jaksel Apps</h2>
        </div>

        <div class="isotope-container" data-aos="fade-up">

            <div class="row justify-content-between">
                <div class="col-md-4">
                    <div class="select-option">
                        <select class="form-select" size="5" aria-label="Default select example">
                            <option selected>--- Pilih Bagian / Suku Dinas ---</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                            <option value="4">empat</option>
                            <option value="5">lima</option>
                            <option value="6">enam</option>
                            <option value="7">Tujuh</option>
                            <option value="8">delapan</option>
                            <option value="9">sembilan</option>
                            <option value="10">sepuluh</option>
                            <option value="11">sebelas</option>
                            <option value="12">dua belas</option>
                            <option value="13">tiga belas</option>
                            <option value="14">empat belas</option>
                            <option value="15">lima belas</option>
                            <option value="16">enam belas</option>
                            <option value="17">tujuh belas</option>
                            <option value="18">delapan belas</option>
                            <option value="19">sembilan belas</option>
                            <option value="20">dua puluh</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="search-bar">
                        <input class="form-control mb-3" type="text" placeholder="Cari Aplikasi" aria-label="default input example">
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="box">

                    <?php foreach ($aplikasi as $app): ?>
                        <div class="list">
                            <div class="imgbx">
                                <img src="/assets/img/Jakselapp/<?= $app['img']; ?>" alt="img">
                            </div>
                            <div class="content">
                                <h2 class="link">
                                    <a href="<?= $app['link']; ?>" class="button">Kunjungi</a>
                                </h2>
                                <h4><?= $app['nama_aplikasi']; ?></h4>
                                <p class="app-description"><?= $app['deskripsi']; ?></p>
                            </div>
                        </div>
                    <?php endforeach; ?>

                </div>
                <div id="pagination-container">
                    <button class="pagination-button prev" data-page="<?= $pager->getCurrentPage() - 1 ?>" <?= $pager->getCurrentPage() == 1 ? 'disabled' : '' ?>>
                        <span aria-hidden="true">&#11164;</span>
                    </button>
                    <button class="pagination-button next" data-page="<?= $pager->getCurrentPage() + 1 ?>" <?= $pager->getCurrentPage() == $pager->getPageCount() ? 'disabled' : '' ?>>
                        <span aria-hidden="true">&#11166;</span>
                    </button>
                </div>
            </div>
        </div>

    </section>
</main>
<!-- Scroll Tap -->
<a class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
<?= $this->endSection('content'); ?>