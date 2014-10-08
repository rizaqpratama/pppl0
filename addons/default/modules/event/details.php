<?php defined('BASEPATH') or exit('No direct script access allowed');

class Module_Event extends Module
{
    public $version = '1.0';

    public function info()
    {
        return array(
            'name' => array(
                'en' => 'Event',
                'id' => 'Kegiatan'
                
            ),
            'description' => array(
                'en' => 'Event module',
                'id' => 'Modul Kegiatan' 
                
            ),
            'frontend' => true,
            'backend' => true,
            'menu' => 'content',
            'sections' => array(
                'event' => array(
                    'name' => 'event:events',
                    'uri' => 'admin/event',
                    'shortcuts' => array(
                        'create' => array(
                            'name' => 'event:new',
                            'uri' => 'admin/event/create',
                            'class' => 'add'
                        )
                    )
                )
                /*,
                'categories' => array(
                    'name' => 'faq:categories',
                    'uri' => 'admin/faq/categories/index',
                    'shortcuts' => array(
                        'create' => array(
                            'name' => 'faq:category:new',
                            'uri' => 'admin/faq/categories/create',
                            'class' => 'add'
                        )
                    )
                )*/
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

        $this->load->language('event/event');

        // Add faqs streams
        if ( ! $this->streams->streams->add_stream('lang:event:events', 'events', 'event', 'event_', null)) return false;
        

        //$faq_categories

        // Add some fields
        $fields = array(
            array(
                'name' => 'Nama Kegiatan',
                'slug' => 'nama',
                'namespace' => 'event',
                'type' => 'text',
                'extra' => array('max_length' => 200),
                'assign' => 'events',
                'title_column' => true,
                'required' => true,
                'unique' => true
            ),
            array(
                'namespace'=>'event',
                'assign' => 'events',
                'name'=> 'Slug',
                'slug' => 'slug',
                'type' => 'slug',
                'extra' => array(
                    'space_type' => '-',
                    'slug_field' => 'nama'
                    ),
                'title_column' => false,
                'required' => true,
                'unique' => true
            
            ),
            
            array(
                'name' => 'Deskripsi Kegiatan',
                'slug' => 'deskripsi',
                'namespace' => 'event',
                'type' => 'wysiwyg',
                'assign' => 'events',
                'required' => true
            ),
            array(
                'name' => 'Waktu Mulai',
                'slug' => 'waktu_mulai',
                'namespace' => 'event',
                'assign' => 'events',
                'type' =>'datetime',
                'extra'=> array(
                    'use_time' => 'yes',
                    'input_type' => 'datepicker'
                    )
            ),
            array(
                'name' => 'Waktu Selesai',
                'slug' => 'waktu_selesai',
                'namespace' => 'event',
                'assign' => 'events',
                'type' =>'datetime',
                'extra'=> array(
                    'use_time' => 'yes',
                    'input_type' => 'datepicker'
                    )
            ),
            array(
                'name' => 'Lokasi',
                'slug'=> 'lokasi',
                'namespace' => 'event',
                'assign' => 'events',
                'type' => 'text'
            ),
            array(
                'namespace' => 'event',
                'assign' => 'events',
                'name' => 'Gambar Kegiatan',
                'slug' => 'gambar',
                'type' => 'image',
                'extra' => array(
                    'folder' => 1
                )
            )
            
         /*   ,
            
            array(
                'name' => 'Title',
                'slug' => 'faq_category_title',
                'namespace' => 'faq',
                'type' => 'text',
                'assign' => 'categories',
                'title_column' => true,
                'required' => true,
                'unique' => true
            ),
            array(
                'name' => 'Category',
                'slug' => 'faq_category_select',
                'namespace' => 'faq',
                'type' => 'relationship',
                'assign' => 'faqs',
                'extra' => array('choose_stream' => $categories_stream_id)
            )*/
        );

        $this->streams->fields->add_fields($fields);

        $this->streams->streams->update_stream('events', 'event', array(
            'view_options' => array(
                'id',
                'nama',
                'waktu_mulai',
                'waktu_selesai'
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
        $this->streams->utilities->remove_namespace('event');

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