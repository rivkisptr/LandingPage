<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<main class="main">

    <!-- Portfolio Section -->
    <section id="portfolio" class="portfolio section">

        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <span class="description-title">Kelurahan ---</span>
            <h2>Kelurahan ---</h2>
        </div>
        <!-- End Section Title -->

        <div class="container">

            <!-- <div class="isotope-layout" data-default-filter="*" data-layout="masonry" data-sort="original-order">

                <ul class="portfolio-filters isotope-filters" data-aos="fade-up" data-aos-delay="100">
                    <li data-filter="*" class="filter-active">All</li>
                    <li data-filter=".filter-Kecamatan">Kecamatan</li>
                    <li data-filter=".filter-Kelurahan">Kelurahan</li>
                </ul> -->

                <div class="row gy-4 isotope-container" data-aos="fade-up" data-aos-delay="50">

                <table class="content-table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Nama App</th>
                            <th>Instansi</th>
                            <th>Link</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Aplikasi Sehat</td>
                            <td>Sudin ---</td>
                            <td><button type="button" class="btn btn-success">Link</button></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Aplikasi Sehat</td>
                            <td>Sudin ---</td>
                            <td><button type="button" class="btn btn-success">Link</button></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Aplikasi Sehat</td>
                            <td>Sudin ---</td>
                            <td><button type="button" class="btn btn-success">Link</button></td>
                        </tr>
                    </tbody>
                </table>

                </div><!-- End Portfolio Container -->

            </div>

        </div>

    </section><!-- /Portfolio Section -->

</main>
<a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
<?= $this->endSection('content'); ?>