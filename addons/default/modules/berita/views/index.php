<div class="content">

<h2>{{ template:title }}</h2>

{{ if beritas_count > 0 }}
<div id="berita">
    <h3>{{ helper:lang line="berita:questions" }}</h3>
    {{ pagination:links }}
    <div id="questions">
        <ol>
            {{ beritas.entries }}
            <li>{{ url:anchor segments="berita/#{{ id }}" title="{{ question }}" class="question" }}</li>
            {{ /beritas.entries }}
        </ol>
    </div>
    <div id="answers">
        <h3>{{ helper:lang line="berita:answers" }}</h3>
        <ol> 
            {{ beritas.entries }}
            <li class="answer">
                <h4 id="{{ id }}">{{ judul }}</h4>
                <p>{{ berita }}</p>
            </li>
            {{ /beritas.entries }}
        </ol>
    </div>
</div>
{{ else }}
<h4>{{ helper:lang line="berita:no_beritas" }}</h4>
{{ endif }}

</div>