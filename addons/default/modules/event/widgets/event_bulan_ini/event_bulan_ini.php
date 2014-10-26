<?php

defined('BASEPATH') OR exit('No direct script access allowed');


class Widget_Event_bulan_ini extends Widgets
{

	/**
	 * The translations for the widget title
	 *
	 * @var array
	 */
	public $title = array(
		'en' => 'Monthly Event',
		'id' => 'Event Bulan Ini'
	);

	/**
	 * The translations for the widget description
	 *
	 * @var array
	 */
	public $description = array(
		'en' => 'pppl event widget',
		'id' => 'widget event pppl',
		
	);

	/**
	 * The author of the widget
	 *
	 * @var string
	 */
	public $author = 'Rizaq';

	/**
	 * The author's website.
	 * 
	 * @var string 
	 */
	public $website = 'http://philsturgeon.co.uk/';

	/**
	 * The version of the widget
	 *
	 * @var string
	 */
	public $version = '1.0.0';

	/**
	 * The fields for customizing the options of the widget.
	 *
	 * @var array 
	 */
	public $fields = array(
		array(
			'field' => 'title',
			'label' => 'Judul',
			'rules' => 'required'
		)
	);

	/**
	 * The main function of the widget.
	 *
	 * @param array $options The options for the AddThis widget.
	 * @return array 
	 */
	public function run($options)
	{
		!empty($options['judul']) OR $options['judul'] = 'Event Bulan Ini';


		 $params = array(
            'stream' => 'events',
            'namespace' => 'event',
            'limit'=>5
        );

       	$event = $this->streams->entries->get_entries($params);

       	$options['event']=$event;
       	$options['count'] =count($event);      

		return $options;
	}

}