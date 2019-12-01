
<div id="deleteModal" class="modal fade" style="display: none;">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header bg-red text-white">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h4 class="modal-title">Supprimer Prescription</h4>
			</div>
			<form class="form-horizontal" method="post">
			<div class="modal-body">
			<input type="hidden" name="id"/>
				<h3>Voulez-vous vraiment supprimer !! </h3>
		
			   <h2><span id="fullname"></span></h2>
					<div class="form-group">
						<div class="col-lg-8"></div>
					</div>				

			</div>
			<div class="modal-footer">
				<button type="submit" value="delete" name="delete"
					class="btn btn-primary btn-sm btn-flat btn-rect"
					>
				<i class="glyphicon glyphicon-ok"></i> Oui
				</button>
				<button type="button"
					class="btn btn-metis-5 btn-sm btn-flat btn-rect"
					data-dismiss="modal">Non</button>
			</div>
			</form>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>