<div class="my-panel-header">Video</div>
            <div class="my-panel-body">
                
                {{if count>0}}
                <iframe width="280" height="254" src="<?php echo $link;?>" frameborder="0"
                        allowfullscreen></iframe>
                <p>
                    <a href="{{url:site uri='video'}}">Lihat Video Lainnya &gt;&gt;</a>
                </p>
                
                {{endif}}
            </div>