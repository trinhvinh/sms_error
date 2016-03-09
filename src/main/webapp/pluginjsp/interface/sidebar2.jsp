<%@page import="java.util.List"%>

<div id="sidebar" class="sidebar app-aside">
	<div class="sidebar-container perfect-scrollbar">
		<nav>
			<!-- start: SEARCH FORM -->
			<div class="search-form">
				<a class="s-open" href="#"> 
					<i class="ti-search"></i>
				</a>
				<form class="navbar-form" role="search">
					<a class="s-remove" href="#" target=".navbar-form"> 
						<i class="ti-close"></i>
					</a>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search...">
						<button class="btn search-button" type="submit">
							<i class="ti-search"></i>
						</button>
					</div>
				</form>
			</div>
			<!-- end: SEARCH FORM -->
			
			<!-- start: MAIN NAVIGATION MENU -->
			<div class="navbar-title">
				<span>Main Navigation</span>
			</div>
			<ul class="main-navigation-menu">
				<li class="active open">
					<a href="/index.sms">
						<div class="item-content">
							<div class="item-media">
								<i class="ti-home"></i>
							</div>
							<div class="item-inner">
								<span class="title"> Dashboard </span>
							</div>
						</div>
					</a>
				</li>

				<li>
					<a href="javascript:void(0)">
						<div class="item-content">
							<div class="item-media">
								<i class="ti-folder"></i>
							</div>
							<div class="item-inner"> 
								<span class="title"> School Management </span><i class="icon-arrow"></i>
							</div>
						</div>
					</a>
					<ul class="sub-menu">
						<li>  
							<a href="javascript:void(0);"><span> School Information </span><i class="icon-arrow"></i></a>
							<ul class="sub-menu">
								<li><a href="javascript:;" onclick="openLink('${ctx }/sms/school/schoolprofile.sms');"> School Information </a></li>
							</ul>						
						</li>
						<li>
							<a href="javascript:void(0);"><span> Grade Class </span><i class="icon-arrow"></i></a>
							<ul class="sub-menu">
								<li><a href="javascript:void(0);" onclick="openLink('${ctx }/sms/gradeclass.sms');"> Grade Class Information </a></li>								
							</ul>						
						</li>						
						<li>
							<a href="javascript:void(0);"><span> Department </span><i class="icon-arrow"></i></a>
							<ul class="sub-menu">
								<li><a href="javascript:void(0);" onclick="openLink('${ctx }/student/list.sms');"> Department Information </a></li>
							</ul>				
						</li>						
						<li>
							<a href="javascript:void(0);"> <span> Teacher </span><i class="icon-arrow"></i></a>
							<ul class="sub-menu">
								<li><a href="javascript:void(0);" onclick="openLink('${ctx }/sms/school/school-profile.sms');"> Teacher Information </a></li>
								<li><a href="javascript:void(0);" onclick="openLink('${ctx }/gradeClass/list.sms');"> Teacher Account Banking </a></li>
								<li><a href="javascript:void(0);" onclick="openLink('${ctx }/student/list.sms');"> Teacher Account User </a></li>								
							</ul>
						</li>			
						<li>
							<a href="javascript:void(0);"> <span> Students </span><i class="icon-arrow"></i></a>
							<ul class="sub-menu">
								<li><a href="javascript:void(0);" onclick="openLink('${ctx }/sms/school/school-profile.sms');"> Student Registration </a></li>
								<li><a href="javascript:void(0);" onclick="openLink('${ctx }/gradeClass/list.sms');"> Student Class </a></li>
								<li><a href="javascript:void(0);" onclick="openLink('${ctx }/ClassStudent/view.sms');"> Student Account Banking </a></li>
								<li><a href="javascript:void(0);" onclick="openLink('${ctx }/studentVirtual/list.sms');"> Student Account User </a></li>
								<li><a href="javascript:void(0);" onclick="openLink('${ctx }/Subjects/list.sms');"> Management Subjects </a></li>
								<li><a href="javascript:void(0);" onclick="openLink('${ctx }/Subjects/list.sms');"> Student Scores</a></li>
							</ul>
						</li>
						<li>
							<a href="javascript:void(0);"> <span> Academic Result </span><i class="icon-arrow"></i></a>
							<ul class="sub-menu">
								<li><a href="javascript:void(0);" onclick="openLink('${ctx }/VirtualAccount/view.sms');"> Scores Information </a></li>
								<li><a href="javascript:void(0);" onclick="openLink('${ctx }/VirtualAccount/view.sms');"> Laudatory </a></li>
							</ul>
						</li>	
						<li>
							<a href="javascript:void(0);"> <span> Account Banking </span><i class="icon-arrow"></i></a>
							<ul class="sub-menu">
								<li><a href="javascript:void(0);" onclick="openLink('${ctx }/VirtualAccount/view.sms');"> Account Banking Information </a></li>
							</ul>
						</li>	
						<li>
							<a href="javascript:void(0);"> <span> Tuition Fees </span><i class="icon-arrow"></i></a>
							<ul class="sub-menu">
								<li><a href="javascript:void(0);" onclick="openLink('${ctx }/VirtualAccount/view.sms');"> Tuition Fees Information</a></li>
							</ul>
						</li>			
						<li>
							<a href="javascript:void(0);"><span> Report Collection </span> <i class="icon-arrow"></i></a>
							<ul class="sub-menu">
								<li>
									<a href="javascript:void(0);"><span> Student Report</span><i class="icon-arrow"></i></a>
									<ul class="sub-menu">
										<li><a href="#"> Sample Link 1 </a></li>
										<li><a href="#"> Sample Link 2 </a></li>
										<li><a href="#"> Sample Link 3 </a></li>
									</ul>
								</li>
								<li>
									<a href="javascript:void(0);"><span> Teacher Report</span><i class="icon-arrow"></i></a>
									<ul class="sub-menu">
										<li><a href="#"> Sample Link 1 </a></li>
										<li><a href="#"> Sample Link 2 </a></li>
										<li><a href="#"> Sample Link 3 </a></li>
									</ul>
								</li>
							</ul>
						</li>						
					</ul>
				</li>
				
				<li>
					<a href="javascript:void(0)">
						<div class="item-content">
							<div class="item-media">
								<i class="ti-folder"></i>
							</div>
							<div class="item-inner">
								<span class="title"> System Management </span><i class="icon-arrow"></i>
							</div>
						</div>
					</a>										
					<ul class="sub-menu">
						<li>
							<a href="javascript:void(0);"> <span>Basic Information</span> <i class="icon-arrow"></i></a>
							<ul class="sub-menu">
								<li><a href="javascript:void(0);" onclick="">System Information </a></li>
							</ul>
						</li>
						<li>
							<a href="javascript:void(0);"><span>User Information</span><i class="icon-arrow"></i></a>
							<ul class="sub-menu">
								<li><a href="javascript:void(0);" onclick="openLink('${ctx }/sms/userlist.sms');"> User List </a></li>
								<li><a href="#"> User Type </a></li>
								<li><a href="#"> History User </a></li>
							</ul>
						</li>
					</ul><!-- end: Sub Menu -->
				</li>
			</ul><!-- end: MAIN NAVIGATION MENU -->			
		</nav>
	</div>
</div>


<script type="text/javascript">

	function openLink(url) {
		var tmp = $('#app').css('height');
		//alert(tmp);
		tmp = tmp.replace('px', '') - 65 - 52;
		//alert(tmp);
		$('#ifLinkPage').css('minHeight', 800 + 'px');
		$('#ifLinkPage').css('height', + 'auto');
		if ($('#ifLinkPage').css('display') == 'none') {
			$('#page-title').css('display', 'none');
			$('#box1').css('display', 'none');
			$('#box2').css('display', 'none');
			$('#box3').css('display', 'none');
			$('#box4').css('display', 'none');
			$('#box5').css('display', 'none');
			$('#ifLinkPage').css('display', '');
			$('#ifLinkPage').attr('src', url);
		} else
			$('#ifLinkPage').attr('src', url);
	}
	
</script>