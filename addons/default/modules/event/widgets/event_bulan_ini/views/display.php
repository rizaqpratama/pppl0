<div class="my-panel">
            <div class="my-panel-header">{{judul}}</div>
            <div class="my-panel-body">
                <ul class="list-group">

                    {{event.entries}}
                    <li class="list-group-item">{{url:anchor segments="event/view/{{slug}}" class="bold-link" title=nama - waktu_mulai}}</li>

                    {{/event.entries}}
                    
                </ul>

            </div>
        </div>