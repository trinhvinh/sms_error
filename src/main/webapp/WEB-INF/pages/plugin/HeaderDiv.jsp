<script type="text/javascript">
$(document).ready(function () {
	$( document ).ajaxStart(function() {
		$('#progress').css({ 'display': "" });
		});
	$( document ).ajaxComplete(function() {
		$('#progress').css({ 'display': "none" });
		});
});
</script>

<div id="HeaderDiv">
		<div style="float: right;">
			Welcome <a href="/user/profile.gw"
				class="systemlink" title="Select your language"><%=request.getSession(false).getAttribute("CurrLoginInfo_UserName")	%></a>
		 <!-- , you are
			in: <select class="namespacedropdown"
				onchange="javascript:var sel = this.value; document.location = (sel != &#39;&#39; ? (sel + &#39;.&#39;) : &#39;&#39;) + &#39;Default.aspx&#39;;"><option
					selected="selected" value="">&lt;root&gt;</option>
				<option value="Active Record">Active Record</option>
				<option value="Castle Transactions">Castle Transactions</option>
				<option value="Contrib">Contrib</option>
				<option value="MonoRail">MonoRail</option>
				<option value="Tools">Tools</option>
				<option value="Windsor">Windsor</option></select>-->
				<span>&#8226;</span><a href="${pageContext.request.contextPath}/logout.gw" class="systemlink" title="logout">Logout</a><br>
			<!-- <div style="float: right; margin: 5;">
				<b>Search the documentation: </b>
				<input class="txtsearchbox" type="text"
					id="SB0af2f711d52a4e5a8a5127d8273f981c"
					onkeydown="javascript:var keycode; if(window.event) keycode = event.keyCode; else keycode = event.which; if(keycode == 10 || keycode == 13) { _DoSearch_SB0af2f711d52a4e5a8a5127d8273f981c(); return false; }">
				<a href="http://docs.castleproject.org/MainPage.ashx#"
					onclick="javascript:_DoSearch_SB0af2f711d52a4e5a8a5127d8273f981c(); return false;">»</a>
			</div> -->
		</div>
		<h1><a href="/index.gw">User Request Service</a></h1>
		<div>
			<!--<ul>
				<li style="display: inline; list-style-type: none;"><a
					class="pagelink"
					href="http://docs.castleproject.org/Active%20Record.MainPage.ashx"
					title="Castle ActiveRecord">ActiveRecord</a></li> |
				<li style="display: inline; list-style-type: none;"><a
					class="pagelink"
					href="http://docs.castleproject.org/MonoRail.MainPage.ashx"
					title="Castle MonoRail">MonoRail</a></li> |
				<li style="display: inline; list-style-type: none;"><a
					class="pagelink"
					href="http://docs.castleproject.org/Windsor.MainPage.ashx"
					title="Castle Windsor">Windsor</a></li> |
				<li style="display: inline; list-style-type: none;"><a
					class="pagelink"
					href="http://docs.castleproject.org/Tools.MainPage.ashx"
					title="Castle Services and Tools">DynamicProxy and other tools</a></li>
			</ul>-->
		</div>
		<br>
	</div>
<div id="progress" style="display: none; float: right; position: relative; z-index: 111111; padding-right: 20px;">
	<img alt="loading status" src="${pageContext.request.contextPath}/assets/gws/vms/progress_image.gif" style="width: 25px;">
</div>