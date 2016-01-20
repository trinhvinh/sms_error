<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ include file="/plugin/taglibrary.jsp"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>HVMT Service Request</title>
    <%@ include file="/jsplib/index/headPage.jsp"%>
      <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap-datepicker.css" rel="stylesheet" type="text/css" />
    
  </head>
  <!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
  <body class="skin-green layout-top-nav" >
    <div class="wrapper">
      
      <header class="main-header">               
        <%@ include file="/jsplib/index/nav.jsp"%>
      </header>
      <!-- Full Width Column -->
      <div class="content-wrapper">
        <div class="container-fluid">
          <!-- Content Header (Page header) -->
          <section class="content-header">
            <h1>
              Summary Request
              <small>List Page</small>
            </h1>
            <ol class="breadcrumb">
              <li><a href="/index.gw"><i class="fa fa-dashboard"></i> Home</a></li>
              <li class="active">List Page</li>
            </ol>
          </section>

          <!-- Main content -->
          <section class="content">
            
            <div class="row">
            <!-- left column -->
            <div class="col-md-8">
              <!-- Form Element sizes -->
              <!-- <form action="/index.gw" id="formSearch" method="get"> -->
              <form:form action="/index.gw" id="formSearch" method="get" commandName="requestVO">
              <div class="box box-success">
                <div class="box-header">
                  <h3 class="box-title">Data List</h3>
                </div>
                <div class="box-body">
	                <div class="row">
	                	<div class="col-lg-1">Request Date</div>
	                	<!-- Date dd/mm/yyyy -->
		                  <div class="form-group col-lg-2">
		                    <div class="input-group">
		                   <!--  <input type="date" class="form-control"  data-inputmask="'alias': 'dd/mm/yyyy'" id="dp3"/>   -->
		                   <!--  <div class="input-append date" id="dp3" data-date="12-02-2012" data-date-format="dd-mm-yyyy"> -->
							  <!-- <input class=" span2 form-control" size="16" type="text" value="12-02-2012">
							  <span class="add-on"><i class="fa fa-calendar"></i></span> -->
							  
							  <!--  <input type='text' class=" span2 form-control" style="float: left;" />ggg
			                    <span class="input-group-addon" style="float: left;">
			                        <i class="fa fa-calendar"></i>
			                    </span>
							</div>   -->
							
						
							<div class='input-group date' id='dtFrom' data-date-format="dd/mm/yyyy">
				                <!-- <input type='text' class="form-control" name="searchKeywordFrom"  /> -->
				                <form:input path="searchKeywordFrom"  class="form-control" />
				                <span class="input-group-addon">
				                    <span class="glyphicon glyphicon-calendar">
				                    </span>
				                </span>
          				  </div>
		                      <!--  <div class="input-group-addon">
		                        <i class="fa fa-calendar"></i>
		                      </div>  -->
		                      <input type="hidden" name="clientKey" value="<%=request.getParameter("clientKey") %>">
		                    </div><!-- /.input group -->
		                  </div><!-- /.form group -->
		                  <div class="form-group col-lg-2">
		                    <div class="input-group">
		                    <!-- 	<input type="text" class="form-control"  data-inputmask="'alias': 'dd/mm/yyyy'"  data-mask/>
		                      <div class="input-group-addon">
		                        <i class="fa fa-calendar"></i>
		                      </div> -->
		                      
		                      <div class='input-group date' id='dtTo' data-date-format="dd/mm/yyyy">
				              <!--   <input type='text' class="form-control"  name="searchKeywordTo" /> -->
				              <form:input path="searchKeywordTo" class="form-control" />
				                <span class="input-group-addon">
				                    <span class="glyphicon glyphicon-calendar">
				                    </span>
				                </span>
          				  </div>
		                      
		                    </div><!-- /.input group -->
		                  </div><!-- /.form group -->
		                  <div class="form-group col-lg-1">
		                  	<button class="btn btn-block btn-default" onclick="search1(1)">Search</button>
		                  </div>
		                  <div class="form-group col-lg-1">
		                  	
		                  	<a href="<%=request.getContextPath() %>/clientreq/add.gw?clientKey=<%=request.getParameter("clientKey") %>" class="btn btn-block btn-default" >Register</a>
		                  </div>
	                  
                  
                  
                  <label style="float: right;   padding-right: 10px;">
                  	<form:select class="form-control" size="1" path="pageSize" aria-controls="example1">
	                      <form:option value="10" selected="selected">10 Record(s) per page</form:option>
		                  <form:option value="25">25 Record(s) per page</form:option>
		                  <form:option value="50">50 Record(s) per page</form:option>
		                  <form:option value="100">100 Record(s) per page</form:option>
                      </form:select>
                  </label>
                  </div>
                  <table class="table table-hover table-striped">
	                  <thead>
		                    <tr>
		                      <th width="10%">Req No</th>
		                      <th  width="20%">Request Date</th>
		                      <th>Request Title</th>
		                      <th>Status</th>
		                      <th>Priority</th>
		                  <!--     <th>Progress</th> -->
		                      <th style="width: 40px">Remarks</th>
		                    </tr>
	                    </thead>
	                    <tbody>
	                    	<c:forEach var="reqObj" items="${requestLst }">
		                    	<tr>
			                      <td><a href="${pageContext.request.contextPath}/clientreq/add.gw?pk=${reqObj.pk}&command=update&clientKey=<%=request.getParameter("clientKey") %>">${reqObj.reqNo}</a></td>
			                      <%-- <td><a href="${pageContext.request.contextPath}/clientreq/add.gw?pk=${reqObj.pk}&command=update">${reqObj.clientUserName}</a></td> --%>
			                      <td>${reqObj.reqDate } [ ${reqObj.crtBy } ] </td>
			                      <td>${reqObj.reqTitle}</td>
			                      
			                      <td><span class="label label-success">
			                      
			                      <c:if test="${reqObj.reqStatus ==0 }">
				                       		Save Request
				                      	</c:if> 
				                      	
				                      <c:if test="${reqObj.reqStatus ==1 }">
				                       		Submit request
				                      	</c:if> 
				                      	
				                      	  <c:if test="${reqObj.reqStatus ==2 }">
				                       		approved by manager
				                      	</c:if> 
				                      	
				                      <c:if test="${reqObj.reqStatus ==3 }">
				                       		dis approved by manager
				                      	</c:if>
				                      		
				                      <c:if test="${reqObj.reqStatus ==4 }">
				                      	cancel 
			                      </c:if>
			                      </span></td>
			                      <td>
				                    
				                      	${reqObj.priority }
				                      
				                    
			                      </td>
			                    <!--   <td>
				                        <div class="progress progress-xs">
				                          <div class="progress-bar progress-bar-danger" style="width: 55%"></div>
				                        </div>
			                      </td> -->
			                      <td><!-- span class="badge bg-red"> -->
			                      		${reqObj.remarks}
			                      		</td>
			                    </tr>
	                    	</c:forEach>
	                    	<c:if test="${fn:length(requestLst) == 0 }">
	                    		<tr>
		                    		<td colspan="7">
		                    			<c:out value="No data to display."></c:out>
		                    		</td>
	                    		</tr>
	                    	</c:if>
	                    </tbody>
                  </table>
                  
                  
                </div><!-- /.box-body -->
                <div class="box-footer clearfix">
                  	${str }
                </div>
              </div><!-- /.box -->
              <!-- </form> -->
              </form:form>
			</div>
            <!-- right column -->
            <div class="col-md-4">
              <!-- general form elements disabled -->
              <div class="box box-warning">
                <div class="box-header">
                  <h3 class="box-title">By Chart</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                   <div id="bar-chart" style="height: 300px;"></div>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!--/.col (right) -->
          </div>

          </section><!-- /.content -->
        </div><!-- /.container -->
      </div><!-- /.content-wrapper -->
      <%@ include file="/jsplib/index/footer.jsp"%>
    </div><!-- ./wrapper -->

    <%@ include file="/jsplib/index/inclfooter.jsp"%>
   
    
    <style type="text/css" >
     #bar-chart{ width: 450px; height: 200px; position: relative; margin: 0 auto; }
.legend table, .legend > div { height: 82px !important; opacity: 1 !important; right: -55px; top: 10px; width: 116px !important; }
.legend table { border: 1px solid #555; padding: 5px; }
#flot-tooltip { font-size: 12px; font-family: Verdana, Arial, sans-serif; position: absolute; display: none; border: 2px solid; padding: 2px; background-color: #FFF; opacity: 0.8; -moz-border-radius: 5px; -webkit-border-radius: 5px; -khtml-border-radius: 5px; border-radius: 5px; }
</style>
    <script type="text/javascript">
    /*
     * BAR CHART
     * ---------
     */
     $( document ).ready(function() {
	
     
     var d1_1 = [
                 [1325376000000, 120],
                 [1328054400000, 70],
                 [1330560000000, 100],
                 [1333238400000, 60],
                 [1335830400000, 35]
             ];
          
             var d1_2 = [
                 [1325376000000, 80],
                 [1328054400000, 60],
                 [1330560000000, 30],
                 [1333238400000, 35],
                 [1335830400000, 30]
             ];
          
             var d1_3 = [
                 [1325376000000, 80],
                 [1328054400000, 40],
                 [1330560000000, 30],
                 [1333238400000, 20],
                 [1335830400000, 10]
             ];
          
             var d1_4 = [
                 [1325376000000, 15],
                 [1328054400000, 10],
                 [1330560000000, 15],
                 [1333238400000, 20],
                 [1335830400000, 15]
             ];
          
             var data1 = [
                 {
                     label: "Product 1",
                     data: d1_1,
                     bars: {
                         show: true,
                         barWidth: 12*24*60*60*300,
                         fill: true,
                         lineWidth: 1,
                         order: 1,
                         fillColor:  "#AA4643"
                     },
                     color: "#AA4643"
                 },
                 {
                     label: "Product 2",
                     data: d1_2,
                     bars: {
                         show: true,
                         barWidth: 12*24*60*60*300,
                         fill: true,
                         lineWidth: 1,
                         order: 2,
                         fillColor:  "#89A54E"
                     },
                     color: "#89A54E"
                 },
                 {
                     label: "Product 3",
                     data: d1_3,
                     bars: {
                         show: true,
                         barWidth: 12*24*60*60*300,
                         fill: true,
                         lineWidth: 1,
                         order: 3,
                         fillColor:  "#4572A7"
                     },
                     color: "#4572A7"
                 },
                 {
                     label: "Product 4",
                     data: d1_4,
                     bars: {
                             show: true,
                         barWidth: 12*24*60*60*300,
                         fill: true,
                         lineWidth: 1,
                         order: 4,
                         fillColor:  "#80699B"
                     },
                     color: "#80699B"
                 }
             ];
             
             $.plot($("#bar-chart"), data1, {
                 xaxis: {
                     min: (new Date(2011, 11, 15)).getTime(),
                     max: (new Date(2012, 04, 18)).getTime(),
                     mode: "time",
                     timeformat: "%b",
                     tickSize: [1, "month"],
                     monthNames: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                     tickLength: 0, // hide gridlines
                     axisLabel: 'Month',
                     axisLabelUseCanvas: true,
                     axisLabelFontSizePixels: 12,
                     axisLabelFontFamily: 'Verdana, Arial, Helvetica, Tahoma, sans-serif',
                     axisLabelPadding: 5
                 },
                 yaxis: {
                     axisLabel: 'Value',
                     axisLabelUseCanvas: true,
                     axisLabelFontSizePixels: 12,
                     axisLabelFontFamily: 'Verdana, Arial, Helvetica, Tahoma, sans-serif',
                     axisLabelPadding: 5
                 },
                 grid: {
                     hoverable: true,
                     clickable: false,
                     borderWidth: 1
                 },
                 legend: {
                     labelBoxBorderColor: "none",
                     position: "right"
                 },
                 series: {
                     shadowSize: 1
                 }
             });
          
             function showTooltip(x, y, contents, z) {
                 $('<div id="flot-tooltip">' + contents + '</div>').css({
                     top: y - 20,
                     left: x - 90,
                     'border-color': z,
                 }).appendTo("body").show();
             }
          
             function getMonthName(newTimestamp) {
                 var d = new Date(newTimestamp);
          
                 var numericMonth = d.getMonth();
                 var monthArray = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
          
                 var alphaMonth = monthArray[numericMonth];
          
                 return alphaMonth;
             }
          
             $("#bar-chart").bind("plothover", function (event, pos, item) {
                 if (item) {
                     if (previousPoint != item.datapoint) {
                         previousPoint = item.datapoint;
                         $("#flot-tooltip").remove();
          
                         var originalPoint;
          
                         if (item.datapoint[0] == item.series.data[0][3]) {
                             originalPoint = item.series.data[0][0];
                         } else if (item.datapoint[0] == item.series.data[1][3]){
                             originalPoint = item.series.data[1][0];
                         } else if (item.datapoint[0] == item.series.data[2][3]){
                             originalPoint = item.series.data[2][0];
                         } else if (item.datapoint[0] == item.series.data[3][3]){
                             originalPoint = item.series.data[3][0];
                         } else if (item.datapoint[0] == item.series.data[4][3]){
                             originalPoint = item.series.data[4][0];
                         }
          
                         var x = getMonthName(originalPoint);
                         y = item.datapoint[1];
                         z = item.series.color;
          
                         showTooltip(item.pageX, item.pageY,
                             "<b>" + item.series.label + "</b><br /> " + x + " = " + y + "&deg;C",
                             z);
                     }
                 } else {
                     $("#flot-tooltip").remove();
                     previousPoint = null;
                 }
             });
            
            
     });
    
   
    /* END BAR CHART */
      $('#dtFrom').datepicker();
     $("#dtFrom").on("change", function () {
    	 $('#dtFrom').datepicker('hide');
    	});
     
     $('#dtTo').datepicker();
     $("#dtTo").on("change", function () {
    	 $('#dtTo').datepicker('hide');
    	});
     
     
     function search1(i){
    	 // var x = document.getElementById("formSearch").action;
        // alert( index);
    	// document.getElementById("formSearch").submit(); 
     var hidden = document.createElement("input");
    	  hidden.type = "hidden";
    	 hidden.name = "pageIndex";
    	 hidden.value = i; 
    	// alert(index);
     var f = document.getElementById("formSearch");
    	 f.appendChild(hidden);
    	f.submit(); 
     }
     
    
    </script>
    
    
  </body>
</html>

