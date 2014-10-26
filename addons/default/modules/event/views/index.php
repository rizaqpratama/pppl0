<div class="content">

<h2>{{ template:title }}</h2>
<em>Kegiatan kegiatan Dirjen PP & PL</em>
{{ if beritas_count > 0 }}
<div id="berita">
    
    {{ beritas.entries.pagination }}
    <ul class="list-unstyled">
    {{beritas.entries}}
    <li> 
        <h5>{{nama}}</h5>
        <em>Lokasi : {{lokasi}}</em>
        <p>
           <a href={{url:site uri="event/view"}}/{{slug}}>View Detail</a>

        </p>

    </li>


    {{/beritas.entries}}
    </ul>


    
</div>
{{ else }}
<h4>{{ helper:lang line="berita:no_beritas" }}</h4>
{{ endif }}

</div>