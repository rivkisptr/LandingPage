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
                    <li data-filter="*" class="filter-active">All</li>
                    <li data-filter=".filter-Kecamatan">Kecamatan</li>
                    <li data-filter=".filter-Kelurahan">Kelurahan</li>
                </ul>
                <!-- End Portfolio Filters -->

                <div class="row gy-4 isotope-container" data-aos="fade-up" data-aos-delay="50">

                    <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-Kecamatan">
                        <div class="portfolio-content h-100">
                            <a href="/table" data-gallery="portfolio-gallery-app"><img src="assets/img/portfolio/app-1.jpg" class="img-fluid" alt=""></a>
                            <div class="portfolio-info">
                                <h4><a href="portfolio-details.html" title="More Details">Kecamatan 1</a></h4>
                                <p>Lorem ipsum, dolor sit amet consectetur</p>
                            </div>
                        </div>
                    </div><!-- End Portfolio Item -->

                    <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-Kelurahan">
                        <div class="portfolio-content h-100">
                            <a href="/table" data-gallery="portfolio-gallery-app"><img src="assets/img/portfolio/product-1.jpg" class="img-fluid" alt=""></a>
                            <div class="portfolio-info">
                                <h4><a href="portfolio-details.html" title="More Details">Kelurahan 1</a></h4>
                                <p>Lorem ipsum, dolor sit amet consectetur</p>
                            </div>
                        </div>
                    </div><!-- End Portfolio Item -->


                    <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-Kecamatan">
                        <div class="portfolio-content h-100">
                            <a href="/table" data-gallery="portfolio-gallery-app"><img src="assets/img/portfolio/app-2.jpg" class="img-fluid" alt=""></a>
                            <div class="portfolio-info">
                                <h4><a href="portfolio-details.html" title="More Details">Kecamatan 2</a></h4>
                                <p>Lorem ipsum, dolor sit amet consectetur</p>
                            </div>
                        </div>
                    </div><!-- End Portfolio Item -->

                    <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-Kelurahan">
                        <div class="portfolio-content h-100">
                            <a href="/table" data-gallery="portfolio-gallery-app"><img src="assets/img/portfolio/product-2.jpg" class="img-fluid" alt=""></a>
                            <div class="portfolio-info">
                                <h4><a href="portfolio-details.html" title="More Details">Kelurahan 2</a></h4>
                                <p>Lorem ipsum, dolor sit amet consectetur</p>
                            </div>
                        </div>
                    </div><!-- End Portfolio Item -->

                    <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-Kecamatan">
                        <div class="portfolio-content h-100">
                            <a href="assets/img/portfolio/app-3.jpg" data-gallery="portfolio-gallery-app"><img src="assets/img/portfolio/app-3.jpg" class="img-fluid" alt=""></a>
                            <div class="portfolio-info">
                                <h4><a href="portfolio-details.html" title="More Details">Kecamatan 3</a></h4>
                                <p>Lorem ipsum, dolor sit amet consectetur</p>
                         </div>
                        </div>
                    </div><!-- End Portfolio Item -->

                    <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-Kelurahan">
                        <div class="portfolio-content h-100">
                            <a href="assets/img/portfolio/product-3.jpg" data-gallery="portfolio-gallery-app"><img src="assets/img/portfolio/product-3.jpg" class="img-fluid" alt=""></a>
                            <div class="portfolio-info">
                                <h4><a href="portfolio-details.html" title="More Details">Kelurahan 3</a></h4>
                                <p>Lorem ipsum, dolor sit amet consectetur</p>
                            </div>
                        </div>
                    </div><!-- End Portfolio Item -->

                </div><!-- End Portfolio Container -->

            </div>

        </div>

    </section><!-- /Portfolio Section -->

</main>
<!-- Scroll Tap -->
<a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
<?= $this->endSection('content'); ?>