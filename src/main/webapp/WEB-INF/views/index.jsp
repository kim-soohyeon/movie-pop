<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<style>
  		@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');
  	</style>
  	<head>
	    <title>movie_pop &mdash; kim-soohyeon</title>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300i,400,700" rel="stylesheet">
	    <link rel="stylesheet" href="fonts/icomoon/style.css">
	
	    <link rel="stylesheet" href="css/bootstrap.min.css">
	    <link rel="stylesheet" href="css/magnific-popup.css">
	    <link rel="stylesheet" href="css/jquery-ui.css">
	    <link rel="stylesheet" href="css/owl.carousel.min.css">
	    <link rel="stylesheet" href="css/owl.theme.default.min.css">
	
	    <link rel="stylesheet" href="css/lightgallery.min.css">    
	    
	    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
	
	    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
	    
	    <link rel="stylesheet" href="css/swiper.css">
	
	    <link rel="stylesheet" href="css/aos.css">
	
	    <link rel="stylesheet" href="css/style.css">
  	</head>
  	<body>
  	<div class="site-wrap">
    	<div class="site-mobile-menu">
	      	<div class="site-mobile-menu-header">
		        <div class="site-mobile-menu-close mt-3">
		        	<span class="icon-close2 js-menu-toggle"></span>
		        </div>
	      	</div>
	      	<div class="site-mobile-menu-body"></div>
    	</div>
	    <header class="site-navbar py-3" role="banner">
	    	<div class="container-fluid">
		        <div class="row align-items-center">
		        	<div class="col-6 col-xl-2" data-aos="fade-down">
		            	<h1 class="mb-0"><a href="index.html" class="text-black h2 mb-0">movie_pop</a></h1>
		          	</div>
		          	<div class="col-10 col-md-8 d-none d-xl-block" data-aos="fade-down">
			        	<nav class="site-navigation position-relative text-right text-lg-center" role="navigation">
			            	<ul class="site-menu js-clone-nav mx-auto d-none d-lg-block">
			                	<li class="active"><a href="index.html">Home</a></li>
				                <li class="has-children">
				                	<a href="single.html">Gallery</a>
				                  	<ul class="dropdown">
				                    	<li><a href="#">Nature</a></li>
					                    <li><a href="#">Portrait</a></li>
					                    <li><a href="#">People</a></li>
					                    <li><a href="#">Architecture</a></li>
					                    <li><a href="#">Animals</a></li>
					                    <li><a href="#">Sports</a></li>
					                    <li><a href="#">Travel</a></li>
					                    <li class="has-children">
					                    	<a href="#">Sub Menu</a>
					                      	<ul class="dropdown">
						                        <li><a href="#">Menu One</a></li>
						                        <li><a href="#">Menu Two</a></li>
						                        <li><a href="#">Menu Three</a></li>
					                      	</ul>
					                    </li>
					                </ul>
				                </li>
				                <li><a href="services.html">Services</a></li>
				                <li><a href="about.html">About</a></li>
				                <li><a href="contact.html">Contact</a></li>
			              	</ul>
			            </nav>
		          	</div>
		          	<div class="col-6 col-xl-2 text-right" data-aos="fade-down">
		            	<button type="button" class="btn btn-outline-info" onclick="epenLoginPop();"><div style="font-family:Poor Story; font-size:18px;">로그인</div></button>
		          	</div>
		        </div>
	      	</div>
	    </header>
	  	<div class="container-fluid" data-aos="fade" data-aos-delay="500">
	    	<div class="swiper-container images-carousel">
	        	<div class="swiper-wrapper" id="slideWrap">
	<!-- 여기 -->
	        	</div>
		        <div class="swiper-pagination"></div>
		        <div class="swiper-button-prev"></div>
		        <div class="swiper-button-next"></div>
		        <div class="swiper-scrollbar"></div>
	    	</div>
	  	</div>
	  	<div class="footer py-4">
		    <div class="container-fluid">
		      <p>
		      <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
		      Copyright &copy;<script data-cfasync="false"></script><script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
		      <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
		      </p>
		    </div>
	  	</div>
  	</div>
  	<!-- slide 목록 -->
  	<script id="slideItem" type="text/x-jquery-tmpl">
  	<div class="swiper-slide">                                                         
		<div class="image-wrap">                                                         
 	   		<div class="image-info">                                                       
 	     		<h2 class="mb-3">\${movieNm}</h2>                                                 
	      		<a href="single.html" class="btn btn-outline-white py-2 px-4">More Photos</a>
 	   		</div>                                                                         
 	   		<img src="\${imgSrc}" alt="Image">                                       
	  	</div>                                                                           
	</div>                                                                             
  	</script>
	<script src="js/jquery-3.3.1.min.js"></script>
  	<script src="js/jquery-migrate-3.0.1.min.js"></script>
  	<script src="js/jquery-ui.js"></script>
  	<script src="js/popper.min.js"></script>
  	<script src="js/bootstrap.min.js"></script>
  	<script src="js/owl.carousel.min.js"></script>
  	<script src="js/jquery.stellar.min.js"></script>
  	<script src="js/jquery.countdown.min.js"></script>
  	<script src="js/jquery.magnific-popup.min.js"></script>
  	<script src="js/bootstrap-datepicker.min.js"></script>
  	<script src="js/swiper.min.js"></script>
  	<script src="js/aos.js"></script>

	<script src="js/picturefill.min.js"></script>
  	<script src="js/lightgallery-all.min.js"></script>
  	<script src="js/jquery.mousewheel.min.js"></script>
	<script src="/js/jquery.tmpl.js?v=0.1" type="text/javascript"></script>
  	<script src="js/main.js"></script>
  	<script>
	$(document).ready(function(){
		var str="${dataArr}";
		$('#lightgallery').lightGallery();
      
		var date = new Date(); 
		var year = date.getFullYear(); 
		var month = new String(date.getMonth()+1); 
		var day = new String(date.getDate()-1); 

		// 한자리수일 경우 0을 채워준다.
		if(month.length == 1){ 
		  month = "0" + month; 
		} 
		if(day.length == 1){ 
		  day = "0" + day; 
		} 

		var today=year + "" + month + "" + day;
		
      	$.ajax({ 
			type: 'get',
    	  	url: 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=037e76672df8ccd4c7e49a7c67459e31&targetDt='+today, 
    	 	success: function (data) { 
    			console.log("success");
    			var movieArr = new Array();
				for(var i=0; i<data.boxOfficeResult.dailyBoxOfficeList.length; i++){
					movieList = new Object();                  
					movieList.movieNm=data.boxOfficeResult.dailyBoxOfficeList[i].movieNm;//영화이름
					movieList.movieYear=data.boxOfficeResult.dailyBoxOfficeList[i].openDt;//개봉년도
					movieArr.push(movieList);                  
				}
				apiCall(movieArr);
      	  	}
     	});
    }); 
	
	function apiCall(movieArr){
		$.ajax({ 
			type: 'GET',
    	  	url: 'cs/test', 
    	  	error: function (error) { 
    	 		console.log("실패");
    	 	},
    	 	success: function (data) {
    	 		for(i=0; i<data.length; i++){
    	 			movieArr[i].imgSrc=data[i];
    	 			$('#slideItem').tmpl(movieArr[i]).appendTo('#slideWrap')/* .listview("refresh") */;
    	 		}
    	 		console.log("성공");
    	 	}
		});
	}
    function epenLoginPop() { 
    	window.open("login", "a", "width=500, height=500, left=100, top=50"); 
    }
  	</script>
  	</body>
</html>