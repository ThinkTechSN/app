<div class="inner-block">
<div class="logo-name">
		<h1><i class="fa fa-television" aria-hidden="true"></i>Dashboard</h1> 								
</div>
<!--info updates updates-->
	 <div class="info-updates">
			<div class="col-md-4 info-update-gd">
				<div class="info-update-block clr-block-1">
					<div class="col-md-8 info-update-left">
						<h3>${projects_count}</h3>
						<h4>nouveaux projets</h4>
					</div>
					<div class="col-md-4 info-update-right">
						<i class="fa fa-briefcase"> </i>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-4 info-update-gd">
				<div class="info-update-block clr-block-3">
					<div class="col-md-8 info-update-left">
						<h3>${messages_count}</h3>
						<h4>nouveaux messages</h4>
					</div>
					<div class="col-md-4 info-update-right">
						<i class="fa fa-envelope-o"> </i>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-4 info-update-gd">
				<div class="info-update-block clr-block-6">
					<div class="col-md-8 info-update-left">
						<h3>${bills_count}</h3>
						<h4>factures impay�es</h4>
					</div>
					<div class="col-md-4 info-update-right">
						<i class="fa fa-money"> </i>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
		   <div class="clearfix"> </div>
		</div>
<!--info updates end here-->
<!--mainpage chit-chating-->
<div class="chit-chat-layer1">
	<div class="col-md-12 chit-chat-layer1-left">
               <div class="work-progres">
                            <div class="chit-chat-heading">
                                  <h3 class="tlt"><i class="fa fa-briefcase" aria-hidden="true"></i> Vos Projets</h3>
                            </div>
                            <div class="projects table-responsive">
                                <table data-url="${url}/projects/info" class="table table-hover">
                                  <thead>
                                    <tr>
                                      <th></th>
                                      <th>Projet</th>
                                      <th>Plan</th> 
                                      <th>Date Cr�ation</th>                                                             
                                      <th>Traitement</th>
                                      <th>Progression</th>
                                  </tr>
                              </thead>
                              <tbody>
                                <tr id="1">
                                  <td><span class="number">1</span></td>
                                  <td><i class="fa fa-briefcase" aria-hidden="true"></i> cr�ation site web</td>
                                  <td><i class="fa fa-code" aria-hidden="true"></i> plan business</td>
                                  <td>17/09/2017</td>                                        
                                  <td><span class="label label-danger">en cours</span></td>
                                  <td><span class="badge badge-info">50%</span></td>
                              </tr>
                              <tr id="2">
                                  <td><span class="number">2</span></td>
                                  <td><i class="fa fa-briefcase" aria-hidden="true"></i> cr�ation site web</td>
                                  <td><i class="fa fa-code" aria-hidden="true"></i> plan business</td>
                                  <td>17/09/2017</td>                  
                                  <td><span class="label label-success">termin�</span></td>
                                  <td><span class="badge badge-success">100%</span></td>
                              </tr>
                              <tr id="3">
                                  <td><span class="number">3</span></td>
                                  <td><i class="fa fa-briefcase" aria-hidden="true"></i> cr�ation site web</td>
                                  <td><i class="fa fa-code" aria-hidden="true"></i> plan business</td>
                                  <td>17/09/2017</td> 
                                  <td><span class="label label-info">en attente</span></td>
                                  <td><span class="badge badge-info">0%</span></td>
                              </tr>
                              <tr id="4">
                                  <td><span class="number">4</span></td>
                                  <td><i class="fa fa-briefcase" aria-hidden="true"></i> cr�ation site web</td>
                                  <td><i class="fa fa-code" aria-hidden="true"></i> plan business</td>
                                  <td>17/09/2017</td>            
                                  <td><span class="label label-info">en attente</span></td>
                                  <td><span class="badge badge-info">0%</span></td>
                              </tr>
                              <tr id="5">
                                  <td><span class="number">5</span></td>
                                  <td><i class="fa fa-briefcase" aria-hidden="true"></i> cr�ation site web</td>
                                  <td><i class="fa fa-code" aria-hidden="true"></i> plan business</td>
                                  <td>17/09/2017</td>                 
                                  <td><span class="label label-info">en attente</span></td>
                                  <td><span class="badge badge-info">0%</span></td>
                              </tr>
                              <tr id="6">
                                  <td><span class="number">6</span></td>
                                  <td><i class="fa fa-briefcase" aria-hidden="true"></i> cr�ation site web</td>
                                  <td><i class="fa fa-code" aria-hidden="true"></i> plan business</td>
                                  <td>17/09/2017</td>           
                                  <td><span class="label label-info">en attente</span></td>
                                  <td><span class="badge badge-info">0%</span></td>
                              </tr>
                          </tbody>
                      </table>
                  </div>
             </div>
      </div>
     <div class="clearfix"> </div>
</div>
<div class="window details">
    <div>
	<span title="fermer" class="close">X</span>
	<section>
	 <template>
	 <h1><i class="fa fa-briefcase" aria-hidden="true"></i>Projet : {subject|s}</h1>
	<fieldset>
		<span class="text-right"><i class="fa fa-code" aria-hidden="true"></i> Plan </span> <span>{plan}</span>
		<span class="text-right"><i class="fa fa-building" aria-hidden="true"></i> Structure </span> <span>${user.structure.name}</span>
		<span class="text-right"><i class="fa fa-calendar" aria-hidden="true"></i> Date Cr�ation </span> <span>{date} - 17:35:25</span>
		<span class="text-right"><i class="fa fa-calendar-check-o" aria-hidden="true"></i> Dur�e </span> <span>{duration} mois</span>
		<span class="text-right"><i class="fa fa-tasks" aria-hidden="true"></i> Traitement </span> 
		<span data-status="stand by" style="display:none"><span class="label label-info">en attente</span> <span class="label label-info">paiement caution</span> <a class="pay"><i class="fa fa-money"></i></a></span>
		<span data-status="in progress" style="display:none"><span class="label label-danger">en cours</span></span>  
		<span data-status="finished" style="display:none"><span class="label label-success">termin�</span></span>
		<span class="text-right"><i class="fa fa-tasks" aria-hidden="true"></i> Progression </span> <span class="badge badge-info">{progression}%</span> <a><i class="fa fa-info" aria-hidden="true"></i></a>
	</fieldset>
	<div class="col-md-12">
		  <div class="content-process">
			<div class="content3">
				<div class="shipment">
					<div class="confirm">
						<div class="imgcircle">
							<img src="${images}/confirm.png" alt="confirm order">
						</div>
						<span class="line"></span>
						<p>Contrat et Caution</p>
					</div>
					<div class="process">
						<div class="imgcircle">
							<img src="${images}/process.png" alt="process order">
						</div>
						<span class="line"></span>
						<p>D�veloppement</p>
					</div>
					<div class="quality">
						<div class="imgcircle">
							<img src="${images}/quality.png" alt="quality check">
						</div>
						<span class="line"></span>
						<p>Tests et Validation</p>
					</div>
					<div class="delivery">
						<div class="imgcircle">
							<img src="${images}/delivery.png" alt="delivery">
						</div>
						<p>Livraison Produit</p>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		   </div>	
	   </div>
	   <div class="clearfix"></div>
	<fieldset>
	   <legend>
	     <i class="fa fa-file-text-o"></i> Description <a class="message-add"><i class="fa fa-edit" aria-hidden="true"></i></a>
	   </legend>
	   <div class="description messages">
	        <div class="message-list">
   		 		<h6>pas de description</h6>
   		 		<div></div>
   		 	</div>
   		 	<div class="message-edition description">
   		 	    <form action="${url}/projects/description/update">
   		 		<textarea id="textarea-description" name="description">{description}</textarea>
   		 		<input name="id" type="hidden" value={id}>
   		 		<div class="submit">
			      <input type="submit" value="Modifier">
			      <input type="button" value="Annuler">
			    </div>
			    </form>
   		 	</div>
   		 </div>
	</fieldset>
	<fieldset>
	   <legend>
	   <i class="fa fa-file"></i> Documents <a class="document-add"><i class="fa fa-plus" aria-hidden="true"></i></a>
	   </legend>
	   <div class="documents">
	        <div class="document-list">
   		 		<h6>pas de documents</h6>
   		 		<ol data-template="documents">
   		 		</ol>
   		 	</div>
   		 	<div class="document-upload">
   		 	  <form method="POST" enctype="multipart/form-data" action="documents/upload.html">
   		 	   <fieldset>
   		 	    <span class="text-right">Document 1 </span> <input name="file1" type="file" required>
				<span class="text-right">Document 2 </span> <input name="file2" type="file">
				<span class="text-right">Document 3 </span> <input name="file3" type="file">
				<input name="id" type="hidden" value="{id}">
				<input name="url" type="hidden" value="${url}/projects/documents/save"/>
				</fieldset>
   		 		<div class="submit">
			      <input type="submit" value="Envoyer">
			      <input type="button" value="Annuler">
			    </div>
			  </form>  
   		 	</div>
   	   </div>
	</fieldset>
	<fieldset>
        <legend>
    	<i class="fa fa-comments"></i> Commentaires <a class="message-add"><i class="fa fa-plus" aria-hidden="true"></i></a>
   		</legend>
   		 <div class="comments messages">
   		    <div class="message-list">
   		 		<h6>pas de commentaires</h6>
				<div data-template="comments"></div>
			</div>
   		 	<div class="message-edition">
   		 	   <form action="${url}/projects/comments/create">
   		 		<textarea id="textarea-message" name="message"></textarea>
   		 		<input name="id" type="hidden" value={id}>
   		 		<div class="submit">
			      <input type="submit" value="Ajouter">
			      <input type="button" value="Annuler">
			    </div>
			   </form>
   		 	</div>
   		 </div>
  </fieldset>
  </template>
  </section>
  <template id="template-documents">
		{#.}
			<li>
				<a>{name}</a>
				<span>14/12/2017 - 17:35:25</span>
			</li>
		 {/.}
  </template>
  <template id="template-comments">
      {#.}
      <div>
        <img width= "32px" height="32" src="${images}/user_64.png"/> 
   	  	<div class="message">{message|s}</div>
   	  	<span>14/12/2017 - 17:35:25</span>
   	  </div>
   	   <hr/>
   	  {/.}
  </template>	
  </div>
</div>
</div>
<script src="${js}/projects.js" defer></script>
<script src="js/tinymce/tinymce.min.js" defer></script> 