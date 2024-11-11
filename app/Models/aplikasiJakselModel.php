<?php

namespace App\Models;

use CodeIgniter\Model;

class aplikasiJakselModel extends Model
{
    protected $table = 'jaksel_app';
    protected $allowedFields = ['img', 'nama_aplikasi', 'deskripsi', 'link', 'slug'];

    public function getAplikasi()
    {
        return $this->findAll();
    }

    public function search($keyword)
    {
        return $this->table('jaksel_app')->like('nama_aplikasi', $keyword);
    }
}
