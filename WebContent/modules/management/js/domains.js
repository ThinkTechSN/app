$(document).ready(function(){
	page.details.bind = function(container,domain) {
		if(domain.status == "finished"){
		   
		}else {
		   
		}
		if(domain.action == "Transfert"){
			$(".eppCode",container).show();
		}else{
			$(".eppCode",container).hide();
		}
	};
 });