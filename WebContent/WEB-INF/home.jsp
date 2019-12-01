
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<t:layout title="Tableau de bord">   

    <jsp:attribute name="content">
      
     
	<div class="col-lg-12">
		<div class="text-center">
		    
		    <a class="quick-btn" href="${pageContext.request.contextPath}/agenda">
			<i class="fa fa-calendar fa-2x"></i>
			<span>Agenda</span>
		    </a>
		    
		    <a class="quick-btn" href="${pageContext.request.contextPath}/patient">
			<i class="fa fa-tasks fa-2x"></i>
			<span>Patient</span>
		    </a>
		    
		     <a class="quick-btn" href="${pageContext.request.contextPath}/404.html">
			<i class="fa fa-table fa-2x"></i>
			<span>Bilan</span>
		    </a>
		    
		     <a class="quick-btn" href="${pageContext.request.contextPath}/404.html">
			<i class="fa fa-bar-chart-o fa-2x"></i>
			<span>Comptabilité</span>
		    </a>
		    
		    <hr>
		    
		   
	</div>
	   
	   
	     <div class="row">
                    <div class="col-lg-6">
               
               
                           <div class="panel panel-info">
                            <div class="panel-heading"> 
                                <i class="fa fa-tasks fa-fw"></i> Patients
                                
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                              <i class="fa fa-user fa-fw"></i>  <b> Patient : </b> ${ Patient.nom }   ${ Patient.prenom }
                                 <br/>
                              <b>  Adresse :</b> ${ Patient.adresse } , ${ Patient.ville } , ${ Patient.pays }
                                 <br/>
                              <b>  E-mail :</b> ${ Patient.email }
                                 <br/>
                               <b> Tél :</b> ${ Patient.tele }
                            </div>
                            <!-- /.panel-body -->
                            <div class="panel-footer">
                                <a href="${pageContext.request.contextPath}/patient" class="btn btn-primary "><i class="glyphicon glyphicon-trash"></i> Supprimer</a>
                                <a href="${pageContext.request.contextPath}/patient"  class="btn btn-primary "><i class="glyphicon glyphicon-edit"></i>  Modifier</a>
                            </div>
                        </div>

                </div>

                          <div class="col-lg-6">

                           <div class="panel panel-info">
                            <div class="panel-heading">
                                <i class="fa fa-tasks fa-fw"></i> Prescription
                               
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                               <b>   Date Prescription :  </b>  ${ Prescription.datePrescription }
                                 <br/>
                               <b>   Seances :  </b>  ${ Prescription.seances }
                                 <br/>
                                <b>  Diagnostic Medecin :  </b> ${ Prescription.diagnosticMedecin }
                                 <br/>
                                <b>  Medecin Prescripteur :  </b>  ${ Prescription.medecinPrescripteur }
                            </div>
                            <!-- /.panel-body -->
                            <div class="panel-footer">
                                <button type="button" class="btn btn-primary"><i class="glyphicon  glyphicon-plus"></i> Nouvelle séance</button>
                            </div>
                        </div>

                </div>

                <!-- /.row -->
            </div>
            <!-- /#page-wrapper -->
            
            <div class="row">
               <div class="col-lg-12">
                        <div class="panel tabbed-panel panel-info">
                         
                               
                                <div class="panel-body">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#tab-danger-1" data-toggle="tab">Prescription</a></li>
                                        <li><a href="#tab-danger-2" data-toggle="tab">Historique</a></li>
                                        <li><a href="#tab-danger-3" data-toggle="tab">Attestation</a></li>
       
                                    </ul>
                                </div>
                           
                             <div class="panel-body">
                                <div class="tab-content">
                                    <div class="tab-pane fade in active" id="tab-danger-1"> 
                                    <a href="${pageContext.request.contextPath}/prescription"  class="btn btn-primary "><i class="glyphicon  glyphicon-plus"></i> Nouvelle Prescription</a>
                                    </div>
                                    <div class="tab-pane fade" id="tab-danger-2">Historique</div>
                                    <div class="tab-pane fade" id="tab-danger-3">Attestation</div>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel -->
                    </div>
                </div>
					    
            
</div>
					 
				
      
    </jsp:attribute>
       
</t:layout>