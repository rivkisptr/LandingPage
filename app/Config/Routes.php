<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'DaftarApp::index');
$routes->get('/table', 'DaftarApp::table');
$routes->get('/kecamatan', 'DaftarApp::kecamatan');
$routes->get('/kelurahan', 'DaftarApp::kelurahan');
