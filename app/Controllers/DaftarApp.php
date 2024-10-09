<?php

namespace App\Controllers;

class DaftarApp extends BaseController
{
    public function index()
    {
        return view('pages/index');
    }

    public function table()
    {
        return view ('pages/table');
    }
}
