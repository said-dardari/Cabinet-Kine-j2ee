
<div id="createModal" class="modal fade" style="display: none;">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header bg-primary text-white">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h4 class="modal-title">Ajouter Utilisateur</h4>
			</div>
			<form class="form-horizontal" method="post" id="createform">
			<div class="modal-body">


				
					<div class="col-lg-10">
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Pseudo</label>
							<div class="col-lg-8">
								<input type="text" name="email" placeholder="Pseudo"
									class="form-control">
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Mot de passe</label>
							<div class="col-lg-8">
								<input name="motDePasse" placeholder="Mot de passe" rows="5"
									class="form-control">
							</div>
						</div>
						<!-- /.form-group -->

					</div>





					<div class="form-group">
						<div class="col-lg-8"></div>
					</div>				

			</div>
			<div class="modal-footer">
				<button type="submit" value="add" name="add"
					class="btn btn-primary btn-sm btn-flat btn-rect"
					>
				<i class="glyphicon glyphicon-floppy-disk"></i> Enregistrer
				</button>
				<button type="button"
					class="btn btn-metis-5 btn-sm btn-flat btn-rect"
					data-dismiss="modal">Annule</button>
			</div>
			</form>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>