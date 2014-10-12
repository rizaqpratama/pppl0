<?php

defined('BASEPATH') OR exit('No direct script access allowed');


class Widget_Cerita_daerah extends Widgets
{

	/**
	 * The translations for the widget title
	 *
	 * @var array
	 */
	public $title = array(
		'en' => 'Story from country',
		'id' => 'Cerita dari daerah'
	);

	/**
	 * The translations for the widget description
	 *
	 * @var array
	 */
	public $description = array(
		'en' => 'country story widget',
		'id' => 'widget cerita daerah',
		
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
		!empty($options['title']) OR $options['title'] = 'Cerita Daerah';


		$params = array(
            'stream' => 'beritas',
            'namespace' => 'berita',
            'where' => "kategori = 'Daerah'"
            
            
        );

       	$berita = $this->streams->entries->get_entries($params);

       	$options['berita']=$berita;
       	$options['count'] =count($berita);      

		return $options;
	}

}