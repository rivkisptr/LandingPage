<?php

namespace App\Controllers;

use App\Models\aplikasiJakselModel;
use App\Models\instansiModel;

class DashboardJakselApp extends BaseController
{
    protected $aplikasiJakselModel;
    protected $instansiModel;
    public function __construct()
    {
        $this->aplikasiJakselModel = new aplikasiJakselModel();
        $this->instansiModel = new instansiModel();
    }
    public function index()
    {
        $data = [
            'title'         => 'Home',
            'totalAplikasi' => $this->aplikasiJakselModel->countAllResults(),
            'totalInstansi' => $this->instansiModel->countAllResults()
        ];
        return view('dashboard/index', $data);
    }

    public function AppTable()
    {
        $currentPage = $this->request->getVar('page_aplikasi') ? $this->request->getVar('page_aplikasi') : 1;

        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $aplikasi = $this->aplikasiJakselModel->search($keyword);
        } else {
            $aplikasi = $this->aplikasiJakselModel;
        }

        $data = [
            'title'       => 'App Tabel',
            'aplikasi'    => $aplikasi->paginate(5, 'aplikasi'),
            'pager'       => $this->aplikasiJakselModel->pager,
            'currentPage' => $currentPage,
            'keyword'     => $keyword
        ];
        return view('dashboard/aplikasi_table', $data);
    }

    public function InstansiTable()
    {
        $data = [
            'title'    => 'Instansi Tabel',
            'instansi' => $this->instansiModel->getInstansi()
        ];
        return view('dashboard/instansi_table', $data);
    }

    public function createInstansi()
    {
        $data = [
            'title' => 'Create Instansi'
        ];

        return view('dashboard/add_instansi', $data);
    }

    public function createAplikasi()
    {
        $data = [
            'title'    => 'Create Aplikasi',
            'instansi' => $this->instansiModel->getInstansi()
        ];

        return view('dashboard/add_aplikasi', $data);
    }

    public function save()
    {
        if (!$this->validate([
            'img' => [
                'rules' => 'mime_in[img,image/jpg,image/jpeg,image/png]|max_size[img,5120]|is_image[img]',
                'errors' => [
                    'mime_in'  => 'Gambar harus berupa JPG/JPEG/PNG',
                    'max_size' => 'Gambar terlalu besar',
                    'is_image' => 'Gambar harus berupa JPG/JPEG/PNG',
                ]
            ]
        ])) {
            return redirect()->to('/dashboard/createAplikasi')->withInput();
        }

        $img = $this->request->getFile('img');

        // CEK Image Terupload atau Tidak
        if ($img->getError() == 4) {
            $imgName = 'JakselApp.png';
        } else {
            $imgName = $img->getRandomName();
            $img->move('assets/img/Jakselapp', $imgName);
        }

        $this->aplikasiJakselModel->save([
            'nama_aplikasi' => $this->request->getVar('nama_aplikasi'),
            'deskripsi'     => $this->request->getVar('deskripsi'),
            'link'          => $this->request->getVar('link'),
            'slug_instansi' => $this->request->getVar('sudin_bagian'),
            'img'           => $imgName
        ]);

        session()->setFlashdata('pesan', 'Aplikasi Berhasil ditambahkan');
        return redirect()->to('/dashboard/apptabel');
    }

    public function delete($id)
    {
        $app = $this->aplikasiJakselModel->find($id);

        if ($app['img'] != 'JakselApp.png') {
            unlink('assets/img/Jakselapp/' . $app['img']);
        }

        $this->aplikasiJakselModel->delete($id);
        session()->setFlashdata('pesan', 'Aplikasi Berhasil dihapus');
        return redirect()->to('/dashboard/apptabel');
    }

    public function edit($id)
    {
        $data = [
            'title'    => 'Edit Aplikasi',
            'aplikasi' => $this->aplikasiJakselModel->getAplikasi($id),
            'instansi' => $this->instansiModel->getInstansi()
        ];

        return view('dashboard/edit_aplikasi', $data);
    }

    public function update($id)
    {
        if (!$this->validate([
            'img' => [
                'rules' => 'mime_in[img,image/jpg,image/jpeg,image/png]|max_size[img,5120]|is_image[img]',
                'errors' => [
                    'mime_in'  => 'Gambar harus berupa JPG/JPEG/PNG',
                    'max_size' => 'Gambar terlalu besar',
                    'is_image' => 'Gambar harus berupa JPG/JPEG/PNG',
                ]
            ]
        ])) {
            return redirect()->to('/dashboard/edit/' . $id)->withInput();
        }

        $img = $this->request->getFile('img');
        if ($img->getError() == 4) {
            $imgName = $this->request->getVar('imgLama');
        } else {
            $imgName = $img->getRandomName();
            $img->move('assets/img/Jakselapp', $imgName);
            if ($this->request->getVar('imgLama') != 'JakselApp.png') {
                unlink('assets/img/Jakselapp/' . $this->request->getVar('imgLama'));
            }
        }

        $this->aplikasiJakselModel->save([
            'id'            => $id,
            'nama_aplikasi' => $this->request->getVar('nama_aplikasi'),
            'deskripsi'     => $this->request->getVar('deskripsi'),
            'link'          => $this->request->getVar('link'),
            'slug_instansi' => $this->request->getVar('sudin_bagian'),
            'img'           => $imgName
        ]);

        session()->setFlashdata('pesan', 'Aplikasi Berhasil diedit');
        return redirect()->to('/dashboard/apptabel');
    }
}
