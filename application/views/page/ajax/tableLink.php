
						Double Klik baris untuk memilih
						<table id="infoTable" class="table table-bordered table-striped ex3">
		    			
		    				<tr>
		    				<td>Judul</td><td>Author</td><td>Status</td>
		    			</tr>
	<?php foreach ($post as $key => $p): ?>
		    			<tr value="<?php echo base_url('Artikel/') ?><?php echo $p->id_post ?>">
		    				<td>
		    					<?php echo $p->judul ?>
		    				</td>
		    				<td>
		    					<?php echo $p->nama ?>
		    				</td>
		    				<td>
		    					<?php echo $p->status ?>
		    				</td>
		    			</tr>
<?php endforeach ?>	
		    			</table>
	<script type="text/javascript">
		$('#infoTable').on('click', 'tbody tr', function(event) {
		var a = $(this).attr('value');
		console.log(a);
  		$(this).addClass('highlight').siblings().removeClass('highlight');
  		$('#link').val(a);
  		$('#linkSelect').modal('toggle');
						});		
	</script>