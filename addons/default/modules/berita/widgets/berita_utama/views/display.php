<div class="my-panel">


                <div class="my-panel-header"> {{title}}</div>
                <div class="my-panel-body-dark">

                    {{berita.entries}}
                    <div class="row">
                        <div class="col-lg-12">
                            <h4>{{judul}}</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-7">
                            {{helper:character_limiter string=preview limit=240}}
                        </div>
                        <div class="col-lg-5">

                            <img src="{{gambar:image}}" width="220px">
                        </div>
                    </div>
                    {{/berita.entries}}
                </div>


            </div>