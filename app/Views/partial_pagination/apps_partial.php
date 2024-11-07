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