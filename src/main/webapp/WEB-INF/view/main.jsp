<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<meta charset="utf-8">
<title>stock market</title>

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700"
	rel="stylesheet">
<!-- Bootstrap Styles -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
>

<link rel="stylesheet" type="text/css" href="/resource/css/mobile.css">
<!-- Template Styles -->
<link rel="stylesheet" type="text/css" href="/resource/css/font-awesome.min.css">

<!-- CSS Reset -->
<link rel="stylesheet" type="text/css" href="/resource/css/normalize.css">

<!-- Milligram CSS minified -->
<link rel="stylesheet" type="text/css" href="/resource/css/milligram.min.css">

<!-- Main Styles -->
<link rel="stylesheet" type="text/css" href="/resource/css/main.css">

<link rel="stylesheet" type="text/css" href="/resource/css/tablet.css">

<!--  pop-up -->
<link rel="stylesheet" type="text/css" href="/resource/css/popup.css">
<script src="/resource/js/popup/popup.js"></script>
<script src="/resource/js/main.js"></script>

<!--[if lt IE 9]>
   <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
   <![endif]-->
<style>
@media all and (max-width: 1100px) {
	.row .column.column-33, .row .column.column-34 {
		flex: none;
		max-width: 49.3333%;
	}
}
</style>

<script>
var stockURL = "http://localhost:8080";
//for relealse
//var stockURL = "http://stockmarket.iptime.org";


</script>

</head>

<body class="scrollbar custom-scrollbar-style">
   <!-- =============================================================================================================== -->
   <header class="navbar">
      <h1 style="display: none;">STOCK MARKET</h1>
      <section class="row">
         <h1 style="display: none;">header</h1>
         <section class="column column-30 col-site-title">
            <h1 style="display: none;">site title</h1>
            <a href="#" class="site-title float-left">STOCK MARKET</a>
            <section class="column column-30">
               <h1 style="display: none;">user section</h1>
               <div class="user-section">
                  <div class="personal">
                  	 <img src="http://via.placeholder.com/50x50" alt="profile photo" class="circle float-left profile-photo visiblity" width="50" height="auto">
                  	<c:if test="${empty sessionScope.id }">
                  		<input class="animation-2" type="button" value="?????????">
                  	</c:if>
                  	<c:if test="${not empty sessionScope.id }">
	                  	<input class="small animation-2" type="button" value="${sessionScope.nickName }">
	                  	<input class="small animation-2" type="button" value="????????????">
                  	</c:if>
                  </div>
               </div>
            </section>
         </section>
         <!-- <div class="column column-40 col-search"><a href="#" class="search-btn fa fa-search"></a>
                <input type="text" name="" value="" placeholder="Search..." />
            </div> -->

      </section>
   </header>
   <!-- =============================================================================================================== -->
   <main class="row">
   <h1 class="visiable-none">cards</h1>
   <section id="main-content" class="column">
      <!-- ????????? ?????? -->

      <div class="row grid-responsive" id="dragdiv">
      </div>
       <template class="cards-template">
         <!-- ???????????? -->
         <section class="column column-33">
            <div id="card1" class="card">
               <div class="card-block">
                  <section class="search">
                     <ul class="nav nav-tabs" id="myTab" role="tablist style"
                        style="border: none">
                        <li class="nav-item"><a class="nav-link nav-link-s active"
                           id="search-tab" data-toggle="tab" href="#search" role="tab"
                           aria-controls="index1" aria-selected="true">??? ???</a></li>
                     </ul>
                     <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="search"
                           role="tabpanel" aria-labelledby="search-tab">
                           <iframe id="companyListWindow" src="./card/company/list">
                           </iframe>
                        </div>
                     </div>
                  </section>
               </div>
            </div>
         </section>
         <!-- ?????? ?????? ?????? ?????? -->
         <section class="column column-33">
            <div id="card2" class="card">
               <div class="card-block">
                  <section class="analysis/trading">
                     <ul class="nav nav-tabs" id="myTab" role="tablist style"
                        style="border: none">
                        <li class="nav-item"><a class="nav-link nav-link-s active"
                           id="analysis-tab" data-toggle="tab" href="#analysis" role="tab"
                           aria-controls="index1" aria-selected="true">??? ???</a></li>
                        <li class="nav-item"><a class="nav-link nav-link-s "
                           id="capture-tab" data-toggle="tab" href="#capture" role="tab"
                           aria-controls="index2" aria-selected="false">??? ???</a></li>
                     </ul>
                     <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="analysis"
                           role="tabpanel" aria-labelledby="analysis-tab">
                           <iframe height="100%" id="analysis-window" src="./card/trade/analysis"></iframe>
                        </div>
                        <div class="tab-pane fade" id="capture" role="tabpanel"
                           aria-labelledby="trading-tab">
                           <iframe id="capture-window" src="/card/capturememo/captureMemo"></iframe>
                        </div>

                     </div>
                  </section>
               </div>
            </div>
         </section>


         <!-- ?????? ?????? ?????? -->
         <section class="column column-33">
            <div id="card3" class="card">
               <div class="card-block">
                  <section class="capture">
                     <ul class="nav nav-tabs" id="myTab" role="tablist style"
                        style="border: none">
                        <li class="nav-item"><a class="nav-link nav-link-s active"
                           id="trading-tab" data-toggle="tab" href="#trading" role="tab"
                           aria-controls="index1" aria-selected="true">??? ???</a></li>
                     </ul>
                     <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="trading"
                           role="tabpanel" aria-labelledby="capture-tab"></div>
                            <iframe id="trade-window" src="./card/trade/trade"> </iframe>
                     </div>
                  </section>
               </div>
            </div>
         </section>


         <!-- ????????? ?????? -->

         <!-- ???????????? ?????? -->
         <section class="column column-33">
            <div id="card4" class="card ">
               <div class="card-block">
                  <section class="news/community/eventcommunity">
                     <ul class="nav nav-tabs" id="myTab" role="tablist style"
                        style="border: none">
                        <li class="nav-item"><a class="nav-link active"
                           id="news-tab" data-toggle="tab" href="#news" role="tab"
                           aria-controls="index1" aria-selected="true">??? ???</a></li>
                        <li class="nav-item"><a class="nav-link" id="community-tab"
                           data-toggle="tab" href="#community" role="tab"
                           aria-controls="index2" aria-selected="false">&nbsp;&nbsp;?????? ????????????&nbsp;&nbsp;</a></li>
                        <li class="nav-item"><a class="nav-link"
                           id="eventcommunity-tab" data-toggle="tab"
                           href="#eventcommunity" role="tab" aria-controls="index3"
                           aria-selected="false">&nbsp;&nbsp;?????? ????????????&nbsp;&nbsp;</a></li>
                     </ul>
                     <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="news" role="tabpanel"
                           aria-labelledby="news-tab">
                           <iframe src="./card/board/news_board"> </iframe>
                        </div>
                        <div class="tab-pane fade" id="community" role="tabpanel"
                           aria-labelledby="community-tab">
                           <iframe src="./card/board/community_board" scrolling="no"></iframe>
                        </div>
                        <div class="tab-pane fade" id="eventcommunity" role="tabpanel"
                           aria-labelledby="eventcommunity-tab">
                           <iframe id="stock-board-window" src="./card/board/stock_board" scrolling="no"></iframe>
                        </div>
                     </div>
                  </section>
               </div>

            </div>
         </section>


         <!-- ?????? ??????/?????? ?????? ?????? -->
         <section class="column column-33">
            <div id="card5" class="card">
               <div class="card-block">
                  <section class="Purchase list/Interest List">
                     <ul class="nav nav-tabs" id="myTab" role="tablist style"
                        style="border: none">
                        <li class="nav-item"><a class="nav-link active"
                           id="Purchaselist-tab" data-toggle="tab" href="#Purchaselist"
                           role="tab" aria-controls="index1" aria-selected="true">&nbsp;&nbsp;?????? ??????&nbsp;&nbsp;</a></li>
                        <li class="nav-item"><a class="nav-link" id="Interest-tab"
                           data-toggle="tab" href="#Interest" role="tab"
                           aria-controls="index2" aria-selected="false">&nbsp;&nbsp;?????? ??????&nbsp;&nbsp;</a></li>
                     </ul>
                     <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="Purchaselist"
                           role="tabpanel" aria-labelledby="Purchaselist-tab">
                           <iframe id="holding-window" src="./card/managestocks/holding_list"></iframe>
                        </div>
                        <div class="tab-pane fade" id="Interest" role="tabpanel"
                           aria-labelledby="Interest-tab">
                           <iframe id="interestlist-window" src="./card/managestocks/interest_list"></iframe>
                        </div>
                     </div>
                  </section>
               </div>
            </div>
         </section>

            <!-- ???????????? ?????? -->
            <section class="column column-33">
               <div id="card6" class="card">
                  <div class="card-block">
                     <section class="asset graph/compare">
                        <ul class="nav nav-tabs" id="myTab" role="tablist style"
                           style="border: none">
                           <li class="nav-item"><a class="nav-link active"
                              id="assetgraph-tab" data-toggle="tab" href="#assetgraph"
                              role="tab" aria-controls="index1" aria-selected="true">&nbsp;&nbsp;MY ??????&nbsp;&nbsp;</a></li>
               
                        </ul>
                        <div class="tab-content" id="myTabContent">
                           <div class="tab-pane fade show active" id="assetgraph"
                              role="tabpanel" aria-labelledby="assetgraph-tab">
                              <iframe id="myAsset" src="./card/asset/myAsset">
                              </iframe></div>

                        </div>
                     </section>
                  </div>
               </div>
            </section>


         <!-- ????????? ?????? -->

         <!-- ??? ?????? -->
         <section class="column column-33"></section>

         <section class="column column-33"></section>


         <!-- ?????? ?????? -->
         <section class="column column-33">
            <div id="card7" class="card">
               <div class="card-block">
                  <section class="rangking">
                     <ul class="nav nav-tabs" id="myTab" role="tablist style"
                        style="border: none">
                        <li class="nav-item"><a class="nav-link nav-link-s active"
                           id="rangking-tab" data-toggle="tab" href="rangking" role="tab"
                           aria-controls="index1" aria-selected="true">??????</a></li>
                     </ul>
                     <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="rangking"
                           role="tabpanel" aria-labelledby="rangking-tab">
                           <iframe id="ranking-board-window" src="./card/rank/ranking">
                           </iframe>
                        </div>
                     </div>
                  </section>
               </div>
            </div>
         </section>
         </template>
         </div>
   </section>
<!-- TODO 
?????????/?????? ??????????????? ??????
????????? ????????? ??????
??????????????????
?????????/??????????????????
-->
   	<!-- ===== ????????? POPUP ========================================================================================================== -->   
	<div class="pop-up-wrapper">
	   <div class="pop-up">
			<div class="pop-up-top">STOCK MARKET<br>?????????</div>
	   		<div class="pop-up-border">
	   			<div class="pop-up-context">
		   				<div class="text">?????????</div>
		   				<input class="box" type="text" name="userEmail" placeholder="???????????? ???????????????" form="login">
		   				
		   				<div class="text">????????????</div>
		   				<input class="box" type="password" name="pwd" placeholder="??????????????? ???????????????" form="login">
	   					
	   					<form class="login-box" action="login" method="post" id="login">
	   						<input type="hidden" name="form" value="?????????" form="login">
		   					<input class="animation-1" type="button" value="?????????">
	   					</form>
		   				
		   				<hr>
		   				
		   				<div class="check-box">   			
		   					<input class="box" type="button" value="??????????????????">
		   					<input class="box" type="button" value="?????????/???????????? ??????">
		   				</div>
	   			</div>
	   		</div>
	   </div>
   </div>
 	<!-- ===== ???????????? POPUP ========================================================================================================== -->   
 	<div class="pop-up-wrapper">
	   <div class="sign-up-pop-up">
			<div class="pop-up-top">STOCK MARKET<br>????????????</div>
	   		<div class="pop-up-border">
	   			<div class="pop-up-context">
		   				<div class="text">?????????</div>
		   				<input class="box signup-email" type="text" name="userEmail" placeholder="???????????? ???????????????" form="signup" required>
		   				
		   				<div class="text">?????????</div>
		   				<input class="box signup-nickname" type="text" name="nickName" placeholder="8???????????? ??????????????? " maxlength='8' form="signup" required>
		   				<br><span id="duplicated-state"></span>
		   				<div class="text">????????????</div>
		   				<input class="box signup-pwd" type="password" name="pwd" placeholder="8 ~ 16??? ????????? ?????? ?????????" maxlength='16' form="signup" required>
	   					
	   					<div class="text">???????????? ??????</div>
		   				<input class="box signup-pwd-confirm" type="password" name="checkPwd" placeholder="8 ~ 16??? ????????? ?????? ?????????" maxlength='16' form="signup">
		   				
	   					<form class="login-box" action="login" method="post" id="signup">
	   						<input type="hidden" name="form" value="????????????" form="signup">
		   					<input class="top-bottom-margin animation-1" type="button" value="????????????">
	   					</form>
	   			</div>
	   		</div>
	   </div>
   </div> 
   <!-- ===== ?????? ????????? POPUP ========================================================================================================== -->

 	<div class="pop-up-wrapper">
	   <div class="profile-pop-up">
			<div class="pop-up-top">

				<span class="pop-up-top-image">
					<a href="#">
			    		<img src="/resource/images/profile/1.png" 
			    			alt="profile photo" data-id="1" class="circle float-left profile-photo-modi">
	                </a>
                </span>
				<span class="pop-up-top-subline">????????? ??????</span><br>
                <span class="pop-up-top-id">${sessionScope.nickName }</span>
            </div>
	   		<div class="pop-up-border">
	   			<div class="pop-up-context">
						<div class="text">?????? ????????????</div>
		   				<input class="box currentPwd" type="password" name="currentPwd" placeholder="8 ~ 16??? ????????? ?????? ?????????" maxlength='16' form="signup">
	   					
	   					<div class="text">????????? ????????????</div>
		   				<input class="box newPwd" type="password" name="newPwd" placeholder="8 ~ 16??? ????????? ?????? ?????????" maxlength='16' form="signup">
		   				
		   				<div class="text">???????????? ??????</div>
		   				<input class="box checkPwd" type="password" name="checkPwd" placeholder="8 ~ 16??? ????????? ?????? ?????????" maxlength='16' form="signup">
		   				
		   				<form class="login-box" action="login" method="post" id="user">
		   					<input class="top-bottom-margin" type="button" value="??????">
	   					</form> 
	   			</div>
	   		</div>
	   </div>
   </div>
   
<!-- ===== ????????? ????????? ???????????? pop-up ========================================================================================================== -->   
<div class="pop-up-wrapper">
 	<div class="pop-up-profile-image">
 		<form class="profile-image-box" method="post" id="profile-image">
			<div class="profile-image-list scrollbar custom-scrollbar-style">
							<%-- <c:forEach var="i" begin="1" end="36">
								<c:if test="${i != sessionScope.profileImg }">
                  					 <img src="/images/profile/${i}.png" class="images" data-id="${i}">
								</c:if>
								<c:if test="${i == sessionScope.profileImg }">
                  					 <img src="/images/profile/${i}.png" class="images image-selected" data-id="${i}">
								</c:if>
							</c:forEach>	 --%>
			</div>
			<div>
	   			<input class="profile-img-select-submit" type="button" value="??????">
			</div>
		</form>
	</div>
 </div>
   <!-- =============================================================================================================== -->
      
   </main>
   <!-- =============================================================================================================== -->
   <footer>
      <section></section>
   </footer>
   <!-- =============================================================================================================== -->

   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"></script>
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
      integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
      crossorigin="anonymous"></script>
   <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"></script>
</body>

</html>