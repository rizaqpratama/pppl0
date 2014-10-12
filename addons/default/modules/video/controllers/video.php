<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Video extends Public_Controller
{

    /**
     * The constructor
     * @access public
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        $this->lang->load('video');
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
    public function index($id=-1)
    {
        
        if($id==-1){
            $params = array(
            'stream' => 'videos',
            'namespace' => 'video',
            'paginate' => 'yes',
            'pag_segment' => 4
            );    
            $videos = $this->streams->entries->get_entries($params);
        $videos_exist= count($videos);

        // Build the page
        $this->template->title($this->module_details['name'])
                ->set('videos',$videos)
                ->set('videos_exist',$videos_exist)
                ->build('index');
            
        }else{
            $params = array(
            'stream' => 'videos',
            'namespace' => 'video',
            'where' => "`default_video-videos`.`id`='$id'"
            );
            $video = $this->streams->entries->get_entries($params);
            $video_exist= count($video);
            $link_asli="";
            if($video_exist>0){
                
                $vid= $video['entries'][0];
                
                $link_asli= $vid['link'];
                $link_asli = str_replace("https:","",$link_asli);
                $link_asli = str_replace("http:","",$link_asli);
                $link_asli = str_replace("watch?v=","embed/",$link_asli);
                
                
            }
            
            
            
            $params = array(
            'stream' => 'videos',
            'namespace' => 'video',
            'paginate' => 'yes',
            'pag_segment' => 4
            );    
            $videos = $this->streams->entries->get_entries($params);
            $videos_exist= count($videos);


        // Build the page
        $this->template->title($this->module_details['name'])
                ->set('video',$video)
                ->set('video_exist',$video_exist)
                ->set('link_asli',$link_asli)
                ->set('videos',$videos)
                ->set('videos_exist',$videos_exist)
                ->build('viewer');
        
        }
        
        
    }

}

/* End of file faq.php */
