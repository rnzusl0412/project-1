
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bbs.entity.BbsEntity, java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	List<BbsEntity> AllBbs = (List<BbsEntity>) request.getAttribute("AllBbs");
	String userID = (String) session.getAttribute("userID");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">

<title>ITFORMATION</title>
<script type="text/javascript">
	
</script>
</head>
<body>

	<!-- 네비게이션 바 -->
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark "
		id="top_navbar">
		<div class="container">

			<!-- 브랜드 로고 -->
			<a href="/ITformation/index.jsp" class="navbar-brand"> <img
				src="img/play_data_white.png" alt="ITFORMATION">
			</a>
			<!-- 햄버거 버튼  -->
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!-- 모바일 환경 적용 옵션 -->
			<div class="collapse navbar-collapse justify-content-end"
				id="myNavbar">
				<!-- 메뉴 목록 -->
				<ul class="nav navbar-nav" id="top_navbar-nav">
					<li class="nav-item"><a class="nav-link"
						href="/ITformation/selectAllBbs.do">게시판</a></li>
					<li class="nav-item"><a class="nav-link" href="#">공모전</a></li>
					<!-- 본 메뉴 클릭 시 모달창 적용 -->
					<!-- 본 메뉴 클릭 시 모달창 적용 -->
					<%
						if (session.getAttribute("userID") == null) {
					%>

					<li class="nav-item"><a class="nav-link" href=""
						data-toggle="modal" data-target="#myModal"><i
							class="fas fa-sign-in-alt"></i> 로그인</a></li>

					<%
						} else {
					%>
					<li class="nav-item"><a class="nav-link"
						href="/ITformation/myPage.do">MyPage</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/ITformation/logout.do"> 로그 아웃 </a></li>
				</ul>
			</div>
			<%
				}
			%>
		</div>
	</nav>

	<!--  로그인 모달 -->
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel" align="center">
						<i class="fas fa-key"></i>로그인
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div style="padding-top: 30px;">
						<form method="get" action="/ITformation/login.do">
							<div class="form-group row">
								<div class="col-md-9">
									<input type="text" class="form-control" placeholder="아이디"
										name="userID" maxlength="20"> <br> <input
										type="password" class="form-control" placeholder="비밀번호"
										name="userPassword" maxlength="20">
								</div>
								<!-- 버튼 세로크기 조절좀  -->
								<div class="col-md-3" align="center">
									<button type="submit" class="btn btn-primary btn-lg"
										style="height: 95px">Login</button>
								</div>
							</div>
						</form>
					</div>



				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<a class="btn btn-primary" href="/ITformation/customer/join.do"
						role="button">회원가입</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 
		<table>
		<thead>
			<tr>
				<th>글 번호</th><th>글 제목</th><th></th><th>글쓴이</th><th>작성일</th><th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="se" items="${requestScope.AllBbs}">
				<tr>
					<td>${se.bbs_no}</td><td><a href="/ITformation/board/view.do?bbs_no=${se.bbs_no}">${se.bbs_tit}</a></td><td>${se.bbs_user}</td><td>${se.bbs_date}</td><td>${se.bbs_up}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="/ITformation/board/Write.do"> 글 작성 </a>
	
	 -->

	<!--  게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판 -->
	<div class="container" style="margin-top: 40px;">
		<div class="row">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>날짜</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="se" items="${requestScope.AllBbs}" begin="0"
						end="9" step="1">
						<tr>
						<tr>
							<td>${se.bbs_no}</td>
							<td><a href="/ITformation/board/view.do?bbs_no=${se.bbs_no}">${se.bbs_tit}</a></td>
							<td>${se.bbs_user}</td>
							<td>${se.bbs_date}</td>
							<td>${se.bbs_up}</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>


		<!-- 페이지 탐색부분 -->
		<!-- ajax 처리할 내용.  -->
		<div align="right">
			<a href="update.jsp?bbsID=" class="btn btn-primary">수정</a> <a
				href="/ITformation/board/Write.do" class="btn btn-primary">글쓰기</a>
		</div>
		<div>
			<ul class="pagination justify-content-center">
				<li class="page-item"><a class="page-link" href="#">이전</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">다음</a></li>
			</ul>
		</div>
	</div>

</body>
</html>