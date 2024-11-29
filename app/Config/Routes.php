<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'DaftarApp::index');
$routes->get('/dashboard', 'DashboardJakselApp::index');
$routes->get('/dashboard/apptabel', 'DashboardJakselApp::AppTable');
$routes->get('/dashboard/instansitabel', 'DashboardJakselApp::InstansiTable');
$routes->get('/dashboard/createAplikasi', 'DashboardJakselApp::createAplikasi');
$routes->get('/dashboard/edit/(:segment)', 'DashboardJakselApp::edit/$1');
$routes->post('/dashboard/save', 'DashboardJakselApp::save');
$routes->delete('/dashboard/(:num)', 'DashboardJakselApp::delete/$1');
$routes->post('/dashboard/update/(:num)', 'DashboardJakselApp::update/$1');
$routes->get('daftarapp/getKecamatan', 'DaftarApp::getKecamatan');
