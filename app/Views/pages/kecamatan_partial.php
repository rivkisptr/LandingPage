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
</div>
<div id="kecamatan-pagination-container">
    <button class="kecamatan-pagination-button" data-page="1">1</button>
    <button class="kecamatan-pagination-button" data-page="2">2</button>
</div>

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
                            <h4>Link Kelurahan di Kecamatan <?= $k['nama_kecamatan']; ?></h4>
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