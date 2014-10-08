<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>

ERROR - 2014-09-29 00:12:13 --> Query error: Unknown column 'upt' in 'where clause' - Invalid query: SELECT count(*) as `count`
		FROM `default_link-links`
		LEFT JOIN `default_users` as `cb_users` ON `cb_users`.`id`=`default_link-links`.`created_by` LEFT JOIN `default_profiles` as `profiles` ON `profiles`.`user_id`=`default_link-links`.`created_by`
		WHERE (tipe=upt)
		
ERROR - 2014-09-29 00:12:30 --> Query error: Unknown column 'upt' in 'where clause' - Invalid query: SELECT count(*) as `count`
		FROM `default_link-links`
		LEFT JOIN `default_users` as `cb_users` ON `cb_users`.`id`=`default_link-links`.`created_by` LEFT JOIN `default_profiles` as `profiles` ON `profiles`.`user_id`=`default_link-links`.`created_by`
		WHERE (`default_link-links`.`tipe`=upt)
		
