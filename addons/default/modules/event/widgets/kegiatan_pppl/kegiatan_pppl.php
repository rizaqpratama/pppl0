<?php

defined('BASEPATH') OR exit('No direct script access allowed');


class Widget_Kegiatan_pppl extends Widgets
{

	/**
	 * The translations for the widget title
	 *
	 * @var array
	 */
	public $title = array(
		'en' => 'PPPL Agenda',
		'id' => 'Kegiatan PPPL'
	);

	/**
	 * The translations for the widget description
	 *
	 * @var array
	 */
	public $description = array(
		'en' => 'pppl agenda widget',
		'id' => 'widget kegiatan pppl',
		
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
		!empty($options['judul']) OR $options['judul'] = 'Kegiatan PPPL';


		 $params = array(
            'stream' => 'events',
            'namespace' => 'event',
            'limit' => 1, 
        );

       	$event = $this->streams->entries->get_entries($params);

       	$options['event']=$event;
       	$options['count'] =count($event);      

		return $options;
	}

}