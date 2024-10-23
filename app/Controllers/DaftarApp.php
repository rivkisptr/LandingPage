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
        $this->aplikasiKecamatanModel = new aplikasiKecamatanModel();
    }
    public function index()
    {
        $data = [
            'title' => 'Satuan Kerja Jakarta Selatan',
            'kecamatan' => $this->kecamatanModel->getKecamatan(),
            'kelurahan' => $this->kelurahanModel->getKelurahan()
        ];
        return view('pages/index', $data);
    }

    public function kecamatan()
    {
        $data = [
            'title' => 'Daftar Kecamatan',
            'kecamatan' => $this->kecamatanModel->getKecamatan(),
            'aplikasi_kecamatan' => $this->aplikasiKecamatanModel->getAplikasiKecamatan(),
            'aplikasi_per_kecamatan' => []
        ];

        foreach ($data['kecamatan'] as $kecamatan) {
            $aplikasi_per_kecamatan[$kecamatan['slug']] = $this->aplikasiKecamatanModel->getAplikasiKecamatanBySlug($kecamatan['slug']);
        }

        $data['aplikasi_per_kecamatan'] = $aplikasi_per_kecamatan;
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

    // public function table()
    // {
    //     $data = [
    //         'title' => 'Contoh Table',
    //     ];
    //     return view('pages/table', $data);
    // }

    public function ContohTable()
    {
        $data = [
            'title' => 'Daftar Kecamatan',
            'kecamatan' => $this->kecamatanModel->getKecamatan(),
            'aplikasi_kecamatan' => $this->aplikasiKecamatanModel->getAplikasiKecamatan(),
            'aplikasi_per_kecamatan' => []
        ];

        foreach ($data['kecamatan'] as $kecamatan) {
            $aplikasi_per_kecamatan[$kecamatan['slug']] = $this->aplikasiKecamatanModel->getAplikasiKecamatanBySlug($kecamatan['slug']);
        }

        $data['aplikasi_per_kecamatan'] = $aplikasi_per_kecamatan;
        return view('pages/table', $data);
    }
}
