<?php

defined('BASEPATH') OR exit('No direct script access allowed');


class Widget_Video extends Widgets
{

	/**
	 * The translations for the widget title
	 *
	 * @var array
	 */
	public $title = array(
		'en' => 'Video',
		'id' => 'Video'
	);

	/**
	 * The translations for the widget description
	 *
	 * @var array
	 */
	public $description = array(
		'en' => 'video widget',
		'id' => 'widget video',
		
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
		!empty($options['title']) OR $options['title'] = 'Video';


		 $params = array(
            'stream' => 'videos',
            'namespace' => 'video',
            'limit' => 1
        );

       	$video = $this->streams->entries->get_entries($params);
        if(count($video)>0){
                
                $vid= $video['entries'][0];
                
                $link_asli= $vid['link'];
                $link_asli = str_replace("https:","",$link_asli);
                $link_asli = str_replace("http:","",$link_asli);
                $link_asli = str_replace("watch?v=","embed/",$link_asli);
                
                
            }
            
       	$options['video']=$video;
       	$options['count'] =count($video);
        $options['link'] =$link_asli;

		return $options;
	}

}