<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<main class="main">
    <!-- Portfolio Section -->
    <section id="portfolio" class="portfolio section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <span class="description-title">Satuan Kerja</span>
            <h2>Satuan Kerja</h2>
        </div>
        <!-- End Section Title -->
        <div class="isotope-container" data-aos="fade-up" data-aos-delay="50">
            <div class="row justify-content-center">

                <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item isotope-item" data-bs-toggle="modal" data-bs-target="#KecamatanBackdrop">
                    <div class="portfolio-content h-100">
                        <a data-gallery="portfolio-gallery-app"><img src="assets/img/default_img.jpg" class="img-fluid" alt=""></a>
                        <div class="portfolio-info">
                            <h4><a href="" title="More Details">Kecamatan</a></h4>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item isotope-item" data-bs-toggle="modal" data-bs-target="#KelurahanBackdrop">
                    <div class="portfolio-content h-100">
                        <a data-gallery="portfolio-gallery-app"><img src="assets/img/default_img.jpg" class="img-fluid" alt=""></a>
                        <div class="portfolio-info">
                            <h4><a title="More Details">Kelurahan</a></h4>
                        </div>
                    </div>
                </div>

                <hr>

                <!-- Modal Kecamatan -->
                <div class="modal fade" id="KecamatanBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
                    tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Kecamatan Jakarta Selatan</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">

                                <div class="container">
                                    <div class="row gy-4 isotope-container ">
                                        <div class="row justify-content-center">
                                            <?php foreach ($kecamatan as $k): ?>
                                                <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item isotope-item">
                                                    <div class="portfolio-content h-100">
                                                        <a href="<?= $k['link']; ?>" data-gallery="portfolio-gallery-app"><img src="assets/img/default_img.jpg" class="img-fluid" alt=""></a>
                                                        <div class="portfolio-info">
                                                            <h4><a title="More Details"><?= $k['nama_kecamatan']; ?></a></h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php endforeach; ?>
                                        </div>
                                    </div>
                                </div>

                                <div class="modal-footer sticky-bottom">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Modal Kelurahan -->

                <!-- First Modal Kelurahan -->
                <div class="modal fade" id="KelurahanBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
                    tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Kelurahan di Kecamatan Jakarta Selatan</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">

                                <div class="container section-title">
                                    <p>! -- Pilih Kelurahan berdasarkan Kecamatan -- ! </p>
                                </div>

                                <div class="container">
                                    <div class="row gy-4 isotope-container ">
                                        <div class="row justify-content-center">
                                            <?php foreach ($kecamatan as $k): ?>
                                                <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item isotope-item" data-bs-toggle="modal" data-bs-target="#SecondKelurahanBackdrop">
                                                    <div class="portfolio-content h-100">
                                                        <a data-gallery="portfolio-gallery-app"><img src="assets/img/default_img.jpg" class="img-fluid" alt=""></a>
                                                        <div class="portfolio-info">
                                                            <h4><a title="More Details"><?= $k['nama_kecamatan']; ?></a></h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php endforeach; ?>
                                        </div>
                                    </div>
                                </div>

                                <div class="modal-footer sticky-bottom">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Second Modal Kelurahan -->
                <div class="modal fade" id="SecondKelurahanBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
                    tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Kelurahan di Kecamatan</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="container">
                                    <div class="row gy-4 isotope-container ">
                                        <h1>AKWOEAOWEKOAWKEWOKOEA</h1>
                                    </div>
                                </div>
                            </div>

                            <div class="modal-footer sticky-bottom">
                                <button type="button" class="btn btn-primary" id="backToFirst">Kembali</button>
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

    </section>
</main>
<!-- Scroll Tap -->
<a class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
<?= $this->endSection('content'); ?>