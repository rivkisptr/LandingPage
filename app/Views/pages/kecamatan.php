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
        <div class="container">
            <div class="isotope-layout" data-default-filter="*" data-layout="masonry" data-sort="original-order">

                <div class="row gy-4 isotope-container" data-aos="fade-up" data-aos-delay="50">
                    <?php foreach ($kecamatan as $k): ?>
                        <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item isotope-item" data-bs-toggle="modal" data-bs-target="#staticBackdrop-<?= $k['slug']; ?>">
                            <div class="portfolio-content h-100">
                                <a data-gallery="portfolio-gallery-app"><img src="assets/img/default_img.jpg" class="img-fluid" alt=""></a>
                                <div class="portfolio-info">
                                    <h4><a href="portfolio-details.html" title="More Details">Kecamatan <?= $k['nama_kecamatan']; ?></a></h4>
                                    <p>Lorem ipsum, dolor sit amet consectetur</p>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>

            </div>
        </div>

        <!-- Modal -->
        <?php foreach ($kecamatan as $k) : ?>
            <div class="modal fade" id="staticBackdrop-<?= $k['slug']; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Aplikasi kecamatan <?= $k['nama_kecamatan']; ?></h5>
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
                                            <?php $i = 1; ?>
                                            <?php foreach ($aplikasi_per_kecamatan[$k['slug']] as $aplikasi) : ?>
                                                <tr>
                                                    <td><?= $i++; ?></td>
                                                    <td><?= $aplikasi['nama_aplikasi']; ?></td>
                                                    <td><?= $aplikasi['instansi']; ?></td>
                                                    <td><button href="<?= $aplikasi['link']; ?>" type="button" class="btn btn-success">Link</button></td>
                                                </tr>
                                            <?php endforeach; ?>
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
<a href="" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
<?= $this->endSection('content'); ?>