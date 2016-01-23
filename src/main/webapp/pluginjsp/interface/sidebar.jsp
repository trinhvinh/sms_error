<div id="sidebar">
	<div id="longin_box">
		<%if(request.getSession(false).getAttribute("CurrLoginInfo_UserName")==null || "".equals(request.getSession(false).getAttribute("CurrLoginInfo_UserName"))){	%>
			<form>
				<table>
					<tr>
						<td style="width: 25%"><label for="useId">User Id</label></td>
						<td style="width: 75%" colspan="2"><input type="text" id="useId"></td>
					</tr>
					<tr>
						<td style="width: 25%"><label for="pass">Password</label></td>
						<td style="width: 75%" colspan="2"><input type="password" id="pass"></td>
					</tr>
					<tr>
						<td style="width: 25%"><label for="captext">input Text</label>
						<td style="width: 75%" colspan="2"><input type="text" id="captext"></td>
					</tr>
					<tr>
						<td style="width: 25%"></td>
						<td style="width: 35%">
							<img id="captcha_image" src="${pageContext.request.contextPath}/simpleCaptcha.png" alt="capture" style="width: 95px; border-color: rgb(189, 210, 244); border-style: inset;  border-width: 1px;">
							</td>
						<td style="width: 40%">
							<a href="javascript:void(0);" onclick="reloadCaptcha();"><i class="fa fa-refresh"></i>&nbsp;</a> 
							<a href="javascript:void(0);" onclick="checkCaptchaCode();"><i class="fa fa-sign-in">&nbsp;<br />Login</i></a>
						</td>
					</tr>
				</table>
			</form>
			
			<script type="text/javascript">
				$(document).ready(function() {
					$("#useId").keypress(function (e) {
						if (e.which == 13) {
							checkCaptchaCode();
						}
					})
					
					$("#pass").keypress(function (e) {
						if (e.which == 13) {
							checkCaptchaCode();
						}
					})
					
					$("#captext").keypress(function (e) {
						if (e.which == 13) {
							checkCaptchaCode();
						}
					})
				});
				
				function reloadCaptcha() {
					var d = new Date();
					$("#captcha_image").attr("src", "${pageContext.request.contextPath}/simpleCaptcha.png");
				}
				
				function checkCaptchaCode() {
					if ($('#useId').val() == '') {
						alert('Please input User ID!');
						$('#useId').focus();
						return;
					}
					if ($('#pass').val() == '') {
						alert('Please input Password!');
						$('#pass').focus();
						return;
					}
					if ($('#captext').val() == '') {
						alert('Please input captchar value!');
						$('#captext').focus();
						return;
					}
					var datastring = "answer=" + $('#captext').val();
					$.ajax({
						url : "${pageContext.request.contextPath}/captchavalid.sms",
						dataType : 'json',
						method : 'GET',
						data : datastring,
						beforeSend : function() {
							$("clientGrid").html('');
						},
						error : function(json, textStatus, errorThrown) {
							alert(' Error :' + errorThrown);
						},
						success : function(data) {
							// initailize grid
							if (data.status == 'success' && data.statusText == 'true') {
								//call login
								var datastring2 = "username=" + $('#useId').val() + "&password=" + b64_md5($('#pass').val());
	
								$.ajax({
									url : "${pageContext.request.contextPath}/login.sms",
									dataType : 'json',
									method : 'POST',
									data : datastring2,
									beforeSend : function() {
										//$("clientGrid").html('');
									},
									error : function(json,
											textStatus, errorThrown) {
										alert(' Error :' + errorThrown);
									},
									success : function(data) {
										window.location = '${pageContext.request.contextPath}/index.sms';
									}
								});
							} else {
								alert('please check captchar value');
								$('#captext').focus();
							}
						}
					});
				}			
			
			</script>
		
		<%} else {%>
			<table>
				<tr>
					<td style="width: 25%"><label for="useId">Welcome</label></td>
					<td style="width: 75%" colspan="2"><%=request.getSession(false).getAttribute("CurrLoginInfo_fullname") %> <!-- [<%=request.getSession(false).getAttribute("CurrLoginInfo_UserName") %>] --></td>
				</tr>
				<tr>
					<td style="width: 100%" colspan="3"><label for="pass">at <%=request.getSession(false).getAttribute("CurrCompany_name") %></label></td>
				</tr>
				<tr>
					<td style="width: 25%"><label for="captext"></label></td>
					<td style="width: 75%" colspan="2"></td>
				</tr>
				<tr>
					<td style="width: 25%">
						<a href="<%=request.getContextPath()%>/user/profile.sms?menuCd=032&command=write"><i class="fa fa-user">&nbsp;Profile</i></a>
					</td>
					<td style="width: 35%"></td>
					<td style="width: 40%">
						<a href="<%=request.getContextPath()%>/logout.sms" ><i class="fa fa-sign-out">&nbsp; Sign out</i></a>
					</td>
				</tr>
			</table>
			
		<%} %>
	</div>
	<h3>Service Hours</h3>
		<div id="serviceHour"><br>
		<h5>Inquiry Service : </h5>
		<ul>
			<li><a href="#">Available 24 Hours / 365 Days </a></li>
		</ul>
		<br>
		<br>
		<h5>Support Service: </h5>
		<ul>
			<li><a href="#">5 Days/ week </a></li>
		</ul>
	</div>
</div>