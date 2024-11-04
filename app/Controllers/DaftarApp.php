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
            'title'     => 'Satuan Kerja Jakarta Selatan',
            'kecamatan' => $this->kecamatanModel->getKecamatan(),
            'kelurahan' => $this->kelurahanModel->getKelurahan(),
            'aplikasi'  => $this->aplikasiJakselModel->paginate(4),
            'pager'     => $this->aplikasiJakselModel->pager
        ];
        return view('pages/index', $data);
    }

    public function getApps()
    {
        $page = $this->request->getVar('page') ?? 1;
        $data['aplikasi'] = $this->aplikasiJakselModel->paginate(4, 'jaksel_app', $page);

        return view('pages/apps_partial', $data);
    }
}
