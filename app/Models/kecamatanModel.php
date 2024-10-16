<?php

namespace App\Models;

use CodeIgniter\Model;

class kecamatanModel extends Model
{
    protected $table = 'kecamatan';
    protected $allowedFields = ['nama_kecamatan', 'slug', 'link'];

    public function getKecamatan()
    {
        return $this->findAll();
    }
}
