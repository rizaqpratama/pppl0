<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');

$route['video/admin/categories(:any)'] = 'admin_categories$1';
$route['video/admin/streams(:any)'] = 'admin_streams$1';
$route['video/(:num)']='video/index/$1';