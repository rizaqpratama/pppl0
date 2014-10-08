  <div class="my-panel">
            <div class="my-panel-header">Kegiatan PPPL</div>
            <div class="my-panel-body">
                {{if count>0}}
                {{event.entries}}
                <h5>{{url:anchor segments="event/view/{{slug}}"  title=nama}}</h5>
                {{if gambar}}
                <img src="{{gambar:image}}" width="250px">
                {{endif}}

                <p>{{helper:character_limiter string=deskripsi limit=250}} </p>

                {{/event.entries}}
                {{endif}}

            </div>
        </div>