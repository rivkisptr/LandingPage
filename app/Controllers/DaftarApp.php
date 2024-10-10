<?php

namespace App\Controllers;

class DaftarApp extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Satuan Kerja Jakarta Selatan',
        ];
        return view('pages/index',$data);
    }

    public function kecamatan()
    {
        $data = [
            'title' => 'Daftar Kecamatan',
        ];
        return view('pages/kecamatan',$data);
    }

    public function kelurahan()
    {
        $data = [
            'title' => 'Daftar Kelurahan',
        ];
        return view('pages/kelurahan',$data);
    }

    public function table()
    {
        $data = [
            'title' => 'Contoh Table',
        ];
        return view ('pages/table', $data);
    }
}
