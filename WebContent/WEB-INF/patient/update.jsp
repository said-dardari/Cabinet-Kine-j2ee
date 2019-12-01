
<div id="updateModal" class="modal fade" style="display: none;">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header bg-green text-white">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h4 class="modal-title">Modifier Patient</h4>
			</div>
			<form class="form-horizontal" method="post">
			<div class="modal-body">


				 <input type="hidden" name="id" />
				 
					<div class="col-lg-6">
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Nom</label>
							<div class="col-lg-8">
								<input type="text" name="nom" placeholder="Nom"
									class="form-control">
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Prénom</label>
							<div class="col-lg-8">
								<input type="text" name="prenom" placeholder="Nom"
									class="form-control">
							</div>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Sexe</label>
							<div class="col-lg-8">
								<input type="radio" name="sexe"  value="Homme"/> Homme <input type="radio"
									name="sexe"  value="Femme" /> Femme
							</div>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Adresse</label>
							<div class="col-lg-8">
								<textarea name="adresse" placeholder="Adresse"
									class="form-control"></textarea>
							</div>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">N°
								Mutualite</label>
							<div class="col-lg-8">
								<input type="text" name="numMutualite"
									placeholder="N° Mutualite" class="form-control">
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">N°
								Adhérant</label>
							<div class="col-lg-8">
								<input type="text" name="numeroAdherant" placeholder="Pays"
									class="form-control">
							</div>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Médecin
								Traitant</label>
							<div class="col-lg-8">
								<input type="text" name="medecinTraitant"
									placeholder="Médecin Traitant" class="form-control">
							</div>
						</div>
						<!-- /.form-group -->

					</div>

					<div class="col-lg-6">


						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Télé</label>
							<div class="col-lg-8">
								<input type="text" name="tele" placeholder="Télé"
									class="form-control">
							</div>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Email</label>
							<div class="col-lg-8">
								<input type="text" name="email" placeholder="email"
									class="form-control">
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Date
								Naissance</label>
							<div class="col-lg-8">
								<div class='input-group date' id='datetimepicker1'>
									<input type='text' name="dateNaissance" class="form-control" /> <span
										class="input-group-addon"> <span
										class="glyphicon glyphicon-calendar"></span>
									</span>
								</div>
							</div>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Pays</label>
							<div class="col-lg-8">
								<input type="text" name="pays" placeholder="Pays"
									class="form-control">
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Ville</label>
							<div class="col-lg-8">
								<input type="text" name="ville" placeholder="Ville"
									class="form-control">
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Code
								Postale</label>
							<div class="col-lg-8">
								<input type="text" name="codePostale" placeholder="Code Postale"
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
				<button type="submit" value="update" name="update"
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