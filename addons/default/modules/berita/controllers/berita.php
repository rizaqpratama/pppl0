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


    public function category($kategori=""){
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

    public function view($slug=""){
        
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
    public function index($page =0)
    {

        
        $params = array(
            'stream' => 'beritas',
            'namespace' => 'berita',
            
        );

        $beritas = $this->streams->entries->get_entries($params);
        $beritas_count = count($beritas['entries'])    ;
        $pagination = create_pagination('berita/', $beritas_count , 5, 3);
        $params = array(
            'stream' => 'beritas',
            'namespace' => 'berita',
            'limit'=>5,
            'offset'=>$page*5
        );
        $beritas = $this->streams->entries->get_entries($params);
        // Build the page
        $this->template->title($this->module_details['name'])
                ->set('beritas',$beritas)
                ->set('beritas_count', $beritas_count)
                ->set('pagination',$pagination)
                ->build('index');
            
        
    }

}

/* End of file faq.php */
