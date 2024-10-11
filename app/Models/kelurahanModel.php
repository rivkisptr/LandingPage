<?php

namespace App\Models;

use CodeIgniter\Model;

class kelurahanModel extends Model
{
    protected $table = 'kelurahan';
    protected $allowedFields = ['nama_kelurahan', 'asal_kecamatan', 'slug_kecamatan', 'slug'];

    public function getKelurahan()
    {
        return $this->findAll();
    }
}
