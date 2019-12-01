<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>


<t:layout title="Patient">

	<jsp:attribute name="content">
<div class="row">
		<div class="col-lg-12 ui-sortable">
		        <div class="box ui-sortable-handle">
		            <header>
		                <div class="icons">
						<i class="fa fa-table"></i>
					</div>
		                <h5>Patient Table Size : ${ count }  </h5>
								
		            </header>
		            <div id="collapse4" class="body">
		                <div id="dataTable_wrapper"
						class="dataTables_wrapper form-inline dt-bootstrap no-footer">
						<div class="row"><div class="col-sm-6"><div class="dataTables_length" id="dataTable_length"><label>Show <select name="dataTable_length" aria-controls="dataTable" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div><div class="col-sm-6"><div id="dataTable_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control input-sm" placeholder="" aria-controls="dataTable"></label></div></div></div>
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
										data-original-title="" title=""><i class="glyphicon glyphicon-plus"></i>  Nouveau Patient</a>
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
		                    <th class="sorting_asc" tabindex="0" aria-sort="ascending"
												aria-controls="dataTable" rowspan="1" colspan="1"
												aria-label="Rendering engine: activate to sort column ascending"
												style="width: 226px;">Nom</th>
		                    <th class="sorting" tabindex="0"
												aria-controls="dataTable" rowspan="1" colspan="1"
												aria-label="Browser: activate to sort column ascending"
												style="width: 295px;">Prénom</th>
		                    <th class="sorting" tabindex="0"
												aria-controls="dataTable" rowspan="1" colspan="1"
												aria-label="Platform(s): activate to sort column ascending"
												style="width: 275px;">Télé</th>
		                    
		                    <th class="sorting" tabindex="0" style="text-align:center"
												aria-controls="dataTable" rowspan="1" colspan="1"
												aria-label="CSS grade: activate to sort column ascending"
												style="width: 138px;">Action</th>
										</tr>
		                    </thead>
		                    <tbody>
		                        

<c:forEach items="${ Patients }" var="Patient">
		                    <tr role="row" class="odd">
		                                <td class="sorting_1"><c:out value="${ Patient.nom }" /></td>
		                                <td><c:out
														value="${ Patient.prenom }" /></td>
		                                <td><c:out
														value="${ Patient.tele }" /></td>
		                            
		                                <td align="center">			                               

		                              	  	                            
<a onclick="putData('${ Patient.id }','#viewModal')"
		                                href="#viewModal" data-toggle="modal" class="btn btn-info btn-sm btn-flat btn-rect"

onclick="data"><i class="glyphicon glyphicon-eye-open"></i> Afficher</a>
		                                <a href="#updateModal"
													data-toggle="modal"
													class="btn btn-success btn-sm btn-flat btn-rect"
													data-original-title="" title=""
										  onclick="putData('${ Patient.id }','#updateModal')" >
													<i class="glyphicon glyphicon-edit"></i> Modifier</a>
		                                <a href="#deleteModal"  onclick="putData('${ Patient.id }','#deleteModal')"
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
                      url: "HelperServlet",
                      success: function(resultat){ 
                    	  var response = JSON.parse(resultat);
                    	 	  $(partId+" input[name='id']").val(response.id);	  
		            	 	  $(partId+" input[name='nom']").val(response.nom);	
		                   	  $(partId+" input[name='prenom']").val(response.prenom);	
		                   	  $(partId+" input[name='tele']").val(response.tele);	
		                   	  $(partId+" input[name='email']").val(response.email);		
		                   	  $(partId+" input:radio[name='sexe']").filter('[value='+response.sexe+']').attr('checked', true);
		                   	  $(partId+" textarea[name='adresse']").val(response.adresse);	
		                   	  $(partId+" input[name='dateNaissance']").val(response.dateNaissance);	
		                   	  $(partId+" input[name='pays']").val(response.pays);	
		                   	  $(partId+" input[name='ville']").val(response.ville);	
		                   	  $(partId+" input[name='codePostale']").val(response.codePostale);	
		                   	  $(partId+" input[name='numMutualite']").val(response.numMutualite);	
		                   	  $(partId+" input[name='numeroAdherant']").val(response.numeroAdherant);	
		                   	  $(partId+" input[name='medecinTraitant']").val(response.medecinTraitant);	
		                   	  
		                   	  if(partId == "#deleteModal"){
		                   		  
		                   		$("#deleteModal #fullname").text(response.nom+" "+response.prenom);
		                   	  }
                      }
                  });
                   	  
                    }
		      </script>     
		      
		      <!-- #createModal -->		     
                              <jsp:include
			page="/WEB-INF/patient/create.jsp" />                      
		      <!-- /#createModal -->
		      
		      <!-- #updateModal -->		     
                              <jsp:include
			page="/WEB-INF/patient/update.jsp" />                      
		      <!-- /#updateModal -->
		      
		       <!-- #viewModal -->		     
                              <jsp:include
			page="/WEB-INF/patient/view.jsp" />                      
		      <!-- /#viewModal -->
		      
		        <!-- #deleteModal -->		     
                              <jsp:include
			page="/WEB-INF/patient/delete.jsp" />                      
		      <!-- /#deleteModal -->
		      
		      
    </jsp:attribute>

</t:layout>