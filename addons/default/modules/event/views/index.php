<div class="content">

<h2>{{ template:title }}</h2>

{{ if beritas_count > 0 }}
<div id="berita">
    
    {{ pagination:links }}
    <ul class="list-unstyled">
    {{beritas.entries}}
    <li> 
        <h5>{{nama}}</h5>
        <em>Lokasi : {{lokasi}}</em>
        <p>
            {{deskripsi}}

        </p>

    </li>


    {{/beritas.entries}}
    </ul>


    
</div>
{{ else }}
<h4>{{ helper:lang line="berita:no_beritas" }}</h4>
{{ endif }}

</div>