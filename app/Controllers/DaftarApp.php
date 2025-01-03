<?php

namespace App\Controllers;

use App\Models\aplikasiJakselModel;
use App\Models\kecamatanModel;
use App\Models\kelurahanModel;
use App\Models\instansiModel;

class DaftarApp extends BaseController
{
    protected $kecamatanModel;
    protected $kelurahanModel;
    protected $aplikasiJakselModel;
    protected $instansiModel;

    public function __construct()
    {
        $this->kecamatanModel      = new kecamatanModel();
        $this->kelurahanModel      = new kelurahanModel();
        $this->aplikasiJakselModel = new aplikasiJakselModel();
        $this->instansiModel       = new instansiModel();
    }
    public function index()
    {
        $data = [
            'title'             => 'Satuan Kerja Jakarta Selatan',
            'kecamatan'         => $this->kecamatanModel->paginate(5),
            'kelurahan'         => $this->kelurahanModel->getKelurahan(),
            'instansi'          => $this->instansiModel->getInstansi(),
            'aplikasi'          => $this->aplikasiJakselModel->getAplikasi(),
            'pager_kecamatan'   => $this->kecamatanModel->pager,
        ];
        return view('pages/index', $data);
    }

    public function getKecamatan()
    {
        $page = $this->request->getVar('page') ?? 1;
        $data = [
            'kecamatan' => $this->kecamatanModel->paginate(5, 'kecamatan', $page),
            'kelurahan' => $this->kelurahanModel->getKelurahan(),
            'pager'     => $this->kecamatanModel->pager
        ];

        return view('partial_pagination/kecamatan_partial', $data);
    }
}
