<?php

namespace App\Models;

use CodeIgniter\Model;

class aplikasiKecamatanModel extends Model
{
    protected $table = 'aplikasi_kecamatan';
    protected $allowedFields = ['nama_aplikasi', 'instansi', 'link', 'slug_kecamatan'];

    public function getAplikasiKecamatan()
    {
        return $this->findAll();
    }

    public function getAplikasiKecamatanBySlug($slug)
    {
        return $this->where('slug_kecamatan', $slug)->findAll();
    }
}
