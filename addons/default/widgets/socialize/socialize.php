<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Widget_Socialize extends Widgets
{
    // The widget title,  this is displayed in the admin interface
    public $title = 'Socialize';

    //The widget description, this is also displayed in the admin interface.  Keep it brief.
    public $description =  'social link that is awesome.';

    // The author's name
    public $author = 'Some Guy';

    // The authors website for the widget
    public $website = 'http://example.com/';

    //current version of your widget
    public $version = '1.0';

    /**
     * $fields array fore storing widget options in the database.
     * values submited through the widget instance form are serialized and
     * stored in the database.
     */
    public $fields = array(
        		array(
			'field' => 'facebook',
			'label' => 'Facebook link',
			
		),
          		array(
			'field' => 'twitter',
			'label' => 'Twitter link',
			
		),      
        		array(
			'field' => 'gplus',
			'label' => 'Google+ link',
			
		),
        		array(
			'field' => 'youtube',
			'label' => 'Youtube link',
			
		),
        
    );

    /**
     * the $options param is passed by the core Widget class.  If you have
     * stored options in the database,  you must pass the paramater to access
     * them.
     */
    public function run($options)
    {
        return $options;
    }

    /**
     * form() is used to prepare/pass data to the widget admin form
     * data returned from this method will be available to views/form.php
     */
/*
    public function form()
    {
        
    }
*/

    /**
     * save() is used to alter submited data before their insertion in database
     */
/*
    public function save($options)
    {
       if(isset($options['cat']) && !isset($options['bar']){
           $options['bar'] = $options['foo'];
       }
       return $options;
    }
*/
}