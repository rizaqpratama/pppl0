<?php defined('BASEPATH') or exit('No direct script access allowed');

class Module_Berita extends Module
{
    public $version = '1.0';

    public function info()
    {
        return array(
            'name' => array(
                'en' => 'News',
                'id' => 'Berita'
                
            ),
            'description' => array(
                'en' => 'News module',
                'id' => 'Modul berita' 
                
            ),
            'frontend' => true,
            'backend' => true,
            'menu' => 'content',
            'sections' => array(
                'berita' => array(
                    'name' => 'berita:beritas',
                    'uri' => 'admin/berita',
                    'shortcuts' => array(
                        'create' => array(
                            'name' => 'berita:new',
                            'uri' => 'admin/berita/create',
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

        $this->load->language('berita/berita');

        // Add faqs streams
        if ( ! $this->streams->streams->add_stream('lang:berita:beritas', 'beritas', 'berita', 'berita_', null)) return false;
        

        //$faq_categories

        // Add some fields
        $fields = array(
            array(
                'name' => 'Judul',
                'slug' => 'judul',
                'namespace' => 'berita',
                'type' => 'text',
                'extra' => array('max_length' => 200),
                'assign' => 'beritas',
                'title_column' => true,
                'required' => true,
                'unique' => true
            ),
            array(
                'namespace'=>'berita',
                'assign' => 'beritas',
                'name'=> 'Slug',
                'slug' => 'slug',
                'type' => 'slug',
                'extra' => array(
                    'space_type' => '-',
                    'slug_field' => 'judul'
                    ),
                'title_column' => false,
                'required' => true,
                'unique' => true
            
            ),
            
            array(
                'name' => 'Berita',
                'slug' => 'berita',
                'namespace' => 'berita',
                'type' => 'wysiwyg',
                'assign' => 'beritas',
                'required' => true
            ),
            array(
                'namespace' => 'berita',
                'assign' => 'beritas',
                'name' => 'Kategori Berita',
                'slug' => 'kategori',
                'type' => 'choice',
                'extra' => array(
                    'choice_data' => "Wabah\nDaerah\nUmum",
                    'choice_type' => 'radio'
                ),
                'required'=> true
                
                
            ),
            array(
                'namespace' => 'berita',
                'assign' => 'beritas',
                'name' => 'Berita Utama',
                'slug' => 'berita_utama',
                'type' => 'choice',
                'extra' => array(
                    'choice_data' => "Yes",
                    'choice_type' => "checkboxes"
                ),
                'required' =>false
            ),
            array(
                'namespace' => 'berita',
                'assign' => 'beritas',
                'name' => 'Header Gambar',
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

        $this->streams->streams->update_stream('beritas', 'berita', array(
            'view_options' => array(
                'id',
                'judul',
                'slug',
                'kategori'
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
        $this->streams->utilities->remove_namespace('berita');

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