<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>    

  <div class="row">
    <div class="col-12">
  
	<header class="p-3 text-bg-white">
		<div class="container">
			<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">

				<a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-black text-decoration-none">
				</a>
				
				 <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
					<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="#FF0000" class="bi bi-droplet-half" viewBox="0 0 16 16">
                      <path fill-rule="evenodd" d="M7.21.8C7.69.295 8 0 8 0c.109.363.234.708.371 1.038.812 1.946 2.073 3.35 3.197 4.6C12.878 7.096 14 8.345 14 10a6 6 0 0 1-12 0C2 6.668 5.58 2.517 7.21.8zm.413 1.021A31.25 31.25 0 0 0 5.794 3.99c-.726.95-1.436 2.008-1.96 3.07C3.304 8.133 3 9.138 3 10c0 0 2.5 1.5 5 .5s5-.5 5-.5c0-1.201-.796-2.157-2.181-3.7l-.03-.032C9.75 5.11 8.5 3.72 7.623 1.82z" />
                      <path fill-rule="evenodd" d="M4.553 7.776c.82-1.641 1.717-2.753 2.093-3.13l.708.708c-.29.29-1.128 1.311-1.907 2.87l-.894-.448z" />
                    </svg>

					<li><a href="main" class="nav-link px-2 text-black"> 헌혈 : 더 글로리</a></li>
				    </ul>
				    <div class="col-md-3 text-end">
                         <c:if test="${not sessionScope.isLogin}">                       		    
                          		<a href="login"><button type="button" class="btn btn-primary">로그인</button></a>
                          		<a href="joinForm"><button type="button" class="btn btn-primary">회원가입</button></a>
                        </c:if>  
                         <c:if test="${sessionScope.isLogin and not sessionScope.member.id != 'admin'}">
                         	   <a href="logout"><button type="button" class="btn btn-primary">로그아웃</button></a>
                         	   <a href="memberUpdateForm"><button type="button" class="btn btn-warning"> 회원 수정</button></a>
                               <!-- <a href="#"><button type="button" class="btn btn-danger"> 마이페이지</button></a> -->
                         </c:if>
                     </div>
			</div>
		</div>
	  </header>
     </div>
   </div>

		<!-- main 콘텐츠 -->

<main>
<div class="container">
  <div class="row">
    <div class="col-12"> 
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
		aria-label="Tenth navbar example">

		<div class="container-fluid">

			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample08"
				aria-controls="navbarsExample08" aria-expanded="false"aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-md-center" id="navbarsExample08">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active" aria-current="page">Menu</a></li>
					<li class="nav-item"><a class="nav-link" href="notificationList">공지사항 </a></li>
					<li class="nav-item"><a class="nav-link" href="searchMap">장소찾기 </a></li>

					<li class="nav-item"><a class="nav-link" href="resvBldHousStep1">예약 </a></li>
					<li class="nav-item"><a class="nav-link" href="paperForm">전자문진 </a></li>

					<li class="nav-item"><a class="nav-link" href="matchingBoardList">매칭게시판 </a></li>
					<li class="nav-item"><a class="nav-link" href="goodsList">굿즈 </a></li>					
				</ul>
			</div>
		</div>
	</nav>
    </div>
   </div>
   
   </div>
  </main>
