<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');

$route['berita/admin/categories(:any)'] = 'admin_categories$1';
$route['berita/admin/streams(:any)'] = 'admin_streams$1';
$route['berita/(:num)']='berita/index/$1';
$route['berita/view/(:any)'] = 'berita/view/$1';
$route['berita/kategori/(:any)']='berita/category/$1';