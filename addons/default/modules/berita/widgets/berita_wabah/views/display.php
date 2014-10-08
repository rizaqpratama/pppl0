<div class="my-panel-header">{{judul}}</div>
            <div class="my-panel-body">
                <ul class="list-group">

                    {{berita.entries}}
                    <li class="list-group-item">{{url:anchor segments="berita/view/{{slug}}" class="bold-link" title=judul}}

                        <p>{{helper:character_limiter string=berita limit=140}}</p>
                    </li>
                    {{/berita.entries}}

                </ul>

            </div>