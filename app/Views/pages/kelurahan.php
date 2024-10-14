<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<main class="main">
    <!-- Portfolio Section -->
    <section id="portfolio" class="portfolio section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <span class="description-title">Satuan Kerja Kelurahan</span>
            <h2>Satuan Kerja Keluarahan</h2>
        </div>
        <!-- End Section Title -->
        <div class="container">
            <div class="isotope-layout" data-default-filter="*" data-layout="masonry" data-sort="original-order">
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

                <div class="row gy-4 isotope-container" data-aos="fade-up" data-aos-delay="50">

                    <?php foreach ($kelurahan as $kel) : ?>
                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-kecamatan-<?= $kel['slug_kecamatan']; ?>" 
                        data-bs-toggle="modal" data-bs-target="#staticBackdrop-<?= $kel['slug']; ?>">
                            <div class="portfolio-content h-100">
                                <a data-gallery="portfolio-gallery-app"><img src="assets/img/default_img.jpg" class="img-fluid" alt=""></a>
                                <div class="portfolio-info">
                                    <h4><a href="portfolio-details.html" title="More Details">Kelurahan <?= $kel['nama_kelurahan']; ?></a></h4>
                                    <p>Lorem ipsum, dolor sit amet consectetur</p>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>

                </div>
            </div>
        </div>

        <!-- Modal -->
        <?php foreach ($kelurahan as $kel) : ?>
            <div class="modal fade" id="staticBackdrop-<?= $kel['slug']; ?>" data-bs-backdrop="static" 
            data-bs-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Kelurahan <?= $kel['nama_kelurahan']; ?></h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="container">
                                <div class="row gy-4 isotope-container ">
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
                                                <td>Aplikasi ---</td>
                                                <td>Sudin ---</td>
                                                <td><button type="button" class="btn btn-success">Link</button></td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Aplikasi ---</td>
                                                <td>Sudin ---</td>
                                                <td><button type="button" class="btn btn-success">Link</button></td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Aplikasi ---</td>
                                                <td>Sudin ---</td>
                                                <td><button type="button" class="btn btn-success">Link</button></td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>Aplikasi ---</td>
                                                <td>Sudin ---</td>
                                                <td><button type="button" class="btn btn-success">Link</button></td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>Aplikasi ---</td>
                                                <td>Sudin ---</td>
                                                <td><button type="button" class="btn btn-success">Link</button></td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>Aplikasi ---</td>
                                                <td>Sudin ---</td>
                                                <td><button type="button" class="btn btn-success">Link</button></td>
                                            </tr>
                                            <tr>
                                                <td>7</td>
                                                <td>Aplikasi ---</td>
                                                <td>Sudin ---</td>
                                                <td><button type="button" class="btn btn-success">Link</button></td>
                                            </tr>
                                            <tr>
                                                <td>8</td>
                                                <td>Aplikasi ---</td>
                                                <td>Sudin ---</td>
                                                <td><button type="button" class="btn btn-success">Link</button></td>
                                            </tr>
                                            <tr>
                                                <td>9</td>
                                                <td>Aplikasi ---</td>
                                                <td>Sudin ---</td>
                                                <td><button type="button" class="btn btn-success">Link</button></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>

    </section>
</main>
<!-- Scroll Tap -->
<a class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
<?= $this->endSection('content'); ?>