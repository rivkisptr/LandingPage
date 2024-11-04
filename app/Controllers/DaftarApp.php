<?php

namespace App\Controllers;

use App\Models\aplikasiJakselModel;
use App\Models\kecamatanModel;
use App\Models\kelurahanModel;

class DaftarApp extends BaseController
{
    protected $kecamatanModel;
    protected $kelurahanModel;
    protected $aplikasiJakselModel;
    public function __construct()
    {
        $this->kecamatanModel = new kecamatanModel();
        $this->kelurahanModel = new kelurahanModel();
        $this->aplikasiJakselModel = new aplikasiJakselModel();
    }
    public function index()
    {
        $data = [
            'title'             => 'Satuan Kerja Jakarta Selatan',
            'kecamatan'         => $this->kecamatanModel->paginate(5),
            'pager_kecamatan'   => $this->kecamatanModel->pager,
            'kelurahan'         => $this->kelurahanModel->getKelurahan(),
            'aplikasi'          => $this->aplikasiJakselModel->paginate(4),
            'pager'             => $this->aplikasiJakselModel->pager
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

        return view('pages/kecamatan_partial', $data);
    }

    public function getApps()
    {
        $page = $this->request->getVar('page') ?? 1;
        $data['aplikasi'] = $this->aplikasiJakselModel->paginate(4, 'jaksel_app', $page);

        return view('pages/apps_partial', $data);
    }
}
