<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="viewModal" class="modal fade" style="display: none;">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header bg-blue text-white">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">�</button>
				<h4 class="modal-title">Afficher Prescription</h4>
			</div>
			<form class="form-horizontal" method="post" id="createform">
			<div class="modal-body">

		
					<div class="col-lg-6">
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Date Prescription</label>
							<div class="col-lg-8">
								<input type="text" name="datePrescription" placeholder="datePrescription"
									class="form-control" readonly>
							</div>
						</div>
						<!-- /.form-group -->
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Seances</label>
							<div class="col-lg-8">
								<input type="text" name="seances" placeholder="seances"
									class="form-control" readonly>
							</div>
						</div>
					<!-- /.form-group -->
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Diagnostic Medecin</label>
							<div class="col-lg-8" readonly>
								<input type="text" name="diagnosticMedecin" placeholder="diagnosticMedecin"
									class="form-control" readonly>
							</div>
						</div>
						<!-- /.form-group -->

						
						<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Semaine</label>
							<div class="col-lg-8">
								<input type="text" name="semaine"
									placeholder="Semaine" class="form-control" readonly>
							</div>
						</div>
						<!-- /.form-group -->

					</div>

					<div class="col-lg-6">


						<div class="form-group">
						    <label class="control-label col-lg-4">Patient</label>
					
			
						    <div class="col-lg-8">
						        <select class="form-control" name="idPatient" readonly>
						        <c:forEach items="${ Patients }" var="Patient">
						            <option value="${ Patient.id }">${ Patient.nom }</option>		
						            </c:forEach>				           
						        </select>
						    </div>
						</div>
						<!-- /.form-group -->
	<div class="form-group">
						    <label class="control-label col-lg-4">Nomenclature</label>
						
						    <div class="col-lg-8">
						        <select class="form-control" name="idNomenclature" readonly>
						        <c:forEach items="${ Nomenclatures }" var="Nomenclature">
						            <option value="${ Nomenclature.id }">${ Nomenclature.nom }</option>		
						            </c:forEach>				           
						        </select>
						    </div>
						</div>
						<!-- /.form-group -->
							<div class="form-group">
						    <label class="control-label col-lg-4">Pathologie</label>
						
						    <div class="col-lg-8">
						        <select class="form-control" name="idPathologie" readonly>
						        <c:forEach items="${ Pathologies }" var="Pathologie">
						            <option value="${ Pathologie.id }">${ Pathologie.nom }</option>		
						            </c:forEach>				           
						        </select>
						    </div>
						</div>
						<!-- /.form-group -->
					
					<div class="form-group">
							<label for="text1" class="control-label col-lg-4">Medecin Prescripteur</label>
							<div class="col-lg-8">
								<input type="text" name="medecinPrescripteur"
									placeholder="medecinPrescripteur" class="form-control" readonly>
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