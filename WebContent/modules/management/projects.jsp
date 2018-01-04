<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="inner-block">
	<div class="logo-name">
		<h1><i class="fa fa-briefcase" aria-hidden="true"></i>Vos Projets</h1>
	</div>
	<!--info updates updates-->
	<div class="info-updates">
		<div class="col-md-4 info-update-gd">
			<div class="info-update-block clr-block-1">
				<div class="col-md-8 info-update-left">
					<h3 class="total">${total}</h3>
					<h4>projets</h4>
				</div>
				<div class="col-md-4 info-update-right">
					<i class="fa fa-briefcase"> </i>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="col-md-4 info-update-gd">
			<div class="info-update-block clr-block-3">
				<div class="col-md-8 info-update-left">
					<h3 class="unactive">${unactive}</h3>
					<h4>projets en attente</h4>
				</div>
				<div class="col-md-4 info-update-right">
					<i class="fa fa-briefcase"> </i>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="col-md-4 info-update-gd">
			<div class="info-update-block clr-block-3">
				<div class="col-md-8 info-update-left">
					<h3 class="active">${active}</h3>
					<h4>projets en cours</h4>
				</div>
				<div class="col-md-4 info-update-right">
					<i class="fa fa-briefcase"> </i>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="col-md-12 buttons">
        <a><i class="fa fa-plus" aria-hidden="true"></i></a>
    </div>
	<!--info updates end here-->
	<!--mainpage chit-chating-->
	<div class="chit-chat-layer1">
		<div class="col-md-12 chit-chat-layer1-left">
			<div class="work-progres">
				<div class="chit-chat-heading">
					<h3 class="tlt">
						<i class="fa fa-briefcase" aria-hidden="true"></i> Vos Projets
					</h3>
				</div>
				<div class="table-responsive">
					      <table data-url="${url}/projects/info" class="projects table table-hover">
                                  <thead>
                                    <tr>
                                      <th></th>
                                      <th>Projet</th>
                                      <th>Auteur</th>
                                      <th>Date Cr�ation</th>                                                             
                                      <th>Traitement</th>
                                      <th>Progression</th>
                                  </tr>
                              </thead>
                              <tbody>
                              <s:iterator value="#request.projects" var="project" status="status">
	                                <tr id="${project.properties['id']}">
	                                  <td><span class="number">${status.index+1}</span></td>
	                                  <td>${project.properties['subject']}</td>
	                                  <td><i class="fa fa-user" aria-hidden="true"></i> ${project.properties['author']}</td>
	                                  <td><s:date name="properties['date']" format="dd/MM/yyyy" /></td>                                        
	                                  <td><span class="label ${project.properties['status']=='in progress' ? 'label-danger' : '' } ${project.properties['status']=='finished' ? 'label-success' : '' } ${project.properties['status']=='stand by' ? 'label-info' : '' }">
	                                  ${project.properties['status']=='in progress' ? 'en cours' : '' } ${project.properties['status']=='finished' ? 'termin�' : '' } ${project.properties['status']=='stand by' ? 'en attente' : '' }
	                                  </span></td>
	                                  <td><span class="badge badge-info">${project.properties['progression']}%</span></td>
	                              </tr>
	                          </s:iterator>               
                              <template>
							     {#.}
							      <tr id="{id}">
							            <td><span class="number"></span></td>
							   	        <td>{subject}</td>
							            <td><i class="fa fa-user" aria-hidden="true"></i> ${user.name}</td>
		                                <td>{date}</td>           
		                                <td><span class="label label-info">en attente</span></td>
		                                <td><span class="badge badge-info">0%</span></td>
							   	    </tr>
							     {/.}
							   </template>
                          </tbody>
                      </table>
                      <div class="empty"><span>aucun projet</span></div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
<div class="window details">
    <div>
	<span title="fermer" class="close">X</span>
	<section>
	 <template>
	 <h1><i class="fa fa-briefcase" aria-hidden="true"></i>Projet : {subject|s}</h1>
	<fieldset>
	    <span class="text-right"><i class="fa fa-ticket" aria-hidden="true"></i> Service </span> <span>{service}</span>
		<span class="text-right"><i class="fa fa-code" aria-hidden="true"></i> Plan </span> <span>{plan}</span> <a data-plan="{plan}" class="plan"><i class="fa fa-info" aria-hidden="true"></i></a>
		<span class="text-right"><i class="fa fa-calendar" aria-hidden="true"></i> Date Cr�ation </span> <span>{date}</span>
		<span class="text-right"><i class="fa fa-product-hunt" aria-hidden="true"></i> Priorit� </span> 
		<span data-status="normal" style="display:none">normale</span>
		<span data-status="medium" style="display:none">moyenne</span>
		<span data-status="high" style="display:none">�lev�e</span>
		<span class="text-right"><i class="fa fa-calendar-check-o" aria-hidden="true"></i> Dur�e </span> <span>{duration} mois</span> <a class="duration"><i class="fa fa-info" aria-hidden="true"></i></a>
		<div class="info-message">
		   <p data-status="stand by">la dur�e du projet est estim�e � {duration} mois dans l'attente du paiement de la caution que vous devez effectuer</p>
		   <p data-status="in progress">la dur�e du projet est estim�e � {duration} mois et dans les normes, le produit final sera livr� au plus tard le {end}</p>
		   <p data-status="finished">la dur�e du projet fut de {duration} mois et le produit final a �t� livr� le {end}</p>
		</div>
		<span class="text-right"><i class="fa fa-tasks" aria-hidden="true"></i> Traitement </span> 
		<span data-status="stand by" style="display:none"><span class="label label-info">en attente</span> <span class="label label-info">paiement caution</span> <span class="label label-success"><b class="digit">{bill.amount}</b> F</span> <a class="pay"><i class="fa fa-money"></i></a></span>
		<span data-status="in progress" style="display:none"><span class="label label-danger">en cours</span></span>  
		<span data-status="finished" style="display:none"><span class="label label-success">termin�</span></span>
		<span class="text-right"><i class="fa fa-tasks" aria-hidden="true"></i> Progression </span> <span class="badge badge-info">{progression}%</span> <a class="tasks"><i class="fa fa-info" aria-hidden="true"></i></a>
		<div class="info-tasks">
		  <h1><i class="fa fa-tasks" aria-hidden="true"></i> T�ches</h1>
		  <ol data-template="tasks">
		  </ol>
		</div>
	</fieldset>
	<div class="col-md-12">
		  <div class="content-process">
			<div class="content3">
				<div class="shipment">
					<div class="confirm">
						<div class="imgcircle">
							<img src="${images}/confirm.png">
						</div>
						<span class="line"></span>
						<p>Contrat et Caution</p>
					</div>
					<div class="process">
						<div class="imgcircle">
							<img src="${images}/process.png">
						</div>
						<span class="line"></span>
						<p>D�veloppement</p>
					</div>
					<div class="quality">
						<div class="imgcircle">
							<img src="${images}/quality.png">
						</div>
						<span class="line"></span>
						<p>Tests et Validation</p>
					</div>
					<div class="delivery">
						<div class="imgcircle">
							<img src="${images}/delivery.png">
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
   		 	    <span class="text-right"><i class="fa fa-file"></i> Document 1 </span> <input name="file1" type="file" required>
				<span class="text-right"><i class="fa fa-file"></i> Document 2 </span> <input name="file2" type="file">
				<span class="text-right"><i class="fa fa-file"></i> Document 3 </span> <input name="file3" type="file">
				<input name="id" type="hidden" value="{id}">
				<input name="url" type="hidden" value="${url}/projects/documents/save"/>
				<input name="author" type="hidden" value="${user.name}">
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
				<br>
			</div>
   		 	<div class="message-edition">
   		 	   <form action="${url}/projects/comments/create">
   		 		<textarea id="textarea-message" name="message"></textarea>
   		 		<input name="id" type="hidden" value={id}>
   		 		<input name="author" type="hidden" value="${user.name}">
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
				<a href="${url}/projects/documents/download?name={name}"><i class="fa fa-file" aria-hidden="true"></i> {name}</a>
				<div class="info-message">
	   	  	    	<b>Auteur :</b> {author}<br>
	   	  	    	<b>Date :</b> {date}
	   	  		</div>
	   	  		<span><a><i class="fa fa-info" aria-hidden="true"></i></a></span>
			</li>
		 {/.}
  </template>
  <template id="template-comments">
      {#.}
	      <div>
	        <i class="fa fa-user" aria-hidden="true"></i> 
	   	  	<div class="message">{message|s}</div>
	   	  	<div class="info-message">
	   	  	    <b>Auteur :</b> {author}<br>
	   	  	    <b>Date :</b> {date}
	   	  	</div>
	   	  	<span><a><i class="fa fa-info" aria-hidden="true"></i></a></span>
	   	  	 <hr/>
	   	  </div>
   	  {/.}
  </template>
  <template id="template-tasks">
    {#.}
    <li data-name="{name}">
      <span><i class="fa fa-tasks" aria-hidden="true"></i> {name}</span> 
      <span data-status="stand by" style="display:none"><span class="label label-info">en attente</span></span>  
      <span data-status="in progress" style="display:none"><span class="label label-danger">en cours</span></span>
	  <span data-status="finished" style="display:none"><span class="label label-success">termin�</span></span>
      <span class="badge badge-info">{progression}%</span>
      <div class="info-message">
	   	  {description}
	  </div>
      <span><a><i class="fa fa-info" aria-hidden="true"></i></a></span>
    </li>
	{/.}  
  </template>	
  </div>
     <div class="plans">
      <div data-plan="plan business" class="pricing business" style="display:none">
			<div class="pricing-top green-top">
				<h3>Business</h3>
				<p>20 000 F/mois</p>
			</div>
			<div class="pricing-bottom">
				<div class="pricing-bottom-top">
					<p>1 site web</p>
					<p>progressive</p>
					<p>http/2</p>
				</div>
				<div class="pricing-bottom-bottom">
					<p><span>1</span> Nom de domaine</p>
					<p><span>1 </span> Certificat</p>
					<p><span>1</span> Base de donn�es</p>  
					<p>adresses emails</p>
					<p>R�f�rencement</p>
					<p>Mises � jour</p>
					<p>Formation</p>
					<p class="text"><span>24/7</span> Assistance</p>
				</div>
			</div>
	 </div>
	

    <div data-plan="plan corporate" class="pricing corporate" style="display:none">
		<div class="pricing-top blue-top">
			<h3>Corporate</h3>
			<p>15 000 F/mois</p>
		</div>
		<div class="pricing-bottom">
			<div class="pricing-bottom-top">
				<p>1 site web</p>
				<p>responsive</p>
				<p>http/2</p>
			</div>
			<div class="pricing-bottom-bottom">
				<p><span>1</span> Nom de domaine</p>
				<p><span>1 </span> Certificat</p>
				<p><span>1</span> Base de donn�es</p>  
				<p>adresses emails</p>
				<p>R�f�rencement</p>
				<p>Mises � jour</p>
				<p>Formation</p>
				<p class="text"><span>24/7</span> Assistance</p>
			</div>
		</div>
	</div>
	
	<div data-plan="plan personal" class="pricing personal" style="display:none">
		<div class="pricing-top">
			<h3>Personal</h3>
			<p>10 000 F/mois</p>
		</div>
		<div class="pricing-bottom">
			<div class="pricing-bottom-top">
				<p>1 site web</p>
				<p>responsive</p>
				<p>http/2</p>
			</div>
			<div class="pricing-bottom-bottom">
				<p><span>1</span> Nom de domaine</p>
				<p><span>1 </span> Certificat</p>
				<p><span>1</span> Base de donn�es</p>
				<p>adresses emails</p>
				<p>R�f�rencement</p>							
				<p>Mises � jour</p>
				<p>Formation</p>
				<p class="text"><span>24/7</span> Assistance</p>
			</div>
		</div>
	</div>
	
	
	<div data-plan="plan social" class="pricing social" style="display:none">
		<div class="pricing-top black-top">
			<h3>Social</h3>
			<p>Gratuit</p>
		</div>
		<div class="pricing-bottom">
			<div class="pricing-bottom-top">
				<p>1 site web</p>
				<p>responsive</p>
				<p>http/2</p>
			</div>
			<div class="pricing-bottom-bottom">
				<p><span>1</span> Nom de domaine</p>
				<p><span>1 </span> Certificat</p>
				<p><span>1</span> Base de donn�es</p>
				<p>adresses emails</p>
				<p>R�f�rencement</p>							
				<p>Mises � jour</p>
				<p>Formation</p>
				<p class="text"><span>24/7</span> Assistance</p>
			</div>
		</div>
	</div>
   </div>
</div>
<div class="window form">
 <div>
   <span title="fermer" class="close">X</span>
	<h1><i class="fa fa-briefcase" aria-hidden="true"></i>Nouveau Projet</h1>
   <form action="${url}/projects/create">
	<fieldset>
	    <span class="text-right"><i class="fa fa-ticket" aria-hidden="true"></i> Service </span>
		<select name="service">
		  <option value="site web">site web</option>
		</select>
	    <span class="text-right"><i class="fa fa-file-code-o" aria-hidden="true"></i> Objet </span>
	    <select name="subject">
		  <option value="cr�ation site web">cr�ation site web</option>
		</select>
		<span class="text-right"><i class="fa fa-code" aria-hidden="true"></i> Plan </span>
		<select name="plan">
		  <option value="plan business">plan business</option>
		  <option value="plan corporate">plan corporate</option>
		  <option value="plan personal">plan personal</option>
		  <option value="plan social">plan social</option>
		</select>
		<span class="text-right"><i class="fa fa-product-hunt" aria-hidden="true"></i> Priorit� </span>
		<select name="priority">
		  <option value="normal">normale</option>
		  <option value="medium">moyenne</option>
		  <option value="high">�lev�e</option>
		</select>
		<span class="text-right full"><i class="fa fa-file-text-o" aria-hidden="true"></i> Description du projet</span>
		<textarea name="description" placeholder="entrer votre description"></textarea>
		<input name="structure" type="hidden" value="${user.structure.name}">
	</fieldset>
	<div class="terms-agreement">
		<input type="checkbox" checked disabled> J'accepte les <a class="read-terms">Termes</a>
	</div>
	<div class="submit">
		 <input type="submit" value="Cr��r">
		 <input type="button" value="Annuler">
	</div>
	   <div class="terms">
	       <div>
		     <span class="close">X</span>
			 <h1 class="text-center"><i class="fa fa-sticky-note-o"></i><span>Termes</span></h1>
			 <p>
			   Merci d'utiliser nos produits et services (Services). En utilisant nos Services, vous acceptez ces termes. Lisez-les attentivement. En utilisant nos Services, vous devez suivre les politiques mises � votre disposition dans les Services. N'abusez pas de nos Services. Par exemple, n'interf�rez pas avec nos Services ou essayez d'y acc�der en utilisant une autre m�thode que l'interface et les instructions que nous fournissons. Vous pouvez utiliser nos Services uniquement conform�ment � la loi, y compris les lois et r�glements applicables en mati�re d'exportation et de r�exportation. Nous pouvons suspendre ou arr�ter de vous fournir nos Services si vous ne respectez pas nos termes ou nos politiques ou si nous enqu�tons sur une faute suspect�e. L'utilisation de nos Services ne vous conf�re aucun droit de propri�t� intellectuelle sur nos Services ou le contenu auquel vous acc�dez. Vous ne pouvez utiliser le contenu de nos Services que si vous obtenez l'autorisation de son propri�taire ou si la loi l'autorise autrement. Ces termes ne vous accordent pas le droit d'utiliser des marques ou des logos utilis�s dans nos Services. Ne supprimez pas, obscurcissez ou modifiez les avis l�gaux affich�s dans ou avec nos Services. En ce qui concerne votre utilisation des Services, nous pouvons vous envoyer des annonces de services, des messages administratifs et d'autres informations. Vous pouvez opter pour certaines de ces communications.
			 </p> 
			 <h2 class="text-center"><i class="fa fa-commenting"></i><span>Nos garanties et d�charges</span></h2>
			 <p>
			   Nous fournissons nos Services avec un niveau de comp�tences et de soins commercialement raisonnable et nous esp�rons que vous appr�cierez l'utilisation. Mais il y'a certaines choses que nous ne promettons pas � propos de nos Services. AUTRE QUE CE SOIT EXPRESS�MENT CONFORM� EN CES CONDITIONS OU TERMES SUPPL�MENTAIRES, NI THINKTECH, NI SES FOURNISSEURS OU DISTRIBUTEURS, NE FONT DES PROMESSES SP�CIFIQUES SUR LES SERVICES. PAR EXEMPLE, NOUS NE FAISONS PAS D'ENGAGEMENTS SUR LE CONTENU DANS LES SERVICES, LES FONCTIONS SP�CIFIQUES DES SERVICES OU LEUR FIABILIT�, LA DISPONIBILIT� OU LA CAPACIT� DE R�PONDRE A VOS BESOINS. Nous fournissons les Services tels quels. CERTAINES JURIDICTIONS PR�SENTENT CERTAINES GARANTIES, COMME LA GARANTIE IMPLICITE DE QUALIT� MARCHANDE, L'ADAPTATION � UN USAGE PARTICULIER ET LA NON-CONTREFA�ON. DANS LA MESURE PERMISE PAR LA LOI, NOUS EXCLUONT TOUTES LES GARANTIES.
			 </p>
			 <h2 class="text-center"><i class="fa fa-commenting"></i><span>Nos Responsabilit�s</span></h2>
			 <p>
			  QUAND AUTORIS� PAR LA LOI, LES FOURNISSEURS ET DISTRIBUTEURS DE THINKTECH ET THINKTECH, NE SERONT PAS TENUS RESPONSABLES DES PERTES DE B�N�FICES, DE REVENUS OU DE DONN�ES, DE PERTES FINANCI�RES OU DE DOMMAGES INDIRECTS, SP�CIAUX, CONS�CUTIFS, EXEMPLAIRES OU PUNITIFS. DANS LA MESURE PERMISE PAR LA LOI, LA RESPONSABILIT� TOTALE DE THINKTECH, ET SES FOURNISSEURS ET DISTRIBUTEURS, POUR TOUTES R�CLAMATIONS EN VERTU DE CES MODALIT�S, Y COMPRIS TOUTE GARANTIE IMPLICITE, EST LIMIT�E AU MONTANT QUE VOUS AVEZ PAY� POUR UTILISER LES SERVICES. DANS TOUS LES CAS, THINKTECH, ET SES FOURNISSEURS ET DISTRIBUTEURS, NE SERONT PAS TENUS RESPONSABLES DE TOUTE PERTE OU DOMMAGE QUI NE SERA PAS RAISONNABLEMENT PREVISIBLE.
			 </p>
			 <h2 class="text-center"><i class="fa fa-commenting"></i><span>Usage commercial de nos Services</span></h2>
			 <p>
			     Si vous utilisez nos Services pour le compte d'une structure, celle-ci accepte ces termes. Elle indemnisera ThinkTech et ses soci�t�s affili�es, dirigeants, agents et employ�s de toute r�clamation, poursuite ou action d�coulant ou li�e � l'utilisation des Services ou violation de ces termes, y compris toute responsabilit� ou frais d�coulant de r�clamations, de pertes , les dommages, les poursuites, les jugements, les frais de litige et les honoraires d'avocat.
			 </p>
			 <h2 class="text-center"><i class="fa fa-commenting"></i><span>� propos de ces termes</span></h2>
			 <p>
			   Nous pouvons modifier ces termes ou tous les termes suppl�mentaires qui s'appliquent � un Service, par exemple, refl�ter les modifications apport�es � la loi ou les modifications apport�es � nos Services. Vous devriez consulter les termes r�guli�rement. Nous signalerons les modifications apport�es � ces termes sur cette page. Nous ferons parvenir un avis de conditions suppl�mentaires modifi�es dans le service applicable. Les changements ne s'appliqueront pas r�troactivement et entreront en vigueur au plus tard quatorze jours apr�s leur publication. Cependant, les modifications apport�es aux nouvelles fonctions pour un service ou les modifications apport�es pour des raisons l�gales entreront en vigueur imm�diatement. Si vous n'acceptez pas les termes modifi�s pour un service, vous devez interrompre votre utilisation de ce service. S'il y a un conflit entre ces termes et les termes suppl�mentaires, les termes suppl�mentaires contr�leront ce conflit. Ces termes contr�lent la relation entre ThinkTech et vous. Ils ne cr�ent aucun droit de b�n�ficiaire tiers. Si vous ne respectez pas ces termes et que nous n'agissons pas imm�diatement, cela ne signifie pas que nous renon�ons � des droits que nous pourrions avoir (par exemple, prendre des mesures � l'avenir).
			 </p>
		</div>
	  </div>
	</form>
	</div>
</div>
<div class="window project-wizard" data-url="${url}/projects/bill">
  <template>
  <div> 
  <section>
    <h1><i class="fa fa-briefcase" aria-hidden="true"></i>Cr�ation Projet Reussie</h1>
	<hr/>
	<span>Merci pour votre souscription au {plan}</span>
	<h2><span class="number">1</span> Etape 1 : Contrat et Caution</h2>
	<div class="col-md-12">
		  <div class="content-process">
			<div class="content3">
				<div class="shipment">
					<div class="confirm">
						<div class="imgcircle">
							<img src="${images}/confirm.png">
						</div>
						<span class="line"></span>
						<p>Contrat et Caution</p>
					</div>
					<div class="process">
						<div class="imgcircle">
							<img src="${images}/process.png">
						</div>
						<span class="line"></span>
						<p>D�veloppement</p>
					</div>
					<div class="quality">
						<div class="imgcircle">
							<img src="${images}/quality.png">
						</div>
						<span class="line"></span>
						<p>Tests et Validation</p>
					</div>
					<div class="delivery">
						<div class="imgcircle">
							<img src="${images}/delivery.png">
						</div>
						<p>Livraison Produit</p>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		   </div>	
	   </div>
	   <p>
	    Les informations fournies seront utilis�es pour g�n�rer le contrat vous liant � ThinkTech et ce dernier sera ajout� aux documents du projet. La facture pour le paiement de la caution a �t� cr��e. Vous pouvez choisir d'effectuer le paiement maintenant en cliquant sur le bouton Terminer afin que votre projet soit trait� au plus vite par notre �quipe de d�veloppement. 
	    <span class="terms-agreement">
	      <input type="checkbox" checked> Payer la caution
	    </span>
	   </p>
	   <div class="submit">
		 <input type="button" value="Terminer" style="float:right">
	</div>
  </section>
  <section>
    <h1><i class="fa fa-briefcase" aria-hidden="true"></i>Paiement Caution Reussie</h1>
	<span>Merci pour votre souscription au {plan}</span>
	<h2><span class="number">2</span> Etape 2 : D�veloppement</h2>
	<div class="col-md-12">
		  <div class="content-process">
			<div class="content3">
				<div class="shipment">
					<div class="confirm">
						<div class="imgcircle active">
							<img src="${images}/confirm.png">
						</div>
						<span class="line active"></span>
						<p>Contrat et Caution</p>
					</div>
					<div class="process">
						<div class="imgcircle active">
							<img src="${images}/process.png">
						</div>
						<span class="line"></span>
						<p>D�veloppement</p>
					</div>
					<div class="quality">
						<div class="imgcircle">
							<img src="${images}/quality.png">
						</div>
						<span class="line"></span>
						<p>Tests et Validation</p>
					</div>
					<div class="delivery">
						<div class="imgcircle">
							<img src="${images}/delivery.png">
						</div>
						<p>Livraison Produit</p>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		   </div>	
	   </div>
	   <h2>Projet Description</h2>
	   <p>
	     {description|s}
	   </p>
	   <hr/>
	   <p>
	      Votre projet a �t� transmis � notre �quipe technique pour traitement. La dur�e du projet est estim�e � 3 mois et vous pouvez bien entendu suivre son �volution. Nous vous contacterons sous peu pour de 
	      plus amples informations ou pour fournir des documents que vous pouvez attacher au projet.
	   </p>
	   <div class="submit">
		 <input type="button" value="Terminer" style="float:right">
	</div>
  </section>
  </div>
  </template>
</div>
</div>
<script src="${js}/projects.js" defer></script>
<script src="js/tinymce/tinymce.min.js" defer></script> 