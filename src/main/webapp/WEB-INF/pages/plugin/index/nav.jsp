<nav class="navbar navbar-static-top">
  <div class="container-fluid">
  <div class="navbar-header">
    <a href="<%=request.getContextPath() %>/index.gw?clientKey=<%=request.getParameter("clientKey") %>&clientUserId=<%=(request.getParameter("clientUserId")==null)?"":request.getParameter("clientUserId") %>" class="navbar-brand">
    	<img alt="vinagenuwin Logo" src="${pageContext.request.contextPath}/assets/logo/logo.png">
    	<b>Vinagenuwin Service Request</b> &nbsp; <small>1.0</small>
    </a>
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
      <i class="fa fa-bars"></i>
    </button>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="navbar-collapse">
    <!--<ul class="nav navbar-nav">
      <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
      <li><a href="#">Link</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
        <ul class="dropdown-menu" role="menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li class="divider"></li>
          <li><a href="#">Separated link</a></li>
          <li class="divider"></li>
          <li><a href="#">One more separated link</a></li>
        </ul>
      </li>
    </ul>-->
    <div class="col-md-3 col-sm-6 col-xs-12">
    <div id="sliderb_container" style="width:400px; height: 80px">
		    
    <div u="slides" style="cursor:move;position: absolute; overflow: hidden; left: 0px; top: 0px; width: 400px; height: 80px;">
		
			<div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box" >
                <div class="info-box-icon bg-aqua glyph"  style="width: 150px">
                	<div class="flaticon-coins36">
                		<label style="font-size: 16px;">Financial Accouting</label>
                	</div>
                </div>
                <div class="info-box-content" >
                  <span class="info-box-text">Ms. Tuyen
                  	<a href="javascript:alert('kaka');"> 
                  		<span class="bg-aqua glyph glyphicon glyphicon-envelope" style="width: 15px;"></span>
                  	</a> 
                  </span>
                  <span class="info-box-number">90<small>%</small></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div>
		
		
			<div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <div class="info-box-icon bg-aqua glyph"  style="width: 150px">
                	<div class="flaticon-coins36" >
                		<label style="font-size: 16px;">Human Resource</label>
                	</div>
                	</div>
                <div class="info-box-content">
                  <span class="info-box-text">ntxuan</span>
                  <span class="info-box-number">90<small>%</small></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div>
		
    
            
    
    </div>
    </div>
    
    <script>
    jQuery(document).ready(function ($) {
    var options = {$AutoPlay: true};   
	//jssor_sliderb_starter('sliderb_container',options);
	var jssor_slider1 = new $JssorSlider$('sliderb_container', options);
	jssor_slider1.$HWA = false
	jssor_slider1.$Play();
    });
	</script>
    </div>
    
    <!-- <form class="navbar-form navbar-left" role="search">
      <div class="form-group">
        <input type="text" class="form-control" id="navbar-search-input" placeholder="Search">
      </div>
    </form>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#">Link</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
        <ul class="dropdown-menu" role="menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li class="divider"></li>
          <li><a href="#">Separated link</a></li>
        </ul>
      </li>
    </ul> -->
    <%if(request.getSession().getAttribute("CurrLoginInfo_UserName")  != null && !"".equals(request.getSession().getAttribute("CurrLoginInfo_UserName"))){ %>
    <div class="navbar-custom-menu">
	    <ul class="nav navbar-nav">
	    <li class="dropdown user user-menu open">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                  <!-- <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image"> -->
                  <span class="hidden-xs"><%=request.getSession().getAttribute("CurrLoginInfo_UserName") %></span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <!-- <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"> -->
                    <p>
                      <%=request.getSession().getAttribute("CurrLoginInfo_UserName") %>
                      <small>Member since Nov. 2012</small>
                    </p>
                  </li>
                  <!-- Menu Body 
                  <li class="user-body">
                    <div class="col-xs-4 text-center">
                      <a href="#">Followers</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Sales</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Friends</a>
                    </div>
                  </li>-->
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="<%=request.getContextPath()%>/logout2.gw?clientKey=<%=request.getParameter("clientKey") %>" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
    	</ul>
    </div>
    <%} %>
  </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>