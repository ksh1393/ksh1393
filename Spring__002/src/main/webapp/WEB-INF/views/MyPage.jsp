<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./resources/css/perfect-scrollbar.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&amp;subset=devanagari,latin-ext"
	rel="stylesheet">
<link rel="stylesheet" href="./resources/css/style.css">

<script src="./resources/JS/jquery.js"></script>
<script src="./resources/JS/tether.min.js"></script>
<script src="./resources/JS/bootstrap.min.js"></script>
<script src="./resources/JS/perfect-scrollbar.min.js"></script>
<script src="./resources/JS/common.js"></script>

<script src="./resources/JS/BookMark.js"></script>

<script>


function BookMark(this_id){
     let spanTag = document.getElementById(this_id);
     console.log(this_id)
     
		$.ajax({
         	url : "${cpath}/jjim.do",
         	type:"get",
			data : {"this_id" : this_id},
			success: console.log("success"),
			error:console.log("error")
         });
         
	     if (spanTag.innerText == '★') {
	         spanTag.innerText = '☆'
	     }
	     else {
	         spanTag.innerText = '★'
	     }
 }

</script>
</head>
<body>

	<div class="wrapper">
		<div class="sidebar" data-color="purple"
			data-image="assets/img/sidebar-5.jpg">


			<div class="sidebar-wrapper">
				<nav id="sidebar">
					<div class="sidebar-header">
						<h1 class="site-title">

							<img class="imglogo" src="./resources/images/logo.png"><br />
							Summary
						</h1>
					</div>
					<ul class="list-unstyled components">
						<li class="active"><a href="#my_page" data-toggle="collapse"
							aria-expanded="false">마이페이지</a>
							<ul class="collapse list-unstyled" id="my_page">
								<li><a href="#">admin</a></li>
							</ul></li>
					
							
						<li>
							<a href="Python_1.do">Python</a>
							<a href="Java_1.do">Java</a> 
							<a href="JS_1.do">JS</a> 
							<a href="ai_1.do">머신러닝</a> 
							<a href="ai_2.do">딥러닝</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>

		<div id="content">

			<div class="container">
				<!-- Stack the columns on mobile by making one full-width and the other half-width -->
				<div class="row">
					<div class="col-md-8"></div>
					<div class="col-6 col-md-4"></div>
				</div>

				<!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
				<div class="row">
					<div class="col-6 col-md-4">
						<div class="card">
							<div class="bg-image hover-overlay ripple"
								data-mdb-ripple-color="light">
								<img
									src="https://mdbcdn.b-cdn.net/img/new/standard/nature/111.webp"
									class="img-fluid" /> <a href="#!">
									<div class="mask"
										style="background-color: rgba(251, 251, 251, 0.15);"></div>
								</a>
							</div>
							<div class="card-body">
								<h5 class="card-title">영상 제목1</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								
							</div>
						</div>
					</div>
					<div class="col-6 col-md-4">
						<div class="card">
							<div class="bg-image hover-overlay ripple"
								data-mdb-ripple-color="light">
								<img
									src="https://mdbcdn.b-cdn.net/img/new/standard/nature/111.webp"
									class="img-fluid" /> <a href="#!">
									<div class="mask"
										style="background-color: rgba(251, 251, 251, 0.15);"></div>
								</a>
							</div>
							<div class="card-body">
								<h5 class="card-title">영상 제목2</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
							</div>
						</div>
					</div>
					<div class="col-6 col-md-4">
						<div class="card">
							<div class="bg-image hover-overlay ripple"
								data-mdb-ripple-color="light">
								<img
									src="https://mdbcdn.b-cdn.net/img/new/standard/nature/111.webp"
									class="img-fluid" /> <a href="#!">
									<div class="mask"
										style="background-color: rgba(251, 251, 251, 0.15);"></div>
								</a>
							</div>
							<div class="card-body">
								<h5 class="card-title">영상 제목3</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
							</div>
						</div>
					</div>


				</div>

				<!-- Columns are always 50% wide, on mobile and desktop -->
				<div class="row">
					<div class="col-6"></div>
					<div class="col-6"></div>
				</div>

				<div class="row">
					<div class="col-md-8"></div>
					<div class="col-6 col-md-4"></div>
				</div>

				<!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
				<div class="row">


					<div id="section1" class="container-fluid bg-secondary"
						style="padding-top: 70px; padding-bottom: 70px">
						<h1>연산자</h1>
						<div class="row">
							<div class="col-md-8"></div>
							<div class="col-6 col-md-4"></div>
						</div>

						<!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
						<div class="row" id="Python_section3">
							<c:forEach var="vo" items="${list}">
								<c:if test="${vo.mem_id=='admin'}">
									<div class="col-6 col-md-4">
										<div class="card">
											<div class="bg-image hover-overlay ripple"
												data-mdb-ripple-color="light">
												<img src="${vo.lec_thumb}" class="img-fluid" /> <a
													href="#!"><div class="mask"
														style="background-color: rgba(251, 251, 251, 0.15);"></div></a>
											</div>
											<div class="card-body">
												<h5 class="card-title">${vo.lec_lang}/${vo.lec_grammar}</h5>
												<p class="card-text">${vo.lec_summ}</p>
											</div>
										</div>    
										
									</div>
								</c:if>
							</c:forEach>



						</div>
					</div>
	
					
					
				</div>

			
			</div>



		</div>

	</div>
	</div>



</body>
</html>