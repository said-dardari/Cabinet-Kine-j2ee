
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>


<t:layout title="Agenda">

	<jsp:attribute name="content">
      
     
					 <div class="box">
  <header>
      <h5>Calendrier</h5>
  </header>
  <div class="body">
      <div class="row">
	  <div class="col-lg-3">
	      <div class="well well-sm">
		  <div id="add-event-form">
		      <fieldset>
			  <legend>Ajouter un événement personnalisé</legend>
			  <span class="help-block">Titre de l'événement</span>
			  <input id="title" name="title" type="text"
										placeholder="event title" class="form-control input-small">

			  <div class="radio">
			    <label>
				<input type="radio" name="priority" value="label label-default"
											checked="">
				<span class="label label-default">default</span>
			    </label>
			  </div>
			  <div class="radio">
			    <label>
				<input type="radio" name="priority" value="label label-primary">
				<span class="label label-primary">primary</span>
			    </label>
			  </div>
			  <div class="radio">
			    <label>
				<input type="radio" name="priority" value="label label-warning">
				<span class="label label-warning">warning</span>
			    </label>
			  </div>
			  <div class="radio">
			    <label>
				<input type="radio" name="priority" value="label label-success">
				<span class="label label-success">success</span>
			    </label>
			  </div>
			  <div class="radio">
			    <label>
				<input type="radio" name="priority" value="label label-info">
				<span class="label label-info">info</span>
			    </label>
			  </div>
			  <div class="radio">
			    <label>
				<input type="radio" name="priority" value="label label-danger">
				<span class="label label-danger">danger</span>
			    </label>
			  </div>
			  <br>
			  <button id="add-event" type="button" class="btn btn-sm btn-default">Add Event</button>
		      </fieldset>
		  </div>

	      </div>
	      <div class="well well-sm">
		  <h4>Draggable Events</h4>
		  <ul id="external-events" class="list-unstyled">
		      <li class="external-event ui-draggable ui-draggable-handle"
									style="position: relative;"><span
									class="label label-default">My Event 1</span></li>
		      <li class="external-event ui-draggable ui-draggable-handle"
									style="position: relative;"><span
									class="label label-primary">My Event 2</span></li>
		      <li class="external-event ui-draggable ui-draggable-handle"
									style="position: relative;"><span
									class="label label-danger">My Event 3</span></li>
		      <li class="external-event ui-draggable ui-draggable-handle"
									style="position: relative;"><span
									class="label label-success">My Event 4</span></li>
		      <li class="external-event ui-draggable ui-draggable-handle"
									style="position: relative; z-index: auto; left: 0px; top: 0px;"><span
									class="label label-warning">My Event 5</span></li>
		      <li class="external-event ui-draggable ui-draggable-handle"
									style="position: relative;"><span class="label label-info">My Event 6</span></li>
		  
							</ul>


		  <div class="checkbox anim-checkbox h4">
		      <input type="checkbox" id="drop-remove" class="danger">
		      <label for="drop-remove">remove after drop</label>
		  </div>

	      </div>
	  </div>
	  <div id="calendar" class="col-lg-9 fc fc-unthemed fc-ltr">
						</div>
      </div>
  </div>
</div>
    <!-- /.col-lg-6 -->

      
    </jsp:attribute>

</t:layout>