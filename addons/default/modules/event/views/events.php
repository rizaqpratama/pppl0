<div class="row">
	<div class="col-lg-12">
		{{berita.entries}}
		<h4>{{nama}}</h4>
		<em>Oleh : {{created_by.display_name}}</em><br/>
		<small>Dipostkan pada {{helper:date format="d M y H:m:s" timestamp=created}}</small>
        <p>
        Lokasi :<strong> {{lokasi}}<br/></strong>
        Waktu Mulai : <strong>{{waktu_mulai}}<br/></strong>
        Waktu Selesai : <strong>{{waktu_selesai}}<br/></strong>
        
        </p>
		<p>
			{{deskripsi}}

		</p>	

		{{/berita.entries}}
	</div>
</div>