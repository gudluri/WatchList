<script language="JavaScript">
/* set variable */
var s_account="jcrewcom";
var lp_unit = "jcrew";	//LiveChat
var lp_num = "1338460";	//LiveChat
</script>

	<!-- BEGIN MBOX INCLUDE -->
	<script type="text/javascript" src="/media/js/mbox_v2_m56577569830633038.js"></script>
	<!-- END MBOX INCLUDE -->

<!-- Upgraded to BM 9.0.3.3.1 -->






<!-- site catalyst -->

<!-- site catalyst -->
<script language="javascript" src="/media/js/Ajaxutil_v2_m56577569830591834.js"></script>

<script language="javascript">
<!-- 
var imgShoppingBagClosePath = '/media/images/topnav/shopping_bag_new_v2_m56577569830536534.gif';
var imgShoppingBagOpenPath = '/media/images/topnav/shoppingbagOpen_v2_m56577569830502013.gif';
-->
</script>

	

<html>
<head>
<title>Men - black tie - Sterling-silver tie clip - J.Crew</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="Expires" content="Sun, 28 Dec 1997 09:32:45 GMT" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Pragma" content="no-cache" />

<meta name="description" content="Shop men's special occasion ties including black ties, solid, satin, and bow ties. Find men's black and solid neckties for special occasions from J.Crew." />
<meta name="keywords" content="men's special occasion ties, neckties, black ties, bow ties, solid ties, satin ties, jcrew, j.crew" />


<script language="javascript" src="/media/js/cookies_v2_m56577569830492236.js"></script>
<script language="javascript" src="/media/js/cookieChecker_v2_m56577569830527531.js"></script>
<script language="javascript" src="/media/js/swimFinder_v2_m56577569830499814.js"></script>
	<script language="javascript">
	var isOpen = "false";
	function validateAddToCart(index)
	{
		//alert('in validateAddToCart index = '+index);
		var errorMsg = '';
		var _sizes = document.getElementsByName('ADD_CART_ITEM_ARRAY<>ATR_size')[index];
		//alert('_sizes = '+_sizes);
		//alert('xxx = '+_sizes.length);
		//alert('_sizes[index] = '+_sizes[index]);
		var mySelectedIndex = _sizes.selectedIndex;
		//alert('mySelectedIndex = '+mySelectedIndex);
		if (mySelectedIndex <= 0)
		{
			errorMsg = errorMsg + '<span style="color: rgb(204, 0, 0); font-weight: bold; font-size:10px;font-family:verdana,geneva,arial;padding:0px; padding-bottom:5px;background-color:#FFFFFF;">* You must fill in size</span><br/>';
		}
		
		var _color = document.getElementsByName('ADD_CART_ITEM_ARRAY<>ATR_color')[index].value;
		//alert('AA = '+document.getElementsByName('ADD_CART_ITEM_ARRAY<>ATR_color')[index]);
		//alert('_color = |'+_color+'|');
		if (_color == '')
		{
			errorMsg = errorMsg + '<span style="color: rgb(204, 0, 0); font-weight: bold; font-size:10px;font-family:verdana,geneva,arial;padding:0px; padding-bottom:5px;background-color:#FFFFFF;">* You must fill in color</span><br/>';
		}
	
		var _inseamObject = document.getElementById('inseamLength'+index);
		if(_inseamObject && _inseamObject!=null)
		{
			var _inseamSelected = _inseamObject.selectedIndex;
			if(_inseamSelected<=0)
			{
				errorMsg = errorMsg + '<span style="color: rgb(204, 0, 0); font-weight: bold; font-size:10px;font-family:verdana,geneva,arial;padding:0px; padding-bottom:5px;background-color:#FFFFFF;">* You must fill in inseam length</span><br/>';
			}
		}
	
		var _cuffObject = document.getElementById('cuffSize'+index);
		if(_cuffObject && _cuffObject!=null)
		{
			var _cuffSelected = _cuffObject.selectedIndex;
			if(_cuffSelected<=0)
			{
				errorMsg = errorMsg + '<span style="color: rgb(204, 0, 0); font-weight: bold; font-size:10px;font-family:verdana,geneva,arial;padding:0px; padding-bottom:5px;background-color:#FFFFFF;">* You must fill in cuff</span><br/>';
			}
		}
	
		var _quantity = document.getElementsByName('ADD_CART_ITEM_ARRAY<>quantity')[index].value;
		//alert('_quantity = |'+_quantity+'|');
		//alert('isNaN(_quantity) = |'+isNaN(_quantity)+'|');
		if (ltrimrtrim(_quantity) == '' || isNaN(_quantity))
		{
			errorMsg = errorMsg + '<span style="color: rgb(204, 0, 0); font-weight: bold; font-size:10px;font-family:verdana,geneva,arial;padding:0px; padding-bottom:5px;background-color:#FFFFFF;">* error_select_quantity</span><br/>';
		}
	
		//alert('errorMsg = |'+errorMsg+'|');
		if(errorMsg != '')
		{
			var errorDivId = 'pCross_Error_'+index;
			document.getElementById(errorDivId).innerHTML = errorMsg;
			document.getElementById(errorDivId).style.display='block';
			return false;
		}
		else
		{
			var errorDivId = 'pCross_Error_'+index;
			document.getElementById(errorDivId).innerHTML = '';
			document.getElementById(errorDivId).style.display='none';						
			return true;
		}
	}
	
	function omniAdd(product)
	{
		//Omniture scAdd
		var s=s_gi(s_account);
		s.linkTrackVars='channel,events,prop1,prop11,products';
		s.linkTrackEvents='scAdd';
		s.channel='Shopping Bag:Add';
		s.events='scAdd';
		s.prop1=s.channel;
		s.prop11=s.channel;
		s.products = ';'+product;
		s.tl(this,'o','Add to Shopping Bag');						
	}
	
	function sendOmnitureUpdate(item,isSale, price)
	{
		var s=s_gi(s_account);		
		s.linkTrackVars='products,events';
		s.linkTrackEvents='prodView,event11';
		if (isSale == 'true')
			s.products = ';'+item+";;;;evar2=sale";
		else
			s.products = ';'+item+";;;;evar2=regular";
		s.tl(this,'o','Multi Product Details Page');
		
		//LivePerson	
		lpAddVars('page','ProductID',item);	
		lpAddVars('page','ProductValue',price);				
		return true;
	}	
	
	var inventoryErrorHTML = "";
	function resetInventoryError(indexId)
	{
			var divId = 'inventory_error_' + indexId
			if (document.getElementById(divId))
				 {
				document.getElementById(divId).innerHTML = "";
				document.getElementById(divId).style.display = 'none';
			}
			//dynamicDivPopulate('inventory_error_'+indexId, inventoryErrorHTML);
	}
	
	function getProductDetail(element, index, requestType, colorName, imgName, imgDiv) 
	{
		var gotoPage = "/browse/ajax/refresh_multi_product_detail.jsp?selectedIndex="+index;
	
		divTagIds=new Array(4);
		divTagIds[0]="product_details_form"+index;
	    divTagIds[1]="descDiv"+index;
		//divTagIds[2]="critterPopUp"+index;
		inventoryErrorHTML = "";
		if(requestType)
		{
			if (requestType == 'inseamLength')
			{
				document.getElementById('cuffSize'+index).selectedIndex =  0;
			}
			else if (requestType == 'cuffSize')
			{
			}
			else if (requestType == 'color')
			{
				// var _sizes = document.getElementsByName("ADD_CART_ITEM_ARRAY<>ATR_size");
				eval('currImg'+index+'="'+imgName+'";');
				var _sizes = document.getElementsByName('ADD_CART_ITEM_ARRAY<>ATR_size')[index];
				var mySelectedIndex = _sizes.selectedIndex;
				if (mySelectedIndex <= 0 )
				{
					var _color = document.getElementsByName('ADD_CART_ITEM_ARRAY<>ATR_color')[index].value;
					if (_color == '') 
					{
						var errorDivId = "pCross_Error_" + index;
						document.getElementById(errorDivId).style.display='none';
						return;
					}
					setViewImg(imgName,imgDiv);
					var errorDivId = "pCross_Error_" + index;
						document.getElementById(errorDivId).innerHTML = '<span style="color: rgb(204, 0, 0); font-weight: bold; font-size:10px;font-family:verdana,geneva,arial;padding:0px; padding-bottom:5px;background-color:#FFFFFF;">* You must fill in size</span><br/>';
					document.getElementById(errorDivId).style.display='block';
					return;
				}
					else if (imgName == null)
					{
					var colorDivId = "Pcolor_" + index;
			    	document.getElementById(colorDivId).value = "";
		    		return;
		    	}
				else
				{
					setViewImg(imgName,imgDiv);
					var colorDivId = "Pcolor_" + index;
					document.getElementById(colorDivId).value = colorName;
					document.getElementById('productOnFigureImage'+imgDiv).src=imgName;
					divTagIds[1]="descDiv"+index;
				}
			} 
			else 
			{
				// This is called because of size change.
				// reset the color.
				var colorDivId = "Pcolor_" + index;
				document.getElementById(colorDivId).value = '';
				divTagIds[1]="descDiv"+index;
			}
		}
		else
		{
			var xx = document.getElementsByName("ADD_CART_ITEM_ARRAY<>ATR_size");
			xx[index].selectedIndex=0;
			var sasa = document.getElementById('inseamLength'+index);
			if(sasa && sasa != null)
			{
				document.getElementById('inseamLength'+index).selectedIndex =  0;
				document.getElementById('cuffSize'+index).selectedIndex =  0;
			}
			var yy = "productVar_selected_check"+index;
			document.getElementById(yy).value = 'yes';
			divTagIds[1]="descDiv"+index;
			divTagIds[2]="product_image_form"+index;
			inventoryErrorHTML = document.getElementById('inventory_error_' + index).innerHTML;
			var callBack = "function callBackFunc(t) { resetInventoryError("+index+");setOrgImg("+index+",'"+imgDiv+"');}";
			sendAjaxRequest(true,gotoPage, document.forms['add_multi_product'], divTagIds, true, "dummy", true, callBack);
			return;
		}
	
		sendAjaxRequest(true,gotoPage, document.forms["add_multi_product"],divTagIds, true, "refresh_product_detail", false, '', true, 1, element, "Refreshing Details...", 50, 45);
	 }
	 function setOrgImg(index,imgDiv){
	 	eval('currImg'+index+'=document.getElementById("productOnFigureImage"+imgDiv).src;');
	 }
	 function validateSku(index)
	{
		var errorMsg = '';
		var _sizes = document.getElementsByName('ADD_CART_ITEM_ARRAY<>ATR_size')[index];
		//alert('_sizes = '+_sizes);
		//alert('xxx = '+_sizes.length);
		//alert('_sizes[index] = '+_sizes[index]);
		var mySelectedIndex = _sizes.selectedIndex;
		//alert('mySelectedIndex = '+mySelectedIndex);
		if (mySelectedIndex <= 0)
		{
			errorMsg = errorMsg + '<span style="color: rgb(204, 0, 0); font-weight: bold; font-size:10px;font-family:verdana,geneva,arial;padding:0px; padding-bottom:5px;background-color:#FFFFFF;">* You must fill in size</span><br/>';
		}
		var _color = document.getElementsByName('ADD_CART_ITEM_ARRAY<>ATR_color')[index].value;
		//alert('AA = '+document.getElementsByName('ADD_CART_ITEM_ARRAY<>ATR_color')[index]);
		//alert('_color = |'+_color+'|');
		if (_color == '')
		{
			errorMsg = errorMsg + '<span style="color: rgb(204, 0, 0); font-weight: bold; font-size:10px;font-family:verdana,geneva,arial;padding:0px; padding-bottom:5px;background-color:#FFFFFF;">* You must fill in color</span><br/>';
		}
		var _quantity = document.getElementsByName('ADD_CART_ITEM_ARRAY<>quantity')[index].value;
		//alert('_quantity = |'+_quantity+'|');
		//alert('isNaN(_quantity) = |'+isNaN(_quantity)+'|');
		if (ltrimrtrim(_quantity) == '' || isNaN(_quantity))
		{
			errorMsg = errorMsg + '<span style="color: rgb(204, 0, 0); font-weight: bold; font-size:10px;font-family:verdana,geneva,arial;padding:0px; padding-bottom:5px;background-color:#FFFFFF;">* You must fill in quantity</span><br/>';
		}
	
		//alert('errorMsg = |'+errorMsg+'|');
		if(errorMsg != '')
		{
			var errorDivId = 'pCross_Error_'+index;
			document.getElementById(errorDivId).innerHTML = errorMsg;
			document.getElementById(errorDivId).style.display='block';
			return false;
		}
		else
		{
			var errorDivId = 'pCross_Error_'+index;
			document.getElementById(errorDivId).innerHTML = '';
			document.getElementById(errorDivId).style.display='none';
			
			return true;
		}
	}
	</script>
	<script language="javascript" src="/media/js/topNav_v2_m56577569830536240.js"></script>
	<script language="javascript" src="/media/js/mongCritt_v2_m56577569830623547.js"></script>
	<script language="javascript" src="/media/js/multiProd_v2_m56577569830533258.js"></script>
	<script>

		var critr0_0=new Image();
		critr0_0.src = "/media/images/productDetail/monogram/anchor_v2_m56577569830474308.jpg";

		var critr1_0=new Image();
		critr1_0.src = "/media/images/productDetail/monogram/clover_v2_m56577569830474300.jpg";

		var critr2_0=new Image();
		critr2_0.src = "/media/images/productDetail/monogram/crab_v2_m56577569830474302.jpg";

		var critr3_0=new Image();
		critr3_0.src = "/media/images/productDetail/monogram/flamingo_v2_m56577569830474314.jpg";

		var critr4_0=new Image();
		critr4_0.src = "/media/images/productDetail/monogram/flipflops_v2_m56577569830474327.jpg";

		var critr5_0=new Image();
		critr5_0.src = "/media/images/productDetail/monogram/golfer_v2_m56577569830474329.jpg";

		var critr6_0=new Image();
		critr6_0.src = "/media/images/productDetail/monogram/hippo_greengrass_v2_m56577569830474331.jpg";

		var critr7_0=new Image();
		critr7_0.src = "/media/images/productDetail/monogram/hulagirl_v2_m56577569830474323.jpg";

		var critr8_0=new Image();
		critr8_0.src = "/media/images/productDetail/monogram/lobster_red_v2_m56577569830474322.jpg";

		var critr9_0=new Image();
		critr9_0.src = "/media/images/productDetail/monogram/marlin_v2_m56577569830474318.jpg";

		var critr10_0=new Image();
		critr10_0.src = "/media/images/productDetail/monogram/martini_v2_m56577569830474315.jpg";

		var critr11_0=new Image();
		critr11_0.src = "/media/images/productDetail/monogram/pineapple_v2_m56577569830474260.jpg";

		var critr12_0=new Image();
		critr12_0.src = "/media/images/productDetail/monogram/pointerJC_v2_m56577569830474261.jpg";

		var critr13_0=new Image();
		critr13_0.src = "/media/images/productDetail/monogram/retriever_v2_m56577569830474268.jpg";

		var critr14_0=new Image();
		critr14_0.src = "/media/images/productDetail/monogram/suv_kellygreen_v2_m56577569830474276.jpg";

		var critr15_0=new Image();
		critr15_0.src = "/media/images/productDetail/monogram/tennis_navy_v2_m56577569830474290.jpg";

		var critr16_0=new Image();
		critr16_0.src = "/media/images/productDetail/monogram/turtle_v2_m56577569830474284.jpg";

</script>

<link rel="stylesheet" type="text/css" href="/media/css/mult_product_v2_m56577569830536264.css" />
<link rel="stylesheet" type="text/css" href="/media/css/swimFinder_v2_m56577569830489279.css" />
<link href="/media/css/mongCrit_v2_m56577569830536232.css " rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/media/css/factory_v2_m56577569830638773.css" />

	<link rel="stylesheet" type="text/css" href="/media/css/footer_v2_m56577569830489257.css" />
	<link rel="stylesheet" type="text/css" href="/media/css/mensNav_v2_m56577569830623544.css" />

</head>
<body marginwidth="0" marginheight="0" bgcolor="#ffffff" topmargin="0" leftmargin="0">

	



	<!-- BEGIN MBOX INCLUDE -->
	<div class="mboxDefault"></div>
	<script type="text/javascript">
		mboxCreate('jcrew_global');
	</script>
	<!-- END MBOX INCLUDE -->

<noscript>
   <meta http-equiv="refresh" content="0;URL=/flatpages/enableScripting.jsp">
</noscript>

<script language="javascript" src="/media/js/cookies_v2_m56577569830492236.js"></script>
<link rel="stylesheet" type="text/css" href="/media/css/topNav_v2_m56577569830557745.css">
<script language="javascript" src="/media/js/topNav_v2_m56577569830536240.js"></script>
<script language="javascript" src="/media/js/jquery-1.2.6.min_v2_m56577569830622960.js"></script>
<script language="javascript" src="/media/js/jquery.autocomplete_v2_m56577569830622961.js"></script>
<link rel="stylesheet" type="text/css" href="/media/css/jquery.autocomplete_v2_m56577569830622956.css">

<iframe width="0" scrolling="no" height="0" frameborder="0" src="/include/empty.jsp" id="if_persistShoppingBag" style="position:absolute;"></iframe>








<table width="920px" border="0" align="center" cellpadding="0" cellspacing="0" id="topNavTbl" height="63px">
	<tr>
		<td width="550px" align="right" valign="bottom"><a href="http://www.jcrew.com/index.jsp"><img src="/media/images/common/logo_v2_m56577569830536272.gif" border="0" alt="J.Crew"></a></td>
		<td align="right" style="padding-top: 0px;" width="370px"  valign="top"><div id="lpButton"></div></td>		
	</tr>
</table>
<table width="920px" border="0" align="center" cellpadding="0" cellspacing="0" id="topNavTbl">
				<tr>
					<td align="center">
			<table border="0" cellpadding="0" cellspacing="0" width="920">
				<tr>
					<td colspan="3">
						<table cellpadding="0" cellspacing="0" border="0" width="100%" height="30px">
							<tr>
									
                                <td valign="bottom">
                                	<a href="http://www.jcrew.com/womens-clothing.jsp"><img src="/media/images/topnav/women_new_v2_m56577569830535792.gif" alt="Women" border="0"></a>
                                </td>
								
                                <td valign="bottom">
                                	<a href="http://www.jcrew.com/mens-clothing.jsp"><img src="/media/images/topnav/men_new_v2_m56577569830535788.gif" alt="Men" border="0"></a>
                                </td>
								
                                <td valign="bottom">
                                	<a href="http://www.jcrew.com/kids-clothing.jsp"><img src="/media/images/topnav/crewcuts_new_v2_m56577569830547269.gif" alt="crewcuts for kids" border="0"></a>
                                </td>
								
                                <td valign="bottom">
                                	<a href="http://www.jcrew.com/shoes.jsp"><img src="/media/images/topnav/shoes_new_v2_m56577569830536266.gif" alt="Shoes" border="0"></a>
                                </td>
								
                                <td valign="bottom">
                                	<a href="http://www.jcrew.com/womens_feature/handbagshop.jsp"><img src="/media/images/topnav/handbags_new_v2_m56577569830536267.gif" alt="Bags" border="0"></a>
                                </td>
								
                                <td valign="bottom">
                                	<a href="http://www.jcrew.com/womens-jewelry.jsp"><img src="/media/images/topnav/jewelry_new_v2_m56577569830536268.gif" alt="Jewelry" border="0"></a>
                                </td>
								
                                <td valign="bottom">
                                	<a href="http://www.jcrew.com/wedding.jsp"><img src="/media/images/topnav/weddings_new_v2_m56577569830536269.gif" alt="Wedding" border="0"></a>
                                </td>
								
                                <td valign="bottom">
                                	<a href="http://www.jcrew.com/sale.jsp"><img src="/media/images/topnav/sale_black_new_v2_m56577569830536270.gif" alt="sale" border="0"></a>
                                </td>
								
	                                <td valign="bottom">
	                                	<a href="http://www.jcrew.com/factory.jsp"><img src="/media/images/factory/Shop_Factory_v2_m56577569830653361.gif" alt="Factory" border="0"/></a>
	                                </td>
								
								<td align="right" width="100%" valign="bottom" style="padding-bottom:5px;">
									<div id="searchbox" name="searchbox">
									<table cellpadding="0" cellspacing="0" border="0">
					          		<tr>
	            					<td>
									
												<div style="cursor: pointer;" class="topnav_shoppingbag" id="shoppingBagBttn"><img src="/media/images/topnav/shopping_bag_new_v2_m56577569830536534.gif" border="0" align="top" alt="Shopping Bag"/></div>
											
									</td>
				          			<td>
	        			  				<div id="noOfItemsDiv" name="noOfItemsDiv">
	          							<table border="0" cellspacing="0" cellpadding="0">
	          							<tr>
		            									<td class="numberofitemsinbag" ><img src="/media/images/common/spacer_v2_m56577569830537995.gif" width="5" /></td>
										
														<td><div style="cursor: pointer;" class="topnav_shoppingbag" onclick="window.location='http://www.jcrew.com/checkout/shoppingbag.jsp?PRODUCT%3C%3Eprd_id=845524441764525&FOLDER%3C%3Efolder_id=2534374302023758&bmForm=top_nav_checkout&bmFormID=1293933295087&bmSubmit=checkout&bmUID=1293933295087&bmHash=5a501ab9998184b076cc0246a325209026867583'"><img name="topnav_checkout" src="/media/images/topnav/checkout_new_v2_m56577569830536533.gif" border="0" align="top" alt="Checkout"/></div></td>
	            						</tr>
	            						</table>
	            								</div>
	            							</td>
	          							</tr>
        							</table>
									</div>
								</td>
	          						</tr>
        							</table>
        			</td>
	          			</tr>	
						</table>
				<table border="0" cellpadding="0" cellspacing="0" width="960">
				<tr>
					<td height="1" bgcolor="#dddddd" colspan="3"></td>
				</tr>
				</table>
				<table border="0" cellpadding="0" cellspacing="0" width="920">
				<tr height="35px">
					<td align="left" valign="top" height="35px" style="width:425px; min-width: 425px; max-width: 425px; white-space: nowrap;" nowrap="nowrap">
						
						<img src="/media/images/topnav/promo_without_details_new_v2_m56577569830661156.gif" border="0" height="35px" alt="free shipping"><a href="javascript:void(0);" onclick="javascript:togglePromoDetails(this, 'open');"><img src="/media/images/topnav/promo_details_new_v2_m56577569830645689.gif" border="0" height="35px" alt="DETAILS"></a>
						<div id="promoDetailsDiv" style="display:none; position:absolute; top:0px; left:0px; z-index:800;">
							<table width="320px" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="promo_grayBorder">
				<tr>
									<td style="padding-top:6px; padding-left: 8px;"><img src="/media/images/topnav/promo_close_new_v2_m56577569830535793.gif" border="0" onclick="javascript:togglePromoDetails(this, 'close');"/></td>
								</tr>
					  			<tr>
									<td class="promo_text">*All sales final. No exchanges, no returns on final sale items. Offer valid at J.Crew retail stores and at jcrew.com only. Offer is not valid at J.Crew Factory stores. Offer does not apply to previous purchases or the purchase of gift cards. 30% off discount applies to sale items only. Offer valid through Sunday, January 2, 2011, 11:59pm ET. Free shipping offer applies to orders shipped via ground shipping totaling $150+ after 30% discount on sale items and before shipping, handling and taxes are added. Savings are applied at checkout with code SHOPNOW. Offer not valid on phone orders. Cannot be combined with any other promotion. Limit one promotional code per order.</td>
								</tr>
							</table>
						</div>
						
					</td>
					<td valign="top" style="padding-top: 10px;" align="center" width="330px">
						<table height="35px" align="center" cellpadding="0" cellspacing="0" border="0">
							<tr>
								
								
								<td valign="top" class="youraccount">&nbsp;<a href="https://www.jcrew.com/account/signin.jsp" class="youraccount">My Account</a>&nbsp;&nbsp;</td>
								<script language="javascript">
								var userName = getCookie("jcrew_user");
									if (userName != null) 
									{
								// welcome user from cookie info
										document.write('<td valign=top class=youraccount>&nbsp;Welcome, ' +  userName + '</td>');
								// link for NOT YOU
										document.write('<td valign=top class=youraccount>&nbsp;<a href="https://www.jcrew.com/account/signin.jsp" class=youraccount onclick="deleteCookie(\'jcrew_user\', \'/\', \'\')">(not you?)</a>&nbsp;|</td>');
								//alert(getCookie("jcrew_user"));
									} 
									else 
									{
								// link for new account
										document.write('<td valign=top class=youraccount>&nbsp;<a href="https://www.jcrew.com/account/new_account.jsp" class=youraccount>Register</a>&nbsp;&nbsp;</td>');
								}
								</script>
								
								<td valign="top" class="youraccount">&nbsp;<a href="https://www.jcrew.com/account/signin.jsp" class="youraccount">Sign In</a></td>
							
									</tr>
						</table>						
					</td>
					<td align="right" valign="top" width="165px">
						<form name="search_topnav" action="http://www.jcrew.com/mens_category/ties/specialoccasion/PRDOVR~88041/88041.jsp">
<input type="hidden" name="bmForm" value="search_topnav">
<input type="hidden" name="bmFormID" value="1293933295148">
<input type="hidden" name="bmUID" value="1293933295148">
<input type="hidden" name="bmIsForm" value="true">
<input type="hidden" name="bmPrevTemplate" value="/mens_category/ties/specialoccasion/PRDOVR~88041/88041.jsp">
						<table height="35px" cellspacing="0" border="0">
							<tr valign="middle">
								<td align="right"><input type="hidden" name="bmText" value="searchTerm"><input type="text" class="search_box" name="searchTerm" id='searchTerm' maxlength="40" size="25" value="search keyword or item #" onfocus="javascript:if(this.value == 'search keyword or item #'){this.value = '';}" secure="false" autocomplete="off"></td>
								<td align="right" style="padding-left: 2px;"><input type="hidden" name="bmImage" value="findIt.x"><input type="hidden" name="bmImage" value="findIt.y"><input type="hidden" name="bmImage" value="findIt"><input type="image" name="findIt" src="/media/images/topnav/go_new_v2_m56577569830535785.gif" border="0" style="cursor:hand;" alt="go" onclick="javascript:if(document.search_topnav.searchTerm.value == 'search keyword or item #'){document.search_topnav.searchTerm.value = '';}"></td>
							</tr>
						</table>
						<input type="hidden" name="bmHidden" value="PRODUCT<>prd_id"><input type="hidden" name="PRODUCT<>prd_id" value="845524441764525">
<input type="hidden" name="bmHidden" value="FOLDER<>folder_id"><input type="hidden" name="FOLDER<>folder_id" value="2534374302023758">
<input type="hidden" name="bmFields" value="bmForm,bmFormID,bmUID,bmIsForm,bmPrevTemplate,bmText,bmImage,bmHidden">
<input type="hidden" name="bmHash" value="1448e305761b55de44be02086aa769016cf5eb69">
</form>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td height="3" bgcolor="#FFFFFF"><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="3" /><br/></td>
	</tr>
</table>

		
<script language="javascript">

function formatItem(row) {
	return '<strong>'+row[0]+'</strong> : '+row[1];
}
function formatResult(row) {
	//if(row[1]!='undefined' ||  row[1]!=null)
	//{
		return row[1].replace(/(<.+?>)/gi, '');
	//}
	//return null;
}
$().ready(function() {

$("#searchTerm").autocomplete("/typehead", {
		max:8,
		minChars: 2,
		matchContains: true,
		width: 200,
		multiple: false,
		scroll: true,
		scrollHeight: 300,
		formatItem: formatItem,
		formatResult: formatResult,
		selectFirst: false
	});
	$("#searchTerm").result(function(event, item) {
		var str = new String(item);
		var n = str.substr(str.lastIndexOf('N==')+3, str.length);
		location.href = "/search/searchNavigation.jsp?eneQuery=N="+n;
	});
});
</script>
<div id="topNavDiv" name="topNavDiv">
	<form name="persistent_shopping_cart" method="POST" action="http://www.jcrew.com/mens_category/ties/specialoccasion/PRDOVR~88041/88041.jsp">
<input type="hidden" name="bmForm" value="persistent_shopping_cart">
<input type="hidden" name="bmFormID" value="1293933295150">
<input type="hidden" name="bmUID" value="1293933295150">
<input type="hidden" name="bmIsForm" value="true">
<input type="hidden" name="bmPrevTemplate" value="/mens_category/ties/specialoccasion/PRDOVR~88041/88041.jsp">
		

<!-- this is the START of shopping bag pop-up-->
<div style="position:absolute;top:110px;width:291;display:none;z-index:20;" id="persistShoppingBag" name="persistShoppingBag">
</div>
<!-- this is the END of shopping bag pop-up-->
	<input type="hidden" name="bmHidden" value="PRODUCT<>prd_id"><input type="hidden" name="PRODUCT<>prd_id" value="845524441764525">
<input type="hidden" name="bmHidden" value="FOLDER<>folder_id"><input type="hidden" name="FOLDER<>folder_id" value="2534374302023758">
</form>
</div>




<table cellspacing="0" cellpadding="0" border="0" width="100%" align="center" style="position:absolute;top:130px">
	<tr>
		<td align="center" class="wrapBG">
			<table cellspacing="0" cellpadding="0" border="0">
				<tr>
					<td>
						<table cellspacing="0" cellpadding="0" border="0">

							<tr>

								<td class="maincol1">
									

<script type="text/javascript">
//SWAPCLASS FUNCTION TO SWAP BG COLOR & IMAGE
function swapClass(catLink,newClass) {
 catLink.className=newClass;
//	var onOff=newClass.substring(4,newClass.length);
	if(catLink.parentNode.parentNode.getElementsByTagName('img').length>0) {
		if (newClass == 'linkOff'){
			catLink.parentNode.parentNode.getElementsByTagName('img')[0].src="/media/images/mensOff_v2_m56577569830551876.gif"; // Raj: replaced hardcoding with attribute for on/off image. Please make sure, every Assortment and folder have this on/off images in ATR_image_nav_on/ATR_image_nav_off. The Men/Women/Crewcuts/etc and the dependent Assortment that involved in the browse for left nav. 
		}else{
			catLink.parentNode.parentNode.getElementsByTagName('img')[0].src="/media/images/mensOn_v2_m56577569830474100.gif";
		}
		//catLink.parentNode.parentNode.getElementsByTagName('img')[0].src="/media/images/mens"+onOff+".gif";
	}
}
</script>

<table cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td class="title">
			<table cellpadding="2" cellspacing="0" border="0" width="100%">
				<tr>
					<td>
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr>
								<td>
									<table cellpadding="0" cellspacing="0" border="0" width="100%">
        								<tr class="title">
        									<td><img src="/media/images/Menshop_v2_m56577569830511665.gif" border="0" alt="Men shop"></td>
        								</tr>
        							</table>	
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>

 	<tr>

	   	<td class="category"><img src="/media/images/directory/features0_v2_m56577569830511647.gif" alt="Features" border="0"></td><!--###### name of second level folder #######-->

	</tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_feature/NewArrivals.jsp"  class="linkOff" id="new arrivals">new arrivals</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_feature/spotlightslimfit.jsp"  class="linkOff" id="slim fit">slim fit</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_feature/hellerscafebywarehouse.jsp"  class="linkOff" id="Heller's Caf&#233; by Warehouse">Heller's Caf&#233; by Warehouse</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_feature/backbypopulardemand.jsp"  class="linkOff" id="back by popular demand">back by popular demand</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_feature/alwayslist.jsp"  class="linkOff" id="the always list">the always list</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_feature/theliquorstore.jsp"  class="linkOff" id="the liquor store">the liquor store</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_feature/weartoworkshop.jsp"  class="linkOff" id="men's suit shop">men's suit shop</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_feature/ingoodcompany.jsp"  class="linkOff" id="J.Crew in good company">J.Crew in good company</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_feature/jackknowsbest.jsp"  class="linkOff" id="jack knows best">jack knows best</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_feature/highlightreel.jsp"  class="linkOff" id="highlight reel">highlight reel</a></h1></td>
	  </tr>

 	<tr>

	   	<td class="category"><img src="/media/images/directory/shopbycategory0_v2_m56577569830511648.gif" alt="Shop By Category" border="0"></td><!--###### name of second level folder #######-->

	</tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_category/shirts.jsp"  class="linkOff" id="shirts">shirts</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_category/sweaters.jsp"  class="linkOff" id="sweaters">sweaters</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_category/polostees.jsp"  class="linkOff" id="tees, polos & fleece">tees, polos & fleece</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_category/pants.jsp"  class="linkOff" id="pants">pants</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_category/pantsbyfit.jsp"  class="linkOff" id="pants by fit">pants by fit</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_category/denim.jsp"  class="linkOff" id="denim">denim</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_category/suitinganddressshirts.jsp"  class="linkOff" id="suiting & dress shirts">suiting & dress shirts</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_category/sportcoatsandvests.jsp"  class="linkOff" id="sportcoats & vests">sportcoats & vests</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_category/outerwear.jsp"  class="linkOff" id="outerwear">outerwear</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_category/shortsswim.jsp"  class="linkOff" id="shorts & swim">shorts & swim</a></h1></td>
	  </tr>

	  <tr>
	  <!--  ###### name of third level folder (open) ####### -->
	  	<td class="subCategory"><h1 class="header1" ><a href="http://www.jcrew.com/mens_category/ties.jsp" class="linkOff" id="ties">ties</a></h1>
	  </tr>     
   
	  <tr>
		  <td class="subCategoryOpen"><h2 class="header2"><a href="http://www.jcrew.com/mens_category/ties.jsp" class="subCategoryOff" id="seeAll">see all</a></h2></td>
	  </tr>
     			  
			  
	  <tr>
	   	<td class="subCategoryOpen"><h2  class="header2"><a href="http://www.jcrew.com/mens_category/ties/woolties.jsp" class="subCategoryOff" id="wool ties">wool ties</a></h2></td>
	  </tr>
      			  
			  
	  <tr>
	   	<td class="subCategoryOpen"><h2  class="header2"><a href="http://www.jcrew.com/mens_category/ties/silkties.jsp" class="subCategoryOff" id="silk ties">silk ties</a></h2></td>
	  </tr>
      			  
			  
	  <tr>
	   	<td class="subCategoryOpen"><h2  class="header2"><a href="http://www.jcrew.com/mens_category/ties/cottonties.jsp" class="subCategoryOff" id="cotton ties">cotton ties</a></h2></td>
	  </tr>
      			  
			  
	  <tr>
	   	<td class="subCategoryOpen"><h2  class="header2"><a href="http://www.jcrew.com/mens_category/ties/knitties.jsp" class="subCategoryOff" id="knit ties">knit ties</a></h2></td>
	  </tr>
      			  
			  
	  <tr>
	   	<td class="subCategoryOpen"><h2  class="header2"><a href="http://www.jcrew.com/mens_category/ties/thehillside.jsp" class="subCategoryOff" id="the hill-side">the hill-side</a></h2></td>
	  </tr>
      			  
			  
	  <tr>
	   	<td class="subCategoryOpen"><h2  class="header2"><a href="http://www.jcrew.com/mens_category/ties/bowties.jsp" class="subCategoryOff" id="bow ties">bow ties</a></h2></td>
	  </tr>
      
	  <tr>
			<td class="subCategoryOpen"><h2 class="header2" ><a href="http://www.jcrew.com/mens_category/ties/specialoccasion.jsp" class="linkOn" id="special occasion">special occasion</a></h2></td>
	  </tr>
    
       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_category/boxerssleepwear.jsp"  class="linkOff" id="boxers & sleepwear">boxers & sleepwear</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_category/shoes.jsp"  class="linkOff" id="shoes">shoes</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_category/accessories.jsp"  class="linkOff" id="accessories">accessories</a></h1></td>
	  </tr>

 	<tr>

	   	<td class="category"><img src="/media/images/directory/mens_ouronlineshops_v2_m56577569830511649.gif" alt="OUR ONLINE SHOPS" border="0"></td><!--###### name of second level folder #######-->

	</tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_special_shops/catalogjcrewcomexclusives.jsp"  class="linkOff" id="catalog/jcrew.com exclusives">catalog/jcrew.com exclusives</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_special_shops/weddingsparties.jsp"  class="linkOff" id="weddings & parties">weddings & parties</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_special_shops/JCrewcashmere.jsp"  class="linkOff" id="J.Crew cashmere">J.Crew cashmere</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_special_shops/theluggagecollection.jsp"  class="linkOff" id="the luggage collection">the luggage collection</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_special_shops/themonogramshop.jsp"  class="linkOff" id="the monogram shop">the monogram shop</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_special_shops/theresortshop.jsp"  class="linkOff" id="the resort shop">the resort shop</a></h1></td>
	  </tr>

 	<tr>

	   	<td class="category"><img src="/media/images/directory/findaspecialsize0_v2_m56577569830511625.gif" alt="Special Sizes" border="0"></td><!--###### name of second level folder #######-->

	</tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_special_sizes/slim.jsp"  class="linkOff" id="slim">slim</a></h1></td>
	  </tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_special_sizes/tall.jsp"  class="linkOff" id="tall">tall</a></h1></td>
	  </tr>

 	<tr>

	   	<td class="category"><img src="/media/images/directory/mens_visitoursale_v2_m56577569830511650.gif" alt="Visit Our Sale" border="0"></td><!--###### name of second level folder #######-->

	</tr>

       <tr>
			<td class="subCategory"><h1 class="header1"><a href="http://www.jcrew.com/mens_sale/sale.jsp"  class="linkOff" id="sale">sale</a></h1></td>
	  </tr>

	<tr>
		<td class="category_right"><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="30" /></td>
	</tr>


</table>
 <!-- left nav include -->
								</td>

								<td class="maincol2"><img src="/media/images/common/spacer_v2_m56577569830537995.gif" width="8" height="100%" /></td>
								<td class="maincol2" width="600" height="100%">
									<form name="add_multi_product" method="POST" style="padding:0px; margin:0px; border:0px;" action="http://www.jcrew.com/mens_category/ties/specialoccasion/PRDOVR~88041/88041.jsp">
<input type="hidden" name="bmForm" value="add_multi_product">
<input type="hidden" name="bmFormID" value="1293933295151">
<input type="hidden" name="bmUID" value="1293933295151">
<input type="hidden" name="bmIsForm" value="true">
<input type="hidden" name="bmPrevTemplate" value="/mens_category/ties/specialoccasion/PRDOVR~88041/88041.jsp">							
										<input type="hidden" name="bmHidden" value="nav_type"><input type="hidden" name="nav_type" value="PRMNAV"/>
										<table cellspacing="0" cellpadding="0" border="0">
											<tr height="1">												
												<td height="1" width="100%" align="center">
													<img style="background-color:#e0e0e0;" src="/media/images/common/spacer_v2_m56577569830537995.gif" height="1" width="100%" /><br/>
												</td>
											</tr>
											<tr>
												<td valign="top" width="100%" colspan="5"><img src="/media/images/common/spacer_v2_m56577569830537995.gif" width="100%" height="10" /></td>
											</tr>
											<tr>
												<td>										
													<input type="hidden" name="bmHidden" value="ErrorRedirect"><input type="hidden" name="ErrorRedirect" value="/browse/ajax/refresh_multi_product_detail.jsp"/>

													<!-- *** START PRODUCT *** -->
													<table cellspacing="0" cellpadding="0" border="0" height="100%">	
																	<tr>
																		<td class="productpicture" width="393">	
																			<span id="product_image_form0" name="product_image_form0">														
																						
																				<script language="javascript">currImg0="http://images.jcrew.com/erez4/erez?src=images/eiec/88/88041/88041_EC6981.tif&tmp=prdDtIm";</script>
<table cellspacing="0" cellpadding="0" border="0" width="100%">		
  <tr>
		<td class="prod_image_bg">
			<div class="prod_main_img"><a href="javascript:void(0);"><img name="productOnFigureImage88041" id="productOnFigureImage88041" src="http://images.jcrew.com/erez4/erez?src=images/eiec/88/88041/88041_EC6981.tif&tmp=prdDtIm" alt="Sterling-silver tie clip" onClick="popBlowup('88041',this.src, this.id,true);" width="393" height="393" border="0"></a></div>
		</td>
  </tr>
  
  <tr>
	<td class="prod_image_bg">
			<div>
				<table width="100%" border="0" cellpadding="0" cellspacing="0">					
				<tr>
					<td class="prod_image_bg">
						<table border="0" cellpadding="0" cellspacing="0">
							<tr>
								
									<td class="prod_swatches">
										<a href="javascript:void(0);"><img src="http://images.jcrew.com/erez4/erez?src=images/onFigure/88/88041/88041_EC6981_d4.tif&tmp=prdDtIc" alt="Sterling-silver tie clip" onmouseover="changeViewImg(this.src,'productOnFigureImage88041'); return false;" onclick="popBlowup('88041',this.src, 'productOnFigureImage88041');setViewImg(this.src,'88041'); return false;" onmouseout="resetImg('productOnFigureImage88041','0'); return false;" height="75" width="75" border="0"></a>
								</td>			  
								
								<td colspan="0" class="prod_image_bg"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</td>
  </tr>
  
  <tr>
        <td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="8"></td>
   	</tr>
  	<tr>
  		<td class="productstepsnopad" style="padding-left: 2px;">
  			<a href="javascript:popBlowup('88041',document.getElementById('productOnFigureImage88041').src, 'productOnFigureImage88041',true);" class="productstepslink">Zoom</a>&nbsp;<img src="/media/images/productDetail/double_arrow_1_v2_m56577569830535797.gif" />
  	</td>
  </tr>
  <tr>
        <td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="2"></td>
   	</tr>
  	<tr>
  		<td class="productstepsnopad" style="padding-left: 2px;">
  			<a href="javascript:OpenEmailFriendWin('88041');" class="productstepslink">Love this? E-mail your friends.</a>&nbsp;<img src="/media/images/productDetail/double_arrow_1_v2_m56577569830535797.gif" />
  	</td>
  </tr>
  	
</table>
																			</span>
																		</td>
															<td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" width="10" /></td>
															<td class="prod_desc_bg" valign="top" width="100%">
																<span id = "product_details_form0" name="product_details_form0">
																	<table cellspacing="0" cellpadding="0" border="0" width="100%">
																		<tr>
																			<td valign="top" height="100%">
																				<table cellspacing="0" cellpadding="0" border="0" width="100%">

																					<tr>
																						<td width="100%" valign="top">
																							


<table cellpadding="0" cellspacing="0" border="0">
<tr>
	<td class="prodtitle">Sterling-silver tie clip</td>
</tr>
<tr>
		<td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="8" width="100%" /></td>
	</tr>

	
	<tr>
		<td class="standard_nopad">
			<input type="hidden" name="bmHidden" value="ADD_CART_ITEM_ARRAY<>prd_id"><input type="hidden" name="ADD_CART_ITEM_ARRAY<>prd_id" value="845524441764525"/>
			<input type="hidden" name="bmHidden" value="showImageSkuCode0"><input type="hidden" name="showImageSkuCode0" value="/">
			<input type="hidden" name="bmHidden" value="showSaleSkuCode0"><input type="hidden" name="showSaleSkuCode0" value="/">
			<input type="hidden" name="bmHidden" value="ADD_CART_ITEM_ARRAY<>folder_id"><input type="hidden" name="ADD_CART_ITEM_ARRAY<>folder_id" value="282574488339101"/>
			<input type="hidden" name="bmHidden" value="ADD_CART_ITEM_ARRAY<>ATR_nav_type"><input type="hidden" name="ADD_CART_ITEM_ARRAY<>ATR_nav_type" value="PRMNAV"/>
			<input type="hidden" name="bmHidden" value="ADD_CART_ITEM_ARRAY<>isNewAddedProduct"><input type="hidden" name="ADD_CART_ITEM_ARRAY<>isNewAddedProduct" value="true"/>
			<table cellpadding="0" cellspacing="0" border="0">
				<tr>
					<td class="standard_nopad">
				
						$75.00
				
						item&nbsp;88041
					</td>
				</tr>
				
			</table>
		</td>
	</tr>
	<tr>												
		<td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="8" width="100%" /></td>
	</tr>

	<tr>
		<td class="standard_nopad" id="descTD0">
		 
			<div>A classic (and useful) accessory with a simple design for tie-wearing guys on the go. Sterling silver. Import. 2 1/4"L x</div>
			<div><a class="standard_nopad" href="javascript:void(0);" onmouseover="javascript:toggleDesc('open','0');">More</a>...</div>
		
		</td>
	</tr>
	<tr>												
		<td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="8" width="100%" /></td>
	</tr>

	 
	<tr>												
		<td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="8" width="100%" /></td>
</tr>

	<tr>
		<td class="standard_nopad">
		
			<input type="hidden" name="bmHidden" value="ADD_CART_ITEM_ARRAY<>ATR_is_final_sale"><input type="hidden" name="ADD_CART_ITEM_ARRAY<>ATR_is_final_sale" id="ADD_CART_ITEM_ARRAY<>ATR_is_final_sale" value="false">
		
		<input type="hidden" name="bmHidden" value="ADD_CART_ITEM_ARRAY<>ATR_exclude_promo"><input type="hidden" name="ADD_CART_ITEM_ARRAY<>ATR_exclude_promo" id="ADD_CART_ITEM_ARRAY<>ATR_exclude_promo" value="false">
	
		</td>
	</tr>
	
</table>
<input type="hidden" name="bmHidden" value="productVar_selected_check0"><input type="hidden" name="productVar_selected_check0" id="productVar_selected_check0" value="no">
																						</td>
																					</tr>	
																					<tr>
																						<td valign="top" width="100%">
																							<div id="inventory_error_0" style="display:none;"></div>
																						</td>
																					</tr>													
																					<tr>
																						<td valign="top" width="100%">
																							<span style="display:none;" id="pCross_Error_0">
																								<span style="color: rgb(204, 0, 0); font-weight: bold; font-size:10px" class="standard_nopad">* You must fill in size</span>
																							</span>
																						</td>
																					</tr>
																					<tr>
																						<td>	
																							

<script type="text/javascript">
	function noEnter(evt)
	{
  		evt = (evt) ? evt : ((window.event) ? window.event : "");
		var node = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);
  		if ((evt.keyCode == 13) && (node.type=="text"))  
  		{
  			return false;
  		}
	}
</script>
<table border="0" cellpadding="0" cellspacing="0" class="standard_nopad" width="100%">
	<tr>
		<td height="1" valign="top" width="100%" class="standard_nopad">
			<img style="background-color:#e0e0e0;" src="/media/images/common/spacer_v2_m56577569830537995.gif" height="1" width="100%" /><br />
		</td>
	</tr>
	<tr>
		<td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="5" width="100%" /></td>
	</tr>
	<tr>
		<td class="productstepsnopad">
            <table cellspacing="0" cellpadding="0" border="0">
            	<tr>
            		<td class="standard_nopad">
            			<input type="hidden" name="bmSingle" value="ADD_CART_ITEM_ARRAY<>ATR_size"><input type="hidden" name="bmRequired" value="ADD_CART_ITEM_ARRAY<>ATR_size"><select class="standard_nopad" name="ADD_CART_ITEM_ARRAY<>ATR_size" id="sizeSelect0" onchange="javascript:getProductDetail(this, 0, 'size');">
							<option value="">select size</option>

				   			<option value="ONE SIZE" selected>ONE SIZE</option>

						</select>
						<script language="JavaScript" type="text/JavaScript">
						var sizeFormObj=document.getElementById('sizeSelect0');
							if(sizeFormObj.length==2)
							{
						sizeFormObj.selectedIndex=1;
						}
						</script>
					</td>
					<td valign="middle">&nbsp;
					
					</td>
				</tr>
			</table>
		</td>
	</tr> 
	<tr>
		<td class="productstepsnopad">
			<a href="javascript:popSizing()"></a>
		</td>
	</tr>
	<tr>
		<td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="5" width="100%" /></td>
	</tr>
	<tr>
		<td height="1" valign="top" width="100%" class="standard_nopad">
			<img style="background-color:#e0e0e0;" src="/media/images/common/spacer_v2_m56577569830537995.gif" height="1" width="100%" /><br />
		</td>
	</tr>
	<tr>
		<td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="5" width="100%" /></td>
	</tr>
	<tr>
		<td class="productstepsnopad">
			<input type="hidden" name="bmHidden" value="ADD_CART_ITEM_ARRAY<>addedInventoryStatus"><input type="hidden" name="ADD_CART_ITEM_ARRAY<>addedInventoryStatus" value="1" secure="false"/>
			<table align="left" cellspacing="0" cellpadding="0" border="0">

				<tr>
					<td class="standard_nopad">
						<input type="hidden" name="bmSingle" value="ADD_CART_ITEM_ARRAY<>ATR_color"><input type="hidden" name="bmRequired" value="ADD_CART_ITEM_ARRAY<>ATR_color"><select class="standard_nopad" name="ADD_CART_ITEM_ARRAY<>ATR_color" id="Pcolor_0" onchange="javascript:getProductDetail(this, 0,'color',this.value,this.options[selectedIndex].getAttribute('mainImg'),'88041');">
						<option value="" mainImg="http://images.jcrew.com/erez4/erez?src=images/eiec/88/88041/88041_EC6981.tif&tmp=prdDtIm">select color</option>
						
						<option value="SILVER" mainImg="http://images.jcrew.com/erez4/erez?src=images/eiec/88/88041/88041_EC6981.tif&tmp=prdDtIm" selected>silver</option>
						
						</select>
					</td>
				</tr>
<tr>
					<td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="3" width="100%" /></td>
				</tr>
				<tr>
					<td class="standard_nopad">
						color:&nbsp;
						<div id="PColorName_0" style="display:inline;">silver&nbsp;</div>
					</td>
				</tr>
				
			</table>
		</td>
	</tr>
	<tr>
		<td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="5" width="100%" /></td>
	</tr>
	<tr>
		<td height="1" valign="top" width="100%" class="standard_nopad">
			<img style="background-color:#e0e0e0;" src="/media/images/common/spacer_v2_m56577569830537995.gif" height="1" width="100%" /><br />
		</td>
	</tr>
	<tr>
		<td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="3" width="100%" /></td>
	</tr>
	<tr>
		<td  class="productstepsnopad">
			<table align="left" cellspacing="0" cellpadding="0" border="0">
				<tr>
					
				</tr>
				<tr>
					<td colspan="6"><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="3" width="100%" /></td>
				</tr>
				<tr>

					<td align="center" valign="middle" height="24" width="24">
						<img src="http://images.jcrew.com/swatches/88/88041/88041_EC6981.jpg" border="2" width="20" height="20" name="product0swatch00" id="product0swatch00" 
						onmouseover="changeSwatchBorder(this);dynamicDivPopulate('PColorName_0', 'silver');dynamicDivPopulate('pBackorder_0', '');changeViewImg('http://images.jcrew.com/erez4/erez?src=images/eiec/88/88041/88041_EC6981.tif&tmp=prdDtIm','productOnFigureImage88041')"
						onmouseout="dynamicDivPopulate('PColorName_0', 'silver');dynamicDivPopulate('pBackorder_0', '');resetImg('productOnFigureImage88041','0');"
						onclick="setSkuId('1689949372026982');getProductDetail(this,0, 'color', 'SILVER','http://images.jcrew.com/erez4/erez?src=images/eiec/88/88041/88041_EC6981.tif&tmp=prdDtIm','88041')" style="display:block" alt="silver"/>
					</td>

			</table>
		</td>
	</tr>
	<tr>
		<td>

			<input type="hidden" name="bmHidden" value="ADD_CART_ITEM_ARRAY<>sku_id"><input id="multiSkuId" type="hidden" name="ADD_CART_ITEM_ARRAY<>sku_id" value="1689949372026982" secure="false"/>

		</td>
	</tr>
	
	<tr>
		<td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="2" width="100%" /></td>
	</tr>
	<tr>
		<td class="productstepsnopad">(colors not listed are sold out)</td>
	</tr>
	

	<tr>
		<td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="5" width="100%" /></td>
	</tr>
	<tr>
		<td height="1" valign="top" width="100%" class="standard_nopad">
			<img style="background-color:#e0e0e0;" src="/media/images/common/spacer_v2_m56577569830537995.gif" height="1" width="100%" /><br />
		</td>
	</tr>
	<tr>
		<td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="5" width="100%" /></td>
	</tr>
	<tr>
		<td class="productstepsnopad">
			<input type="hidden" name="bmText" value="ADD_CART_ITEM_ARRAY<>quantity"><input class="standard_nopad" type="text" size="1" maxlength="1" name="ADD_CART_ITEM_ARRAY<>quantity" value="1" id="qty" onkeypress="javascript:return noEnter(event);" onblur="validQnty(this)"/>&nbsp;quantity 
		</td>
    </tr>
    <tr>
		<td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="5" width="100%" /></td>
	</tr>
	<tr>
		<td height="1" width="100%" class="standard_nopad">
			<img style="background-color:#e0e0e0;" src="/media/images/common/spacer_v2_m56577569830537995.gif" height="1" width="100%" /><br/>
		</td>
	</tr>
    



<input type="hidden" name="bmHidden" value="ADD_CART_ITEM_ARRAY<>init_first"><input type="hidden" name="ADD_CART_ITEM_ARRAY<>init_first" value="">
<input type="hidden" name="bmHidden" value="ADD_CART_ITEM_ARRAY<>init_middle"><input type="hidden" name="ADD_CART_ITEM_ARRAY<>init_middle" value="">
<input type="hidden" name="bmHidden" value="ADD_CART_ITEM_ARRAY<>init_last"><input type="hidden" name="ADD_CART_ITEM_ARRAY<>init_last" value="">
<input type="hidden" name="bmHidden" value="ADD_CART_ITEM_ARRAY<>ATR_mono_multi_location"><input type="hidden" name="ADD_CART_ITEM_ARRAY<>ATR_mono_multi_location" value="">
<input type="hidden" name="bmHidden" value="ADD_CART_ITEM_ARRAY<>ATR_monogram_text"><input type="hidden" name="ADD_CART_ITEM_ARRAY<>ATR_monogram_text" value="">
<input type="hidden" name="bmHidden" value="ADD_CART_ITEM_ARRAY<>ATR_thread_color"><input type="hidden" name="ADD_CART_ITEM_ARRAY<>ATR_thread_color" value="">
<input type="hidden" name="bmHidden" value="ADD_CART_ITEM_ARRAY<>ATR_mono_Style"><input type="hidden" name="ADD_CART_ITEM_ARRAY<>ATR_mono_Style" value="">
<input type="hidden" name="bmHidden" value="ADD_CART_ITEM<>ATR_mono_StyleFontSize"><input type="hidden" name="ADD_CART_ITEM<>ATR_mono_StyleFontSize" value="">
<input type="hidden" name="bmHidden" value="ADD_CART_ITEM_ARRAY<>ATR_critter_style"><input type="hidden" name="ADD_CART_ITEM_ARRAY<>ATR_critter_style" value="">
<input type="hidden" name="bmHidden" value="ADD_CART_ITEM_ARRAY<>ATR_critter_thread"><input type="hidden" name="ADD_CART_ITEM_ARRAY<>ATR_critter_thread" value="">
  
</table>
																						</td>
																					</tr>
																					<tr>
																						<td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="5" width="100%" /></td>
																					</tr>
																					<tr>
																																												
																						<td valign="top" width="100%"><a onClick="javascript:if(validateAddToCart(0) == true){addToCartMulti(0,'88041');omniAdd(88041);} return false;" href="javascript:void(0);"><img name="Add To Cart" border="0" src="/media/images/productDetail/add_to_cart_1_v2_m56577569830535796.gif" alt="Add to Bag"/></a></td>
																					</tr>

																				</table>
																			</td>
																		</tr>
																	</table>
																</span>
															</td>
														</tr>
													</table>
													<table cellspacing="0" cellpadding="0" border="0" width="100%">
														<tr>
															<td><img src="/media/images/common/spacer_v2_m56577569830537995.gif" height="11" width="100%" /></td>
														</tr>	

													</table>
													<!-- *** END PRODUCT *** -->

												</td>	
											</tr>
										</table>
									<input type="hidden" name="bmHidden" value="PRODUCT<>prd_id"><input type="hidden" name="PRODUCT<>prd_id" value="845524441764525">
<input type="hidden" name="bmHidden" value="FOLDER<>folder_id"><input type="hidden" name="FOLDER<>folder_id" value="2534374302023758">
</form>
								</td>
								<td class="maincol2"><img src="/media/images/common/spacer_v2_m56577569830537995.gif" width="8" height="100%" /></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td align="center">


<script language="javascript" src="/media/js/emailValid_v2_m56577569830492237.js"></script>
<script language="javascript">
	function validateEmailAndSubmit(email)
	{
		if (validateEmail(email))
		{
			document.forms['emailSubscribeForm'].subscribeEmail.value = email;
			document.forms['emailSubscribeForm'].bmAction.value = "no_error_submit";
			document.forms['emailSubscribeForm'].bmSubmit.value = "no_error_submit";
			document.forms['emailSubscribeForm'].isEmailInvalid.value = "false";
	   		document.forms['emailSubscribeForm'].submit();
	   	}
	   	else 
	   	{
	   		document.forms['emailSubscribeForm'].subscribeEmail.value = email;
	   		document.forms['emailSubscribeForm'].bmAction.value = "error_submit";
			document.forms['emailSubscribeForm'].bmSubmit.value = "error_submit";
			document.forms['emailSubscribeForm'].isEmailInvalid.value = "true";
	   		document.forms['emailSubscribeForm'].submit();
	   	}
	}
	function getFooterEnterKeyPress(evt)
	{
  		evt = (evt) ? evt : ((window.event) ? window.event : "");
		var node = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);
  		if ((evt.keyCode == 13) && (node.type=="text"))  
  		{
  			validateEmailAndSubmit(document.forms['emailSubscribeForm'].emailID.value);
  			return false;
  		}
	}
</script>


<div id="footnavtop">
	<table border="0" cellpadding="0" cellspacing="0" width="100%" height="29" align="center">
		<tr class="footerBgColor">
			<td height="1"><img src="/media/images/common/spacer_v2_m56577569830537995.gif" border="0" height="1" /></td>
		</tr>
		<tr>
			<td height="29">
				<table border="0" cellpadding="0" cellspacing="0" height="29" align="center">
					<tr>
						<td height="29" class="footer" style="white-space:nowrap">
						
                        	<a href="http://www.jcrew.com/footie/contactus.jsp"  class="footer">Contact Us</a>&nbsp;
						
                        	<a href="http://www.jcrew.com/footie/help.jsp"  class="footer">Help</a>&nbsp;
						
                        	<a href="http://www.jcrew.com/footie/orderstatus.jsp"  class="footer">Order Status</a>&nbsp;
						
                        	<a href="http://www.jcrew.com/footie/returns.jsp"  class="footer">Returns</a>&nbsp;
						
                        	<a href="http://www.jcrew.com/footie/personalshopper.jsp"  class="footer">Personal Shopper</a>&nbsp;
						
						</td>
						<td height="29" width="1" class="footerBgColor"><img src="/media/images/common/spacer_v2_m56577569830537995.gif" border="0" width="1" /></td>
						<td height="29" style="white-space:nowrap"> 
							<table border="0" cellpadding="0" cellspacing="0" height="29" align="center">
								<tr>
									<td class="footer">&nbsp; Sign up for new arrivals and promotions  &nbsp;</td>
									<td height="29" class="footer">
									 	<!-- show the table with only email field --><!-- validate email form -->
										<table border="0" cellpadding="0" cellspacing="0" height="29">
											<form method="post" name="emailSubscribeForm" action="http://www.jcrew.com/mens_category/ties/specialoccasion/PRDOVR~88041/88041.jsp">
<input type="hidden" name="bmForm" value="emailSubscribeForm">
<input type="hidden" name="bmFormID" value="1293933295156">
<input type="hidden" name="bmUID" value="1293933295156">
<input type="hidden" name="bmIsForm" value="true">
<input type="hidden" name="bmPrevTemplate" value="/mens_category/ties/specialoccasion/PRDOVR~88041/88041.jsp">
												<input type="hidden" name="bmEditable" value="bmAction"><input type="hidden" name="bmArch" value="bmAction"><input type="hidden" name="bmAction"/>
												<input type="hidden" name="bmEditable" value="bmSubmit"><input type="hidden" name="bmArch" value="bmSubmit"><input type="hidden" name="bmSubmit"/>
												<input type="hidden" name="bmEditable" value="sSourceId"><input type="hidden" name="bmHidden" value="sSourceId"><input type="hidden" name="sSourceId" value="JC-ES-FOOTER"/>
												<input type="hidden" name="bmEditable" value="subscribeEmail"><input type="hidden" name="bmHidden" value="subscribeEmail"><input type="hidden" name="subscribeEmail" id="subscribeEmail"/>
												<tr>
													<td>
														<table cellspacing="0" cellpadding="0" border="0">
															<tr>
																<td><input type="hidden" name="bmText" value="emailID"><input type="text" id="emailID" name="emailID" onfocus="this.select()" class="emailsignup" maxlength="200" size="13" value="enter email" onblur="javascript:this.value=this.value.toLowerCase();" onkeydown="javascript:return getFooterEnterKeyPress(event);" onkeypress="javascript:return getFooterEnterKeyPress(event);"/></td>
																<td width="28" align="left" height="24" valign="top">
																	&nbsp;<a href="javascript:void(0);" onclick="javascript:validateEmailAndSubmit(document.forms['emailSubscribeForm'].emailID.value);return false;" class="footer">submit</a> <!-- document.forms['emailSubscribeForm'].submit();-->
																</td>
																<input type="hidden" name="bmEditable" value="currRequestUrlString"><input type="hidden" name="bmHidden" value="currRequestUrlString"><input type="hidden" name="currRequestUrlString" value="http://www.jcrew.com:80/mens_category/ties/specialoccasion/PRDOVR~88041/88041.jsp"/>
																<input type="hidden" name="bmEditable" value="footerRedirect"><input type="hidden" name="bmHidden" value="footerRedirect"><input type="hidden" name="footerRedirect" value="true"/>
																<input type="hidden" name="bmEditable" value="isEmailInvalid"><input type="hidden" name="bmHidden" value="isEmailInvalid"><input type="hidden" name="isEmailInvalid"/>
															</tr>
														</table>
													</td>
												</tr>
											<input type="hidden" name="bmHidden" value="PRODUCT<>prd_id"><input type="hidden" name="PRODUCT<>prd_id" value="845524441764525">
<input type="hidden" name="bmHidden" value="FOLDER<>folder_id"><input type="hidden" name="FOLDER<>folder_id" value="2534374302023758">
<input type="hidden" name="bmFields" value="bmForm,bmFormID,bmUID,bmIsForm,bmPrevTemplate,bmEditable,bmArch,bmHidden,bmText">
<input type="hidden" name="bmHash" value="41776a5abb5dac8cf83d455ff96205b67024f4bf">
</form>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr class="footerBgColor"><td height="1" ><img src="/media/images/common/spacer_v2_m56577569830537995.gif" width=611 height="1" /></td></tr>
	</table>
</div>
</td>
	</tr>
	<tr>
		<td align="center">


<!--  dummy placeholders for ajax messages. -->






<iframe id="if_ajaxLoadMessage_1" scrolling="no" frameborder="0" border="0" allowtransparency="true" src="/include/empty.jsp" style="overflow:hidden;position:absolute;left:0px;top:0px;height:0px;width:0px;"></iframe>
<div id="ajaxLoadMessage_1" class="block" style="position:absolute;"></div>

<div id="footnavbottom">


	<table border="0" cellpadding="0" cellspacing="0" align="center">
		<tr>
			<td class="footer" valign="middle" height="21">
			
						<a href="http://www.jcrew.com/footer/browsecatalog.jsp"  class="footer">Browse Catalog</a>
					&nbsp;
						<a href="http://www.jcrew.com/footer/requestacatalog.jsp"  class="footer">Request a Catalog</a>
					&nbsp;
						<a href="http://www.jcrew.com/footer/StoreLocator.jsp"  class="footer">Store Locator</a>
					&nbsp;
						<a href="http://www.jcrew.com/footer/giftcard.jsp"  class="footer">Gift Cards</a>
					&nbsp;
						<a href="http://www.jcrew.com/footer/jcrewcard.jsp"  class="footer">J.Crew Card</a>
					&nbsp;
						<a href="http://www.jcrew.com/footer/aboutus.jsp"  class="footer">About Us</a>
					&nbsp;
						<a href="http://www.jcrew.com/footer/careers.jsp"  class="footer">Careers</a>
					&nbsp;
						<a href="http://www.jcrew.com/footer/investorrelations.jsp"  class="footer">Investor Relations</a>
					&nbsp;
						<a href="http://www.jcrew.com/footer/socialresponsibility.jsp"  class="footer">Social Responsibility</a>
					&nbsp;
						<a href="http://www.jcrew.com/footer/termsofuse.jsp"  class="footer">Terms of Use</a>
					&nbsp;
						<a href="http://www.jcrew.com/footer/privacy.jsp"  class="footer">Your Privacy Rights</a>
					&nbsp;
						<a href="http://www.jcrew.com/footer/sitemap.jsp"  class="footer">Site Map</a>
					
			</td>
			<!--  The following piece is for language toggle. For the image to be displayed the content frm edesk needed. -->		
			
		</tr>
		<tr>
			<td height="21" align="center" valign="middle" class="footer">&copy; 2011 J.Crew</td>
		</tr>
	</table>
</div>

</td>
	</tr>
</table>
	
	<!------------------- MULTI MONOGRAMMING CODE BEGIN ------------------->
	<iframe scrolling="no"  frameborder="0" id="if_monogramPopUp0" style="position:absolute;left:-500px"></iframe>
	<div id="monogramPopUp0" class="slideXpand">
		<form name="add_monogram" onsubmit="return submitMono(0)" method="post" action="http://www.jcrew.com/mens_category/ties/specialoccasion/PRDOVR~88041/88041.jsp">
<input type="hidden" name="bmForm" value="add_monogram">
<input type="hidden" name="bmFormID" value="1293933295157">
<input type="hidden" name="bmUID" value="1293933295157">
<input type="hidden" name="bmIsForm" value="true">
<input type="hidden" name="bmPrevTemplate" value="/mens_category/ties/specialoccasion/PRDOVR~88041/88041.jsp">
			<input type="hidden" name="bmEditable" value="selectedIndex"><input type="hidden" name="bmHidden" value="selectedIndex"><input type="hidden" name="selectedIndex" id="selectedIndex"/>
		<input type="hidden" name="bmHidden" value="PRODUCT<>prd_id"><input type="hidden" name="PRODUCT<>prd_id" value="845524441764525">
<input type="hidden" name="bmHidden" value="FOLDER<>folder_id"><input type="hidden" name="FOLDER<>folder_id" value="2534374302023758">
<input type="hidden" name="bmFields" value="bmForm,bmFormID,bmUID,bmIsForm,bmPrevTemplate,bmEditable,bmHidden">
<input type="hidden" name="bmHash" value="8d76190a36449fe7153e5d4a05fbcc6e1e7b0644">
</form>
	</div>
	<!------------------- MULTI MONOGRAMMING CODE END ------------------->
	<!------------------- MULTI CRITTER CODE BEGIN ------------------->
	<div id="critterPopUp0" class="slideXpand">
		<form name="critter" onsubmit="return submitCritter(0)" method="post" action="http://www.jcrew.com/mens_category/ties/specialoccasion/PRDOVR~88041/88041.jsp">
<input type="hidden" name="bmForm" value="critter">
<input type="hidden" name="bmFormID" value="1293933295157">
<input type="hidden" name="bmUID" value="1293933295157">
<input type="hidden" name="bmIsForm" value="true">
<input type="hidden" name="bmPrevTemplate" value="/mens_category/ties/specialoccasion/PRDOVR~88041/88041.jsp">
			<input type="hidden" name="bmEditable" value="selectedIndex"><input type="hidden" name="bmHidden" value="selectedIndex"><input type="hidden" name="selectedIndex" id="selectedIndex"/>
		<input type="hidden" name="bmHidden" value="PRODUCT<>prd_id"><input type="hidden" name="PRODUCT<>prd_id" value="845524441764525">
<input type="hidden" name="bmHidden" value="FOLDER<>folder_id"><input type="hidden" name="FOLDER<>folder_id" value="2534374302023758">
<input type="hidden" name="bmFields" value="bmForm,bmFormID,bmUID,bmIsForm,bmPrevTemplate,bmEditable,bmHidden">
<input type="hidden" name="bmHash" value="99ed3d85d22a9d836f638e5a92d851d7f0a36879">
</form>
	</div>
	<!------------------- MULTI CRITTER CODE END ------------------->
	<!------------------- PERSONALIZATION INFO (POP UP for addition info) BEGIN ------------------->
	<script type="text/javascript">
function openMongInfo(linkObj){
	var divXY=findPos(linkObj);
	var divLayer=document.getElementById('personalizationInfo');
	document.getElementById('personalizationInfo').style.display='';
	document.getElementById('personalizationInfo').style.left=divXY[0]-214;
	document.getElementById('personalizationInfo').style.top=divXY[1]-77;
}
</script>
<div id="personalizationInfo" style="display:none; position:absolute; top:0px; left:0px; z-index:800;">
<table width="440" border="0" cellpadding="0" cellspacing="3" bgcolor="#a5bdaf" class="tblBorder">
  <tr>
    <td><table border="0" cellpadding="0" cellspacing="0">
    	<tr>
		  <td width="5" bgcolor="#629a99"><img src="/media/images/common/spacer_v2_m56577569830537995.gif" width="5" height="1"></td>
          <td width="359" bgcolor="#629a99"><img src="/media/images/common/spacer_v2_m56577569830537995.gif" width="359" height="1"></td>
          <td width="70" bgcolor="#629a99"><img src="/media/images/common/spacer_v2_m56577569830537995.gif" width="70" height="1"></td>
        </tr>
	    <tr>
		  <td bgcolor="#629a99"></td>
          <td height="22" bgcolor="#629a99" style="text-align:left;font-family:Arial, Helvetica, sans-serif;font-size:14px;font-weight:bolder;color:#ffffff;">Personalization</td>
          <td bgcolor="#629a99"><a href="javascript:closeInfoPopUp('personalizationInfo', 'personalizationInfoIF');"><img src="/media/images/productDetail/monogram/closeWin_v2_m56577569830474298.gif" width="67" height="18" border="0"></a>
          </td>
        </tr>
        <tr>
		  <td bgcolor="#FFFFFF"></td>
          <td colspan="2" bgcolor="#FFFFFF" style="text-align:left;font-family:Arial, Helvetica, sans-serif;font-size:11px;"><br>
	          Call us at 800.851.3189 if you need any help along the way.<br><strong>Please note:</strong>  the cost of adding a monogram or critter is $10 and personalized items cannot be exchanged or returned. Please allow two weeks for delivery. All Monogrammed and Personalized critter items ship separately from other ordered items; one item per gift box. For group sales, please call 800 205 3877.<br>
	          J.Crew offers triple-initial monograms in either a classic block or diamond insignia.<br>
	          For classic block monograms, in which all letters are the same size, the initials will appear in the following order: first name, middle name, last name.<br>
	          For diamond insignia monograms, in which the center initial is larger than the rest, the initials will appear in the following order: first name, last name, middle name.<br>
         </td>
        </tr>
      </table></td>
  </tr>
</table>
</div>

<iframe id="personalizationInfoIF" src="/include/empty.jsp" scrolling="no" frameborder="0" style="display:none; position:absolute; top:0px; left:0px; z-index:700;">
</iframe>
	<!------------------- PERSONALIZATION INFO (POP UP for addition info) END ------------------->
	
	<div id="descDiv0" style="display:none; position:absolute; top:0px; left:0px; z-index:800;" onmouseover="javascript:toggleDesc('open','0');" onmouseout="javascript:toggleDesc('close','0');">
		<table style="width: 187px;" id="descTable0" border="0" cellpadding="0" cellspacing="3" class="descmore">
  			<tr>
				<td class="descmore_text">A classic (and useful) accessory with a simple design for tie-wearing guys on the go. Sterling silver. Import. 2 1/4"L x 1/4"W.</td>
			</tr>
		</table>
	</div>
	<iframe id="descIF0" src="/include/empty.jsp" scrolling="no" frameborder="0" style="display:none; position:absolute; top:0px; left:0px; z-index:700;">
	</iframe>
	
	<!-- site catalyst multi_product_detail.jsp -->
	
<!-- SiteCatalyst code version: H.14.
Copyright 1997-2008 Omniture, Inc. More info available at
http://www.omniture.com -->

<script language="JavaScript" src="/media/js/s_code_v2_m56577569830623546.js"></script>
<script language="JavaScript"><!--
/* You may give each page an identifying name, server, and channel on
the next lines. */


s.pageName="MDP - 88041"
s.server="jcwebapp-p12.jcrew.com:/opt/software1/bm903jcrew5/"
s.channel="JCrew"
s.pageType=""
s.prop1=""
s.prop2=""
s.prop3=""
s.prop4=""
s.prop5=""
s.prop6=""
s.prop7=""
s.prop8=""
s.prop9="Mens"
s.prop10="JCrew"
s.prop11="Multi Product Details Page"
s.prop12="JCrew:Mens"
s.prop13="JCrew:Mens:ties"
s.prop14="JCrew:Mens:ties:specialoccasion"
/* Conversion Variables */
s.campaign=""
s.state=""
s.zip=""
s.events="prodView,event11,event14"

s.products=";88041;;;;evar2=regular"
s.purchaseID=""
s.eVar1=""
s.eVar2=""
s.eVar3=""
s.eVar4=""
s.eVar5="External Campaign/Site"
s.eVar6=""
s.eVar7=""
s.eVar8=""
s.eVar9=""
s.eVar10=""
s.eVar11="JCrew:Mens"
s.eVar12="JCrew:Mens:ties"
s.eVar13="JCrew:Mens:ties:specialoccasion"
s.eVar14=""
s.eVar15="Mens"
s.eVar16=""
s.eVar17=""
s.eVar18=""
s.eVar19=""
s.eVar20=""
s.eVar21=""
s.eVar22=""
s.eVar23=""
s.eVar24=""
s.eVar25=""
s.eVar26=""
s.eVar27=""
s.eVar28=""
s.eVar29="JCrew"
/************* DO NOT ALTER ANYTHING BELOW THIS LINE ! **************/
var s_code=s.t();if(s_code)document.write(s_code)//--></script>
<!-- End SiteCatalyst code version: H.14. -->




	<!-- BEGIN BAYNOTE INCLUDE -->
	<script type="text/javascript" src="/media/js/baynote_v2_m56577569830647599.js"></script>
	<!-- END BAYNOTE INCLUDE -->



	<!-- Start LiveChat -->
	
	<script language="javascript" type="text/javascript">
		var div_node = document.getElementById('lpButton');
		if(div_node!=null)
		{
		div_node.id = 'lpMCButtonMen';
		}
	</script>
	
			<script type="text/javascript">
				if (typeof(lpUnit)=='undefined') var lpUnit='jcrew';
			</script>
	
			<script src="/media/js/mtagconfig_v2_m56577569830623545.js" type="text/Javascript"></script>
			<script language="javascript" type="text/javascript">
			lpAddVars('page','Section','mens');
			lpAddVars('page','CartTotal','0.00');
	
				lpAddVars('page','ProductID','88041');
				lpAddVars('page','ProductValue','75.00');	
	
			</script>
	
	
	<!-- End LiveChat -->


<!--- Cross -Scripting Implementation start -->

<script language="javascript" type="text/javascript">
// <override submit by - CRAIG GOMEZ - 08 April 2009>

// since we plan to use cross-scripting to get rid of characters like < and > in the user input,
// we need to handle both standard button/image submits as well as javascript submits
// since javascript submits are programmatic submits, it exclusively does "just a submit"
// as opposed to a button/image submit which first calls the onsubmit and the the submit
// since our cross-scripting code runs "onsubmit", in case of javascript submits, it will not work out-of-box
// so we need to explicitly call the onsubmit

// in order to make this code generic and aviod having to call onsubmit everytime we do a javascript submit
// we can override the DOM submit method and forcefully add the onsubmit event and run our cross-script
// and in order to make sure the cross-scripting works with both types of submits, we take complete control
// of the submits and do the necessary. The code below take care of this and has been made as generic as possible
// so that it works on IE as well as other major browsers like Mozilla and Safari

// this is the function which does all the cross-scripting wonders and then submits the form
function overrideSubmit(event)
{
	var target = event ? event.target : this;
    // we loop through all the forms and then through all the form elements
    // if we find any text boxes or text areas, we use regex to do the magic
    for(formCount = 0; formCount < document.forms.length; formCount++)
    {
		for(formElemntCount = 0; formElemntCount<document.forms[formCount].elements.length; formElemntCount++)
		{
			if(document.forms[formCount].elements[formElemntCount].type == "text" || document.forms[formCount].elements[formElemntCount].type == "textarea")
			{
				document.forms[formCount].elements[formElemntCount].value = document.forms[formCount].elements[formElemntCount].value.replace(new RegExp( "((\%3C)|<)|((\\%3E)|>)", "g" ),"");
			}
		}
	}
    // finally, we call real submit function
    try
    {
    this._submit();
}
    catch (err)
    {
        //do nothing
        //this catches the error displayed by IE since we are playing with the DOM functions
    }
}
function overrideOnSubmit(event)
{
	var target = event ? event.target : this;
    // we loop through all the forms and then through all the form elements
    // if we find any text boxes or text areas, we use regex to do the magic
    for(formCount = 0; formCount < document.forms.length; formCount++)
    {
		for(formElemntCount = 0; formElemntCount<document.forms[formCount].elements.length; formElemntCount++)
		{
			if(document.forms[formCount].elements[formElemntCount].type == "text" || document.forms[formCount].elements[formElemntCount].type == "textarea")
			{
				document.forms[formCount].elements[formElemntCount].value = document.forms[formCount].elements[formElemntCount].value.replace(new RegExp( "((\%3C)|<)|((\\%3E)|>)", "g" ),"");
			}
		}
	}
    // finally, we call real submit function
    try
    {
    //this._submit();
}
    catch (err)
    {
        //do nothing
        //this catches the error displayed by IE since we are playing with the DOM functions
    }
}
for(formCount = 0; formCount < document.forms.length; formCount++)
{
	// now we need to explicitely add the onsubmit event to all our forms
	if (document.forms[formCount].addEventListener)
	{
		document.forms[formCount].addEventListener('submit', overrideOnSubmit, false);
	}
	else if(document.forms[formCount].attachEvent)
	{
		document.forms[formCount].attachEvent('onsubmit', overrideOnSubmit);
	}
	// and then we need to capture the submit event on all forms and redirect it to our own overrideSubmit
	// this captures all types of submits be it button or javascript
	document.forms[formCount]._submit = document.forms[formCount].submit;
	document.forms[formCount].submit = overrideSubmit;
}
</script>

<!-----Cross-Scripting Implementation ends -->
</body>
</html>