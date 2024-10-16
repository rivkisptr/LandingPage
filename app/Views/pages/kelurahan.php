<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<main class="main">
    <!-- Portfolio Section -->
    <section id="portfolio" class="portfolio section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <span class="description-title">Satuan Kerja Kelurahan</span>
            <h2>Satuan Kerja Kelurahan</h2>
        </div>
        <!-- End Section Title -->
        <div class="container">
            <div class="isotope-layout" data-default-filter="*" data-sort="original-order">
                <ul class="portfolio-filters isotope-filters" data-aos="fade-up" data-aos-delay="100">
                    <li data-filter="*" class="filter-active">All</li>
                    <?php
                    $kecamatan_array = array();
                    foreach ($kelurahan as $kel) {
                        $kecamatan_array[$kel['slug_kecamatan']] = $kel['asal_kecamatan'];
                    }

                    $kecamatan_array = array_unique($kecamatan_array);

                    foreach ($kecamatan_array as $slug => $asal) : ?>
                        <li data-filter=".filter-kecamatan-<?= $slug; ?>"><?= $asal; ?></li>
                    <?php endforeach; ?>
                </ul>
                <!-- End Portfolio Filters -->

                <div class="isotope-container" data-aos="fade-up" data-aos-delay="50">
                    <div class="row justify-content-center">
                        <?php foreach ($kelurahan as $kel) : ?>
                            <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item isotope-item filter-kecamatan-<?= $kel['slug_kecamatan']; ?>">
                                <div class="portfolio-content h-100">
                                    <a href="<?= $kel['link']; ?>" data-gallery="portfolio-gallery-app"><img src="assets/img/default_img.jpg" class="img-fluid" alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="<?= $kel['link']; ?>" title="More Details">Kelurahan <?= $kel['nama_kelurahan']; ?></a></h4>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<!-- Scroll Top -->
<a class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
<?= $this->endSection('content'); ?>