<?php

namespace App\Controllers;

use App\Models\aplikasiKecamatanModel;
use App\Models\kecamatanModel;
use App\Models\kelurahanModel;

class DaftarApp extends BaseController
{
    protected $kecamatanModel;
    protected $kelurahanModel;
    protected $aplikasiKecamatanModel;
    public function __construct()
    {
        $this->kecamatanModel = new kecamatanModel();
        $this->kelurahanModel = new kelurahanModel();
    }
    public function index()
    {
        $data = [
            'title' => 'Satuan Kerja Jakarta Selatan',
        ];
        return view('pages/index', $data);
    }

    public function kecamatan()
    {
        $data = [
            'title' => 'Daftar Kecamatan',
            'kecamatan' => $this->kecamatanModel->getKecamatan()
        ];

        return view('pages/kecamatan', $data);
    }

    public function kelurahan()
    {
        $data = [
            'title' => 'Daftar Kelurahan',
            'kelurahan' => $this->kelurahanModel->getKelurahan()
        ];
        return view('pages/kelurahan', $data);
    }

    public function table()
    {
        $data = [
            'title' => 'Contoh Table',
        ];
        return view('pages/table', $data);
    }
}
