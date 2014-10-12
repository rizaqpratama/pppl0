<div class="content">

<h3>{{ template:title }}</h3>
    

{{ if beritas_count > 0 }}
<div id="berita">
    
    {{ pagination:links }}
    
    <div id="answers">
        
        <ul class="list-unstyled"> 
            {{ beritas.entries }}
            <li class="answer">
                <h4 id="{{ id }}">{{ judul }}</h4>
                <p>{{ berita }}</p>
            </li>
            {{ /beritas.entries }}
        </ul>
    </div>
</div>
{{ else }}
<h4>{{ helper:lang line="berita:no_beritas" }}</h4>
{{ endif }}

</div>