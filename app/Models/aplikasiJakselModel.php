<?php

namespace App\Models;

use CodeIgniter\Model;

class aplikasiJakselModel extends Model
{
    protected $table = 'jaksel_app';
    protected $allowedFields = ['img', 'nama_aplikasi', 'deskripsi', 'link'];

    public function getAplikasi()
    {
        return $this->findAll();
    }
}
