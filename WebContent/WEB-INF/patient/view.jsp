
<div id="viewModal" class="modal fade" style="display: none;">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header bg-blue text-white">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">�</button>
				<h4 class="modal-title">Afficher Patient</h4>
			</div>
			<form class="form-horizontal" method="post">
			<div class="modal-body">


				
					<div class="col-lg-6">
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Nom</label>
							<div class="col-lg-8">
								<input type="text" name="nom" placeholder="Nom"
									class="form-control" readonly>
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Pr�nom</label>
							<div class="col-lg-8">
								<input type="text" name="prenom" placeholder="Pr�nom"
									class="form-control" readonly>
							</div>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Sexe</label>
							<div class="col-lg-8">
								<input type="radio" name="sexe" value="Homme" disabled/> Homme <input type="radio"
									name="sexe" value="Femme" disabled/> Femme
							</div>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Adresse</label>
							<div class="col-lg-8">
								<textarea name="adresse" placeholder="Adresse"
									class="form-control" readonly></textarea>
							</div>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">N�
								Mutualite</label>
							<div class="col-lg-8">
								<input type="text" name="numMutualite"
									placeholder="N� Mutualite" class="form-control" readonly>
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">N�
								Adh�rant</label>
							<div class="col-lg-8">
								<input type="text" name="numeroAdherant" placeholder="N�
								Adh�rant"
									class="form-control" readonly>
							</div>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">M�decin
								Traitant</label>
							<div class="col-lg-8">
								<input type="text" name="medecinTraitant"
									placeholder="M�decin Traitant" class="form-control" readonly>
							</div>
						</div>
						<!-- /.form-group -->

					</div>

					<div class="col-lg-6">


						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">T�l�</label>
							<div class="col-lg-8">
								<input type="text" name="tele" placeholder="T�l�"
									class="form-control" readonly>
							</div>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Email</label>
							<div class="col-lg-8">
								<input type="text" name="email" placeholder="email"
									class="form-control" readonly>
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Date
								Naissance</label>
							<div class="col-lg-8">
								<div class='input-group date' id='datetimepicker1'>
									<input type='text' name="dateNaissance" class="form-control" readonly/> <span
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
									class="form-control" readonly>
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Ville</label>
							<div class="col-lg-8">
								<input type="text" name="ville" placeholder="Ville"
									class="form-control" readonly>
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Code
								Postale</label>
							<div class="col-lg-8">
								<input type="text" name="codePostale" placeholder="Code Postale"
									class="form-control" readonly>
							</div>
						</div>
						<!-- /.form-group -->

					</div>





					<div class="form-group">
						<div class="col-lg-8"></div>
					</div>				

			</div>
			<div class="modal-footer">
			
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