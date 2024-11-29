<?php

namespace App\Models;

use CodeIgniter\Model;

class aplikasiJakselModel extends Model
{
    protected $table = 'jaksel_app';
    protected $allowedFields = ['img', 'nama_aplikasi', 'deskripsi', 'link', 'slug_instansi'];

    public function getAplikasi($id = false)
    {
        if ($id == false) {
            return $this->findAll();
        }
        return $this->where('id', $id)->first();
    }

    public function search($keyword)
    {
        return $this->table('jaksel_app')->like('nama_aplikasi', $keyword);
    }
}
