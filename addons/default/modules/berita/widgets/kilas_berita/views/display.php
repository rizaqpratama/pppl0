<style type="text/css">
/*#####################
Additional Styles (required)
######################*/
.carousel-indicators {
    bottom:-40px;
    left:0;
    width:100%;
    background:#ccc;
    padding: 6px 0px;
    margin-left:0;
    border-top:2px solid #fff;
}
.carousel-indicators li {
    width:12px;
    height:12px;    
    background:#fff;
    border-color:#fff;

}
.carousel-indicators .active {
    width:14px;
    height:14px;
    background:#428bca;
    border-color:#428bca;
}
.carousel-inner .thumbnail {
    margin-bottom:0;
    border-bottom-left-radius:0;
    border-bottom-right-radius:0;
}
.carousel-inner .caption {
    background:#ddd;
    padding: 10px;
}

</style>

<div class="my-panel">
            <div class="my-panel-header">{{judul}}</div>
            <div class="my-panel-body">

                <div id="myCarousel" class="carousel slide">        
                <div class="carousel-inner">           
                    {{berita.entries}}
                    <div class="item active"> 
                        <a href="#"><img class="thumbnail" src="http://placehold.it/600x400/" alt="Slide1"></a>
                        <div class="caption">
                          <h4>{{judul}}</h4>
                            <p style="margin-left: 5px">{{helper:character_limiter string=berita limit=140}}
                            </p>
                        </div>
                    </div>
                    {{/berita.entries}}
                </div>  

                 <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                  </ol>                                                                                
                </div>



                <!-- {{berita.entries}}
                <div>
                <h4>{{judul}}</h4>
                <img src="{{gambar:image}}" align="left"/>

                <p style="margin-left: 5px">{{helper:character_limiter string=berita limit=140}}
                </p>
                </div>
                {{/berita.entries}} -->
            </div>
        </div>
    
    <script>
    $('#myCarousel').carousel({
        interval:   4000
    });
    </script>