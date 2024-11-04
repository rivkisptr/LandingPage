<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'DaftarApp::index');
$routes->get('/table', 'DaftarApp::table');
$routes->get('/kecamatan', 'DaftarApp::kecamatan');
$routes->get('/kelurahan', 'DaftarApp::kelurahan');
$routes->get('/contohtable', 'DaftarApp::ContohTable');
$routes->get('daftarapp/getApps', 'DaftarApp::getApps');
$routes->get('daftarapp/getKecamatan', 'DaftarApp::getKecamatan');
