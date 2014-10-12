<div class="row">
<div class="col-lg-8">
    
    {{video.entries}}
<iframe width="640" height="480" src=<?php echo $link_asli;?> frameborder="0" allowfullscreen></iframe>

    {{/video.entries}}
</div>
<div class="col-lg-4">
    <span>Another video</span>
    {{ if videos_exist==true }}
<div id="faq">
        <ul class="list-unstyled"> 
            {{ videos.entries }}
            <li class="answer">
                <a href={{url:site uri="video"}}/{{id}}>
                <h4 id="{{ id }}">{{ nama }}</h4>
                <p>{{ deskripsi }}</p>
                </a>
            </li>
            {{ /videos.entries }}
        </ul>

</div>
{{ else }}
<h4>{{ helper:lang line="video:no_videos" }}</h4>
{{ endif }}

</div>


</div>
<br/>
