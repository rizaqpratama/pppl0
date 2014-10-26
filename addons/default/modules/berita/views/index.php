<div class="content">

<h3>{{ template:title }}</h3>
    

{{ if beritas_count > 0 }}
<div id="berita">
    
    
    
    
        
        <ul class="list-unstyled"> 
                    
            {{ beritas.entries }}
            <li >
                <h4 id="{{ id }}">{{ judul }}</h4>
                <p>{{helper:word_limiter string=preview limit=100}}</p>
                <a href={{url:site uri="berita/view/"}}/{{slug}} >Read more ..</a>
            </li>
            {{ /beritas.entries }}
            
        </ul>
        {{ pagination:links }}
</div>
{{ else }}
<h4>{{ helper:lang line="berita:no_beritas" }}</h4>
{{ endif }}

</div>

<style>
.pagination ul{
    list-style:none;
}
    .pagination ul li{
        display:inline;
        margin:10px
    }
</style>