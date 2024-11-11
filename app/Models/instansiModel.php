<?php

namespace App\Models;

use CodeIgniter\Model;

class instansiModel extends Model
{
    protected $table = 'instansi';
    protected $allowedFields = ['nama_instansi', 'slug'];

    public function getInstansi()
    {
        return $this->findAll();
    }
}
