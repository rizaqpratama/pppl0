<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Widget_Category_show extends Widgets
{
    // The widget title,  this is displayed in the admin interface
    public $title = 'Category Show';

    //The widget description, this is also displayed in the admin interface.  Keep it brief.
    public $description =  'Display blog catgories that is awesome.';

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
			'field' => 'category',
			'label' => 'Blog Category to Show',
			'rules' => 'required'
		)
    );

    /**
     * the $options param is passed by the core Widget class.  If you have
     * stored options in the database,  you must pass the paramater to access
     * them.
     */
    public function run($options)
    {
        if(empty($options['category']))
        {
            //return an array of data that will be parsed by views/display.php
            return array('output' => '');
        }

        // Store the feed items
        $this->load->model('blog/blog_categories_m');
        
        $category = $this->blog_categories_m->get_by('slug', $options['category']);
        
        $params = array(
			'stream'		=> 'blog',
			'namespace'		=> 'blogs',
			'limit'			=> 5,
			'where'			=> "`status` = 'live' AND `category_id` = '{$category->id}'",
			);
		$posts = $this->streams->entries->get_entries($params);
        $data=array();
        
        if($posts['entries']){
            foreach($posts['entries'] as $entry)
            $data[]=array(
                'title' =>$entry['title'],
                'slug'=>$entry['slug']
            );
            
        }
        
        return array('data'=>$data,
                    'options'=>$options
                    );
    }

    /**
     * form() is used to prepare/pass data to the widget admin form
     * data returned from this method will be available to views/form.php
     */
    public function form()
    {
        $this->load->model('blog/blog_categories_m');

		$categories = $this->blog_categories_m->order_by('title')->get_all();
        
        $cats=array();
        $cats[]="";
        foreach($categories as $cat){
            $cats[$cat->slug]=$cat->slug;
        }
        return array('categories' => $cats);
    }

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