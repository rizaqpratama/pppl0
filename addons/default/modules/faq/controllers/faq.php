<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Faq extends Public_Controller
{

    /**
     * The constructor
     * @access public
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        $this->lang->load('faq');
        $this->load->driver('Streams');
        $this->template->append_css('module::faq.css');
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
    public function index($offset=0)
    {
        
        $params = array(
            'stream' => 'faqs',
            'namespace' => 'faq'
                        
        );
        


        $faqs = $this->streams->entries->get_entries($params);
        
        $faqs_exist= count($faqs['entries']);
        var_dump($faqs_exist);
        $pagination = create_pagination('faq/', $faqs_exist , 10, 3);
        $params = array(
            'stream' => 'faqs',
            'namespace' => 'faq',
            'limit' => 5,
            'offset'=>$offset*5
        );
        


        $faqs = $this->streams->entries->get_entries($params);
        $faqs_exist= count($faqs);
        
        var_dump($faqs);
        var_dump($pagination);
        
        // Build the page
        $this->template->title($this->module_details['name'])
                ->set('faqs',$faqs)
                ->set('faqs_exist',$faqs_exist)
                ->set('pagination',$pagination)
                ->build('index');
    }

}

/* End of file faq.php */
