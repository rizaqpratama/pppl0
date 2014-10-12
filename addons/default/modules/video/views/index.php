<div class="content">

<h2>{{ template:title }}</h2>

{{ if videos_exist==true }}
<div id="faq">
        <ul> 
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
<h4>{{ helper:lang line="video:no_kegiatans" }}</h4>
{{ endif }}

</div>