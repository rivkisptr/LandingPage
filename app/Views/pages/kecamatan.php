<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<main class="main">
    <!-- Portfolio Section -->
    <section id="portfolio" class="portfolio section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <span class="description-title">Satuan Kerja Kecamatan</span>
            <h2>Satuan Kerja Kecamatan</h2>
        </div>
        <!-- End Section Title -->
        <div class="isotope-container" data-aos="fade-up" data-aos-delay="50">
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

    </section>
</main>
<a href="" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
<?= $this->endSection('content'); ?>