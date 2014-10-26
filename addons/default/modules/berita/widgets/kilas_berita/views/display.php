<style type="text/css">
.sliderContent{
    padding-left:10px;
    padding-right:10px;
    
}
    
    .sliderContainer{
        padding : 10px;
        background: #eaeaea;
        
    }
</style>

{{theme:css file="jquery.bxslider.css"}}
{{theme:js file="jquery.bxslider.js"}}

<div class="my-panel">
            <div class="my-panel-header">{{title}}</div>
            <div class="my-panel-body">
                <div class="sliderContainer">
                <ul class="bxslider">
                    {{berita.entries}}
                <li>
                <div class="sliderContent">
                    <h4>{{judul}}</h4>
                            <p style="margin-left: 5px">{{preview}}
                            </p>    
                            <p>
                                <small><a href={{url:site uri="berita/view"}}/{{slug}}>Read More..</a></small>
                            </p>
                </div>
                    
                </li>
                {{/berita.entries}}
                </ul>
                </div>
                
                
                
            </div>
        </div>
    
    <script>
    $('.bxslider').bxSlider(
        {
            auto :true
            
        }
    );
    </script>