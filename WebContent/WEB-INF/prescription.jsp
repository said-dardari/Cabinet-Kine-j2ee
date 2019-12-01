<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>


<t:layout title="Prescription">

	<jsp:attribute name="content">
<div class="row">
		<div class="col-lg-12 ui-sortable">
		        <div class="box ui-sortable-handle">
		            <header>
		                <div class="icons">
						<i class="fa fa-table"></i>
					</div>
		                <h5>Prescription Table Size : ${ count }  </h5>
								
		            </header>
		            <div id="collapse4" class="body">
		                <div id="dataTable_wrapper"
						class="dataTables_wrapper form-inline dt-bootstrap no-footer">
						<div class="row">
							<div class="col-sm-12">
								<div class="dataTables_length" id="dataTable_length">
								<c:if
							test="${not empty message }">
								<div class="alert alert-success">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <strong> Message : </strong>  ${ message } 
                        </div>
								</c:if> 
		                <a href="#createModal" data-toggle="modal" onclick=" $('#createform')[0].reset();"
										class="btn btn-primary btn-flat btn-rect btn-block"
										data-original-title="" title=""><i class="glyphicon glyphicon-plus"></i>  Nouvelle Prescription</a>
							</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<table id="dataTable"
									class="table table-bordered table-condensed table-hover table-striped dataTable no-footer"
									role="grid" aria-describedby="dataTable_info">
		                    <thead>
		                    <tr role="row">
		                    <th class="sorting" tabindex="0"
												aria-controls="dataTable" rowspan="1" colspan="1"
												aria-label="Rendering engine: activate to sort column ascending"
												style="width: 226px;">Date Prescription</th>
		                    <th class="sorting" tabindex="0"
												aria-controls="dataTable" rowspan="1" colspan="1"
												aria-label="Browser: activate to sort column ascending"
												style="width: 295px;">Seances</th>
		                    <th class="sorting" tabindex="0"
												aria-controls="dataTable" rowspan="1" colspan="1"
												aria-label="Platform(s): activate to sort column ascending"
												style="width: 275px;">Semaine</th>
		                    
		                    <th class="sorting" tabindex="0"
												aria-controls="dataTable" rowspan="1" colspan="1"
												aria-label="CSS grade: activate to sort column ascending"
												style="width: 138px;">Action</th>
										</tr>
		                    </thead>
		                    <tbody>
		                        

<c:forEach items="${ Prescriptions }" var="Prescription">
		                    <tr role="row" class="odd">
		                                <td class=""><c:out value="${ Prescription.datePrescription }" /></td>
		                                <td><c:out
														value="${ Prescription.seances }" /></td>
		                                <td><c:out
														value="${ Prescription.semaine }" /></td>
		                            
		                                <td>			                               

		                              	  	                           
<a onclick="putData('${ Prescription.id }','#viewModal')"
		                                href="#viewModal" data-toggle="modal" class="btn btn-info btn-sm btn-flat btn-rect"

onclick="data"><i class="glyphicon glyphicon-eye-open"></i> Afficher</a>
		                                <a href="#updateModal"
													data-toggle="modal"
													class="btn btn-success btn-sm btn-flat btn-rect"
													data-original-title="" title=""
										  onclick="putData('${ Prescription.id }','#updateModal')" >
													<i class="glyphicon glyphicon-edit"></i> Modifier</a>
		                                <a href="#deleteModal"  onclick="putData('${ Prescription.id }','#deleteModal')"
													data-toggle="modal"
													class="btn btn-danger btn-sm btn-flat btn-rect"
													data-original-title="" title=""><i
														class="glyphicon glyphicon-trash"></i> Supprimer</a>
		                                </td>
		                            </tr>
</c:forEach> 
  
		                           </tbody>              
		                             </table>
							</div>
						</div>
		                             <div class="row">
		                             <div class="col-sm-5">
		                             <div class="dataTables_info"
									id="dataTable_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>
							</div>
							<div class="col-sm-7">
								<div class="dataTables_paginate paging_simple_numbers"
									id="dataTable_paginate">
									<ul class="pagination">
										<li class="paginate_button previous disabled"
											id="dataTable_previous"><a href="#"
											aria-controls="dataTable" data-dt-idx="0" tabindex="0">Previous</a></li>
										<li class="paginate_button active"><a href="#"
											aria-controls="dataTable" data-dt-idx="1" tabindex="0">1</a></li>
										<li class="paginate_button "><a href="#"
											aria-controls="dataTable" data-dt-idx="2" tabindex="0">2</a></li>
										<li class="paginate_button "><a href="#"
											aria-controls="dataTable" data-dt-idx="3" tabindex="0">3</a></li>
					
										<li class="paginate_button next" id="dataTable_next"><a
											href="#" aria-controls="dataTable" data-dt-idx="4"
											tabindex="0">Next</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
		            </div>
		        </div>
		    </div>
	</div>	      
		      <script>
             function putData(id,partId){                 
            	  $.ajax({ 
                      type: "GET",
                      data: { id : id},
                      url: "HelperPrescriptionServlet",
                      success: function(resultat){ 
                    	  var response = JSON.parse(resultat);
                    	 	  $(partId+" input[name='id']").val(response.id);	  
		            	 	  $(partId+" input[name='datePrescription']").val(response.datePrescription);	
		                   	  $(partId+" input[name='seances']").val(response.seances);	
		                   	  $(partId+" input[name='semaine']").val(response.semaine);	
		                   	  $(partId+" input[name='diagnosticMedecin']").val(response.diagnosticMedecin);				                   	 
		                   	  $(partId+" input[name='medecinPrescripteur']").val(response.medecinPrescripteur);	
		                   	  $(partId+" select[name='idPathologie']").val(response.idPathologie).change();	
		                   	  $(partId+" select[name='idNomenclature']").val(response.idNomenclature).change();	
		                   	  $(partId+" select[name='idPatient']").val(response.idPatient).change();	
		                   	  
		                   	  if(partId == "#deleteModal"){
		                   		  
		                   		$("#deleteModal #fullname").text(response.datePrescription+" ,idPatient : "+response.idPatient);
		                   	  }
                      }
                  });
            
                   	  
                    }
		      </script>     
		      
		      <!-- #createModal -->		     
                              <jsp:include
			page="/WEB-INF/prescription/create.jsp" />                      
		      <!-- /#createModal -->
		      
		      <!-- #updateModal -->		     
                              <jsp:include
			page="/WEB-INF/prescription/update.jsp" />                      
		      <!-- /#updateModal -->
		      
		       <!-- #viewModal -->		     
                              <jsp:include
			page="/WEB-INF/prescription/view.jsp" />                      
		      <!-- /#viewModal -->
		      
		        <!-- #deleteModal -->		     
                              <jsp:include
			page="/WEB-INF/prescription/delete.jsp" />                      
		      <!-- /#deleteModal -->
		      
		      
    </jsp:attribute>

</t:layout>