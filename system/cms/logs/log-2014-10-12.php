<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>

ERROR - 2014-10-12 06:35:23 --> Page Missing: img/small.jpg
ERROR - 2014-10-12 07:39:35 --> Severity: Warning  --> unlink(C:/wamp/www/pppl/uploads/default/video.zip) [<a href='function.unlink'>function.unlink</a>]: Permission denied C:\wamp\www\pppl\system\cms\modules\addons\controllers\admin_modules.php 106
ERROR - 2014-10-12 07:50:03 --> Page Missing: img/small.jpg
ERROR - 2014-10-12 07:58:04 --> Query error: Column 'id' in where clause is ambiguous - Invalid query: SELECT `default_video-videos`.*, `cb_users`.`id` as `created_by||user_id`, `cb_users`.`email` as `created_by||email`, `cb_users`.`username` as `created_by||username`, `profiles`.`display_name` as `created_by||display_name`
		FROM `default_video-videos`
		LEFT JOIN `default_users` as `cb_users` ON `cb_users`.`id`=`default_video-videos`.`created_by` LEFT JOIN `default_profiles` as `profiles` ON `profiles`.`user_id`=`default_video-videos`.`created_by`
		WHERE (id='1')
		
		ORDER BY `default_video-videos`.`created` DESC 
ERROR - 2014-10-12 07:58:51 --> Query error: Unknown column 'default_video' in 'where clause' - Invalid query: SELECT `default_video-videos`.*, `cb_users`.`id` as `created_by||user_id`, `cb_users`.`email` as `created_by||email`, `cb_users`.`username` as `created_by||username`, `profiles`.`display_name` as `created_by||display_name`
		FROM `default_video-videos`
		LEFT JOIN `default_users` as `cb_users` ON `cb_users`.`id`=`default_video-videos`.`created_by` LEFT JOIN `default_profiles` as `profiles` ON `profiles`.`user_id`=`default_video-videos`.`created_by`
		WHERE (default_video-videos.id='1')
		
		ORDER BY `default_video-videos`.`created` DESC 
ERROR - 2014-10-12 07:59:55 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '.id='1')
		
		ORDER BY `default_video-videos`.`created` DESC' at line 4 - Invalid query: SELECT `default_video-videos`.*, `cb_users`.`id` as `created_by||user_id`, `cb_users`.`email` as `created_by||email`, `cb_users`.`username` as `created_by||username`, `profiles`.`display_name` as `created_by||display_name`
		FROM `default_video-videos`
		LEFT JOIN `default_users` as `cb_users` ON `cb_users`.`id`=`default_video-videos`.`created_by` LEFT JOIN `default_profiles` as `profiles` ON `profiles`.`user_id`=`default_video-videos`.`created_by`
		WHERE ('default_video-videos'.id='1')
		
		ORDER BY `default_video-videos`.`created` DESC 
ERROR - 2014-10-12 08:00:14 --> Severity: Notice  --> Undefined variable: videos C:\wamp\www\pppl\addons\default\modules\video\controllers\video.php 54
ERROR - 2014-10-12 08:07:04 --> Severity: Notice  --> Trying to get property of non-object C:\wamp\www\pppl\addons\default\modules\video\controllers\video.php 58
ERROR - 2014-10-12 08:07:04 --> Severity: Notice  --> Trying to get property of non-object C:\wamp\www\pppl\addons\default\modules\video\controllers\video.php 60
ERROR - 2014-10-12 08:07:43 --> Severity: Notice  --> Trying to get property of non-object C:\wamp\www\pppl\addons\default\modules\video\controllers\video.php 58
ERROR - 2014-10-12 08:16:31 --> Page Missing: img/small.jpg
ERROR - 2014-10-12 08:27:30 --> Severity: Notice  --> Undefined variable: link C:\wamp\www\pppl\addons\default\modules\video\widgets\video\views\display.php 5
ERROR - 2014-10-12 08:27:31 --> Page Missing: img/small.jpg
ERROR - 2014-10-12 08:28:12 --> Severity: Notice  --> Undefined variable: link C:\wamp\www\pppl\addons\default\modules\video\widgets\video\views\display.php 3
ERROR - 2014-10-12 08:28:12 --> Severity: Notice  --> Undefined variable: link C:\wamp\www\pppl\addons\default\modules\video\widgets\video\views\display.php 5
ERROR - 2014-10-12 08:28:14 --> Page Missing: img/small.jpg
ERROR - 2014-10-12 08:28:29 --> Page Missing: img/small.jpg
ERROR - 2014-10-12 08:28:49 --> Page Missing: img/small.jpg
ERROR - 2014-10-12 08:29:25 --> Page Missing: img/small.jpg
ERROR - 2014-10-12 08:29:37 --> Page Missing: img/small.jpg
ERROR - 2014-10-12 08:30:00 --> Page Missing: img/small.jpg
ERROR - 2014-10-12 08:30:45 --> Page Missing: img/small.jpg
ERROR - 2014-10-12 08:31:04 --> Page Missing: img/small.jpg
ERROR - 2014-10-12 08:50:08 --> Page Missing: img/small.jpg
ERROR - 2014-10-12 08:50:54 --> Page Missing: img/small.jpg
ERROR - 2014-10-12 08:51:08 --> Page Missing: img/small.jpg
