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

    // public function kecamatan()
    // {
    //     $data = [
    //         'title' => 'Daftar Kecamatan',
    //         'kecamatan' => $this->kecamatanModel->getKecamatan(),
    //         'aplikasi_kecamatan' => $this->aplikasiKecamatanModel->getAplikasiKecamatan(),
    //         'aplikasi_per_kecamatan' => []
    //     ];

    //     foreach ($data['kecamatan'] as $kecamatan) {
    //         $aplikasi_per_kecamatan[$kecamatan['slug']] = $this->aplikasiKecamatanModel->getAplikasiKecamatanBySlug($kecamatan['slug']);
    //     }

    //     $data['aplikasi_per_kecamatan'] = $aplikasi_per_kecamatan;
    //     return view('pages/kecamatan', $data);
    // }

    // public function kelurahan()
    // {
    //     $data = [
    //         'title' => 'Daftar Kelurahan',
    //         'kelurahan' => $this->kelurahanModel->getKelurahan()
    //     ];
    //     return view('pages/kelurahan', $data);
    // }

    // public function table()
    // {
    //     $data = [
    //         'title' => 'Contoh Table',
    //     ];
    //     return view('pages/table', $data);
    // }

    // public function ContohTable()
    // {
    //     $data = [
    //         'title' => 'Daftar Kecamatan',
    //         'kecamatan' => $this->kecamatanModel->getKecamatan(),
    //         'aplikasi_kecamatan' => $this->aplikasiKecamatanModel->getAplikasiKecamatan(),
    //         'aplikasi_per_kecamatan' => []
    //     ];

    //     foreach ($data['kecamatan'] as $kecamatan) {
    //         $aplikasi_per_kecamatan[$kecamatan['slug']] = $this->aplikasiKecamatanModel->getAplikasiKecamatanBySlug($kecamatan['slug']);
    //     }

    //     $data['aplikasi_per_kecamatan'] = $aplikasi_per_kecamatan;
    //     return view('pages/table', $data);
    // }
}
