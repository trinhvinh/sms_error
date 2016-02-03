/*
    Title: JQuery Plugin for Ajax Login
    Author : Peter Leow @ 11 Nov 2013
*/
(function($) {
	$.fn.ajaxLogin = function(args){
	
		if (args.length == 0 || args.action == undefined || args.success_redirect_page == undefined)   {
			alert ("Missing parameters!");
			return
		};

		this.html('<div class="ajaxlogin_container"><form action="" id="ajaxlogin_action"><header id="ajaxlogin_header">Please Log in...</header><div><input type="text" placeholder="Username" required id="ajaxlogin_username" /></div><div><input type="password" placeholder="Password" required id="ajaxlogin_password" /></div><div id="progress"><input type="submit" value="Log in" id="ajaxlogin_submit" /></div></form></div>');

		$("#ajaxlogin_action").attr("action", args.action);

		success_redirect_page =  args.success_redirect_page;

		if (args.success_response != undefined) { 
			success_response =  args.success_response;
		} else {
			success_response =  "true";
		};
	
		if (args.error_msg != undefined) { 
			error_msg =  args.error_msg;
		} else {
			error_msg =  "Sign in unsuccessful!";
		};

		if (args.username_label != undefined) { 
			$("#id_username").attr("placeholder", args.username_label);
		};
	
		if (args.password_label != undefined) { 
			$("#id_password").attr("placeholder", args.password_label);
		};
	
		if (args.submit_label != undefined) { 
			$("#ajaxlogin_submit").attr("value", args.submit_label);
		};	
	
		if (args.header_label != undefined) { 
			$("#ajaxlogin_header").html(args.header_label);
		};
	
		var progress_image_src = "";
		if (args.progress_image_src != undefined) { 
			progress_image_src = args.progress_image_src;
		};
	
		$("#ajaxlogin_action").submit(function(){

         	var username=$("#ajaxlogin_username").val();
         	var password= $("#ajaxlogin_password").val();
		 	var oldcontent=$("#progress").html();
		 	
         	$.ajax({
            	type: "POST",
            	url: "/login.sms",
            	data: "username="+username+"&password="+b64_md5(password),
            	success: function(response){
              		if(response == success_response)
              		{
                	 	window.location = success_redirect_page;  
              		}
              		else
              		{
						if (progress_image_src != ""){
				  			$("#progress").html(oldcontent);
						}
                  		alert(error_msg);
					}
            	},
            	beforeSend: function()
            	{
					if (progress_image_src != ""){
						$("#progress").html('<img src="'+progress_image_src+'" alt="Loading in progress..." id="ajaxlogin_progress_image" />');
					}
            	}
        	});
         
        	return false;
    	});
	
	return this;	// make this plug-in chainable
	};
	
}( jQuery ));