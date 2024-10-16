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
        <div class="container">
            <div class="isotope-layout" data-default-filter="*" data-layout="masonry" data-sort="original-order">
                <ul class="portfolio-filters isotope-filters" data-aos="fade-up" data-aos-delay="100">
                    <!-- <li data-filter="*" class="filter-active">All</li>
                    <li data-filter=".filter-Kecamatan">Kecamatan</li>
                    <li data-filter=".filter-Kelurahan">Kelurahan</li> -->
                </ul>
                <!-- End Portfolio Filters -->

                <div class="row gy-4 isotope-container" data-aos="fade-up" data-aos-delay="50">

                    <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item isotope-item filter-Kecamatan">
                        <div class="portfolio-content h-100">
                            <a href="/kecamatan" data-gallery="portfolio-gallery-app" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><img src="assets/img/default_img.jpg" class="img-fluid" alt=""></a>
                            <div class="portfolio-info">
                                <h4><a href="" title="More Details">Kecamatan</a></h4>
                                <p>Lorem ipsum, dolor sit amet consectetur</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item isotope-item filter-Kelurahan" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                        <div class="portfolio-content h-100">
                            <a href="/kelurahan" data-gallery="portfolio-gallery-app"><img src="assets/img/default_img.jpg" class="img-fluid" alt=""></a>
                            <div class="portfolio-info">
                                <h4><a href="" title="More Details">Kelurahan</a></h4>
                                <p>Lorem ipsum, dolor sit amet consectetur</p>
                            </div>
                        </div>
                    </div>

    </section>
</main>
<!-- Scroll Tap -->
<a class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
<?= $this->endSection('content'); ?>