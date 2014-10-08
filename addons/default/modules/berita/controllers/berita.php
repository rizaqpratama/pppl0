<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Berita extends Public_Controller
{

    /**
     * The constructor
     * @access public
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        $this->lang->load('berita');
        $this->load->driver('Streams');
        //$this->template->append_css('module::faq.css');
    }


    public function view($kategori=""){
        if($kategori==""){
        $params = array(
            'stream' => 'beritas',
            'namespace' => 'berita',
            'paginate' => 'yes',
            'pag_segment' => 4
         );


        }else{

        $params = array(
            'stream' => 'beritas',
            'namespace' => 'berita',
            'where' => "slug = '$slug'",
            'paginate' => 'yes',
            'pag_segment' => 4
        );

        }
        $beritas = $this->streams->entries->get_entries($params);
        $beritas_count = count($beritas)    ;

        // Build the page
        $this->template->title($this->module_details['name'])
                ->set('beritas',$beritas)
                ->set('beritas_count', $beritas_count)
                ->build('index');



    }


     /**
     * List all FAQs
     *
     * We are using the Streams API to grab
     * data from the faqs database. It handles
     * pagination as well.
     *
     * @access	public
     * @return	void
     */
    public function index($slug ="")
    {

        if($slug==""){
        $params = array(
            'stream' => 'beritas',
            'namespace' => 'berita',
            'paginate' => 'yes',
            'pag_segment' => 4
        );

        $beritas = $this->streams->entries->get_entries($params);
        $beritas_count = count($beritas)    ;

        // Build the page
        $this->template->title($this->module_details['name'])
                ->set('beritas',$beritas)
                ->set('beritas_count', $beritas_count)
                ->build('index');

        }else{

            $params = array(
            'stream' => 'beritas',
            'namespace' => 'berita',
            'where' => "slug = '$slug'",
            'limit' => 1
            );

            $beritas = $this->streams->entries->get_entries($params);
            $beritas_count = count($beritas)    ;

        // Build the page
        $this->template->title($this->module_details['name']."|")
                ->set('berita',$beritas)
                ->set('beritas_count', $beritas_count)
                ->build('berita');


        }
    }

}

/* End of file faq.php */
