<%@page import="java.util.List"%>
<%@page import="com.sms.vo.SystemMenuVO"%>
<%@page import="com.sms.controller.SystemMenuManager"%>

<div class="sidebar app-aside" id="sidebar">
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
				<li class="active open"><a href="index.gw">
						<div class="item-content">
							<div class="item-media">
								<i class="ti-home"></i>
							</div>
							<div class="item-inner">
								<span class="title"> Dashboard </span>
							</div>
						</div>
				</a></li>

				<li><a href="javascript:void(0)">
						<div class="item-content">
							<div class="item-media">
								<i class="ti-folder"></i>
							</div>
							<div class="item-inner">
								<span class="title"> School Management </span><i
									class="icon-arrow"></i>
							</div>
						</div>
				</a>
					<ul class="sub-menu">
						<li><a href="javascript:;"> <span>Basic
									Information</span> <i class="icon-arrow"></i>
						</a>
							<ul class="sub-menu">
								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/schoolInfo/view.gw?menuCd=045');">
										School Information </a></li>

								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/gradeClass/list.gw');"> Grade
										class registeration </a></li>

								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/student/list.gw');"> Student
										registeration </a></li>

								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/ClassStudent/view.gw');">
										Student class information </a></li>

								<li><a href="javascript:voide(0)"
									onclick="openLink(' ${ctx }/studentVirtual/list.gw');">
										Student account management </a></li>
								<li><a href="javascript:voide(0)"
									onclick="openLink(' ${ctx }/Subjects/list.gw');"> Subjects
								</a></li>
							</ul></li>
						<li><a href="javascript:;"> <span>Virtual Account</span>
								<i class="icon-arrow"></i>
						</a>
							<ul class="sub-menu">
								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/VirtualAccount/view.gw');">
										virtual account </a></li>

							</ul></li>
						<li><a href="javascript:;"> <span>Payment </span> <i
								class="icon-arrow"></i>
						</a>
							<ul class="sub-menu">
								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/PaymentPeriod/view.gw');">
										Payment Period </a></li>

								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/PaymentInfo/view.gw');">
										Payment amount management </a></li>
								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/ReductionInfo/view.gw');">
										Reduction Info </a></li>

								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/DailyTrialBalance/view.gw');">
										Daily Trial balance </a></li>


							</ul></li>

						<li><a href="javascript:;"> <span>Bill Collection
							</span> <i class="icon-arrow"></i>
						</a>
							<ul class="sub-menu">
								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/Bill/view.gw');"> Bill
										Collection </a></li>

								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/ReceiptHandling/view.gw');">
										Receipt Handling </a>
								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/TransactionChecking/view.gw');">
										Transaction Checking </a></li>

								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/BillHistory/view.gw');"> Bill
										History </a></li>


							</ul></li>

						<li><a href="javascript:;"> <span>Refund </span> <i
								class="icon-arrow"></i>
						</a>
							<ul class="sub-menu">
								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/Refund/view.gw');"> Refund
										Management </a></li>

								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/RefundHandling/view.gw');">
										Refund Handling </a>
								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/TransactionChecking/view.gw');">
										Transaction Checking </a></li>

							</ul></li>


					</ul></li>

				<li><a href="javascript:void(0)">
						<div class="item-content">
							<div class="item-media">
								<i class="ti-folder"></i>
							</div>
							<div class="item-inner">
								<span class="title"> Banking Management </span><i
									class="icon-arrow"></i>
							</div>
						</div>
				</a>
					<ul class="sub-menu">
						<li><a href="javascript:;"> <span>Basic
									Information</span> <i class="icon-arrow"></i>
						</a>
							<ul class="sub-menu">
								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/schoolInfo/view.gw?menuCd=045');">
										School Information </a></li>
								<li><a href="#"> Sample Link 2 </a></li>
								<li><a href="#"> Sample Link 3 </a></li>
							</ul></li>
						<li><a href="javascript:;"> <span>Remittance</span> <i
								class="icon-arrow"></i>
						</a>
							<ul class="sub-menu">
								<li><a href="#"> Fund Remittance </a></li>
								<li><a href="#"> Domestic Remittance </a></li>
							</ul></li>
						<li><a href="javascript:;"> <span>Transaction
									History</span> <i class="icon-arrow"></i>
						</a>
							<ul class="sub-menu">
								<li><a href="#"> Transaction Inquiry </a></li>
							</ul></li>
					</ul></li>

				<li><a href="javascript:void(0)">
						<div class="item-content">
							<div class="item-media">
								<i class="ti-folder"></i>
							</div>
							<div class="item-inner">
								<span class="title"> System Management </span><i
									class="icon-arrow"></i>
							</div>
						</div>
				</a>
					<ul class="sub-menu">
						<li><a href="javascript:;"> <span>Basic
									Information</span> <i class="icon-arrow"></i>
						</a>
							<ul class="sub-menu">
								<li><a href="javascript:void(0);"
									onclick="openLink(' ${ctx }/schoolInfo/view.gw?menuCd=045');">
										School Information </a></li>
								<li><a href="#"> Sample Link 2 </a></li>
								<li><a href="#"> Sample Link 3 </a></li>
							</ul></li>
						<li><a href="javascript:;"> <span>Remittance</span> <i
								class="icon-arrow"></i>
						</a>
							<ul class="sub-menu">
								<li><a href="#"> Sample Link 1 </a></li>
								<li><a href="#"> Sample Link 2 </a></li>
								<li><a href="#"> Sample Link 3 </a></li>
							</ul></li>
						<li><a href="javascript:;"> <span>Item 3</span> <i
								class="icon-arrow"></i>
						</a>
							<ul class="sub-menu">
								<li><a href="#"> Sample Link 1 </a></li>
								<li><a href="#"> Sample Link 2 </a></li>
								<li><a href="#"> Sample Link 3 </a></li>
							</ul></li>
					</ul></li>

			</ul>
			<!-- end: MAIN NAVIGATION MENU -->
		</nav>
	</div>
</div>


<script type="text/javascript">
	function openLink(url) {

		var tmp = $('#app').css('height');
		//alert(tmp);
		tmp = tmp.replace('px', '') - 65 - 52;
		//alert(tmp);
		$('#ifLinkPage').css('height', 850 + 'px');
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