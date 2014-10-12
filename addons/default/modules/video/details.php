<?php defined('BASEPATH') or exit('No direct script access allowed');

class Module_Video extends Module
{
    public $version = '1.0';

    public function info()
    {
        return array(
            'name' => array(
                'en' => 'Video'
            ),
            'description' => array(
                'en' => 'Video Ditjen PPPL'
            ),
            'frontend' => true,
            'backend' => true,
            'menu' => 'content',
            'sections' => array(
                'video' => array(
                    'name' => 'video:videos',
                    'uri' => 'admin/video',
                    'shortcuts' => array(
                        'create' => array(
                            'name' => 'video:new',
                            'uri' => 'admin/video/create',
                            'class' => 'add'
                        )
                    )
                )
            )
        );
    }

    /**
     * Install
     *
     * This function will set up our
     * FAQ/Category streams.
     */
    public function install()
    {
        // We're using the streams API to
        // do data setup.
        $this->load->driver('Streams');

        $this->load->language('video/video');
        $namespace="video";

        // Add faqs streams
        if ( ! $this->streams->streams->add_stream('lang:video:video', 'videos', $namespace, $namespace.'-', null)) return false;
        

        //$faq_categories

        // Add some fields
        $fields = array(
            array(
                'name' => 'Nama',
                'slug' => 'nama',
                'namespace' => $namespace,
                'type' => 'text',
                'extra' => array('max_length' => 200),
                'assign' => 'videos',
                'title_column' => true,
                'required' => true
                
            ),
            array(
                'name' => 'Deskripsi',
                'slug' => 'deskripsi',
                'namespace' => $namespace,
                'type' => 'wysiwyg',
                'assign' => 'videos',
                'required' => true,
                'extra' => array(
                    'editor_type' => 'advanced'
                )
            ),
            array(
                'name' => 'Link',
                'slug' => 'link',
                'namespace' => $namespace,
                'type' => 'url',
                'assign' => 'videos'
                
            )
        );

        $this->streams->fields->add_fields($fields);

        $this->streams->streams->update_stream('videos', $namespace, array(
            'view_options' => array(
                'id',
                'nama',
                'deskripsi',
                'link',
                
            )
        ));

        

        return true;
    }

    /**
     * Uninstall
     *
     * Uninstall our module - this should tear down
     * all information associated with it.
     */
    public function uninstall()
    {
        $this->load->driver('Streams');

        // For this teardown we are using the simple remove_namespace
        // utility in the Streams API Utilties driver.
        $this->streams->utilities->remove_namespace('videos');

        return true;
    }

    public function upgrade($old_version)
    {
        return true;
    }

    public function help()
    {
        // Return a string containing help info
        // You could include a file and return it here.
        return "No documentation has been added for this module.<br />Contact the module developer for assistance.";
    }

}