<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'DaftarApp::index');
$routes->get('daftarapp/getKecamatan', 'DaftarApp::getKecamatan');
