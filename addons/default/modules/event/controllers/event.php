<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Event extends Public_Controller
{

    /**
     * The constructor
     * @access public
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        $this->lang->load('event');
        $this->load->driver('Streams');
        //$this->template->append_css('module::faq.css');
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
    public function index()
    {
        $params = array(
            'stream' => 'events',
            'namespace' => 'event',
            'paginate' => 'yes',
            'pag_segment' => 4
        );

        $beritas = $this->streams->entries->get_entries($params);
        $beritas_count =count($beritas);

        // Build the page
        $this->template->title($this->module_details['name'])
                ->set('beritas',$beritas)
                ->set('beritas_count', $beritas_count)
                ->build('index');
    }


    public function view($slug=''){
        $params = array(
            'stream' => 'events',
            'namespace' => 'event',
            'where' => "slug = '$slug'",
            'limit' => 1
            );

            $beritas = $this->streams->entries->get_entries($params);
            $beritas_count = count($beritas)    ;

        // Build the page
        $this->template->title($this->module_details['name']."|")
                ->set('berita',$beritas)
                ->set('beritas_count', $beritas_count)
                ->build('events');



    }

}

/* End of file faq.php */
