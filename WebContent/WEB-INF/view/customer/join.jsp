<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String url = request.getContextPath();
%>
<%
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
	

<!-- datepicker script -->
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- datepicker script -->




<title>ITFORMATION</title>	

<script type="text/javascript">

</script>

<script type="text/javascript">
	/* /*  onclick 만들면 클릭시 함수 실행 할수 있따. */
	/* $(document).ready(function() {
		$("#inputId").blur(function() {
			$("#inputId").text("이름 입력함????????????????");
			$("#inputId").css("color", "red");
		});
	}); */

	//ID확인 클릭시 ID 체크 한후 하단에 뿌려준다.
	/*  function IdCheck(){
	 var userId = $("#inputName").val();
	 $.ajax({
	 type: 'POST',
	 url: '' //처리될 url 붙여 컨트롤러로 날리면 될듯
	 data : {userID : userID}, //확인할 userID 를 객체에 담아서 날릴준비
	 success : function(result){ 
	 //중복검사 1이면 중복x 0이면 중복 
	 if(result ==1){
	 $("#id_check").text("사용할 수 있는 아이디 입니다.");
	 $("#id_check").css("color", "blue");
	 }else if(result ==0){
	 $("#id_check").text("아이디가 중복입니다.");
	 $("#id_check").css("color", "red");	
	 }
	 }		
	
	 }) //ajax end
	 if(userId == ""){
	 $("#id_check").text("아이디를 입력하세요.");
	 $("#id_check").css("color", "red");
	 }
	
	 }  */

	//비밀번호 재확인
/* 	function CheckPassword() {
		 var userpassword1 = $("#inputPassword").val();
		var userpassword2 = $("#inputPasswordCheck").val();
		if (userpassword1 != userpassword2) {
			$("#pw_check").text("비밀번호가 일치하지 않습니다.");
			$("#pw_check").css("color", "red");
		} else {
			$("#pw_check").text("비밀번호가 일치합니다");
			$("#pw_check").css("color", "blue"); 
		}
	} */

	//email 형식 (길이, etc...)

	//회원가입 완료 클릭시 상위 체크사항 모두 체크후 조건 만족하면 데이터를 DB로 날린다.
	/* function finalCheck(){
		
	} */
</script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("sample6_extraAddress").value = extraAddr;

						} else {
							document.getElementById("sample6_extraAddress").value = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode;
						document.getElementById("sample6_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}
</script>
<script type="text/javascript">
 $(document).ready(function() {
$("#birth").datepicker({
            	dateFormat: "yy-mm-dd",
            	monthNamesShort: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
                dayNamesMin:["일","월","화","수","목","금","토"], 
            		}); 
}); 

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
					<li class="nav-item"><a class="nav-link" href="<%=url%>/selectAllBbs.do">게시판</a></li>
					<li class="nav-item"><a class="nav-link" href="<%=url%>/Cont.do">공모전</a></li>
					<!-- 본 메뉴 클릭 시 모달창 적용 -->
					<!-- 본 메뉴 클릭 시 모달창 적용 -->
					<%
					 if(session.getAttribute("userID") == null) {
					%>

					<li class="nav-item"><a class="nav-link" href=""
						data-toggle="modal" data-target="#myModal"><i
							class="fas fa-sign-in-alt"></i> 로그인</a></li>

					<%
						} else if(session.getAttribute("userID").equals("bigdata")){
							
					%>	
						<li class="nav-item"><a class="nav-link" href="/ITformation/selectAll.do">회원관리</a></li>
						<li class="nav-item"><a class="nav-link" href="<%=url%>/logout.do"> 로그 아웃 </a></li>
						
					<%	
					}else {
					%>
					<li class="nav-item"><a class="nav-link" href="<%=url%>/myPage.do">MyPage</a></li>
					<li class="nav-item"><a class="nav-link" href="<%=url%>/logout.do"> 로그 아웃 </a></li>
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
						<form method="post" action="/ITformation/login.do">
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
					<a class="btn btn-success" href="<%=url%>/customer/find.do"
						role="button">ID찾기</a>
					<a class="btn btn-warning" href="<%=url%>/customer/findPW.do"
						role="button">PW찾기</a>
					<a class="btn btn-primary" href="<%=url%>/customer/join.do"
						role="button">회원가입</a>	
				</div>
			</div>
		</div>
	</div>
	<!--  로그인 모달 -->
	<!-- 회원가입 -->

	<article class="container">
		<div class="page-header">
			<div class="col-md-6 col-md-offset-3">
				<h3>회원가입 Form</h3>
			</div>
		</div>
		<div class="col-sm-6 col-md-offset-3">
			<form role="form" action="<%=url%>/customer/join.do" method="POST">
				<div class="form-group">
					<label for="inputName">성명</label> <input type="text"
						class="form-control" name="c_name" placeholder="이름을 입력해 주세요">
					<div class="check_font" id="name_check"></div>
				</div>
				<div class="form-group">
					<label for="inputId">아이디</label>
					<div class="form-inline">
						<div class="form-group">
							<input type="text" class="form-control" name="c_id"
								placeholder="아이디를 입력해 주세요">
							<button type="button" class="btn btn-primary" onclick="IdCheck()">사용가능ID확인</button>
							<div class="check_font" id="id_check"></div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="inputName">닉네임</label> <input type="text"
						class="form-control" name="c_nic_name" placeholder="닉네임을 입력해 주세요">
					<div class="check_font" id="name_check"></div>
				</div>
				<div class="form-group">
					<label for="InputEmail">이메일 주소</label> <input type="email"
						class="form-control" name="c_email" placeholder="이메일 주소를 입력해주세요">
					<div class="check_font" id="email_check"></div>
				</div>
				<div class="form-group">
					<label for="inputPassword">비밀번호</label> <input type="password"
						class="form-control" name="c_pw" onkeyup="CheckPassword()"
						placeholder="비밀번호를 입력해주세요">
				</div>
				<div class="form-group">
					<label for="inputMobile">휴대폰 번호</label> <input type="tel"
						class="form-control" name="c_phone" placeholder="휴대폰번호를 입력해 주세요">
					<div class="check_font" id="phone_check"></div>
				</div>
				
				
				
				<div class="form-group">
					<label for="InputEmail">생년월일</label> <input type="text" id="birth"
						class="form-control" name="c_birth" placeholder="생년월일을 입력해주세요">
				</div>
				<script type="text/javascript">
				
				$("#birth").datepicker({
            	dateFormat: "yy-mm-dd",
            	monthNamesShort: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
                dayNamesMin:["일","월","화","수","목","금","토"], 
            		});   
				
				</script>

				<div class="form-group">
					<label for="c_answer_type">비밀번호 찾을떄 필요한 질문입니다.</label> <select
						class="form-control" name="c_answer_type" id="c_answer_type">
						<option value="1">당신이 살던 고향은?</option>
						<option value="2">당신이 가장 아끼는 물건은?</option>
						<option value="3">당신이 좋아하는 음식은?</option>
						<option value="4">당신의 부모이름은?</option>
						<option value="5">당신의 가장 친한 친구 이름은?</option>
					</select>
				</div>

				<div class="form-group">
					<label for="c_answer">답변 입력 란 입니다.</label> <input type="text"
						class="form-control" name="c_answer"
						placeholder="질문에 대한 답변을 입력해주세요">
					<div class="check_font" id="c_answer"></div>
				</div>

				<div class="form-group">
					<label for="inlineRadio1">성별</label> </label> <br> <label
						class="radio-inline"> <input type="radio" name="c_sex"
						id="inlineRadio1" value="Check_Man"> 남자
					</label> <label class="radio-inline"> <input type="radio"
						name="c_sex" id="inlineRadio1" value="Check_Female"> 여자
					</label>
				</div>

				<input type="text" id="sample6_postcode" name="c_post"
					placeholder="우편번호"> <input type="button"
					onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
				<input type="text" id="sample6_address" name="c_add"
					placeholder="주소"><br> <input type="text"
					id="sample6_detailAddress" name="c_dadd" placeholder="상세주소">
				<input type="text" id="sample6_extraAddress" name="c_exadd"
					placeholder="참고항목">



				<div class="form-group text-center">
					<button type="submit" id="join-submit" class="btn btn-primary"
						onclick="finalCheck">
						회원가입<i class="fa fa-check spaceLeft"></i>
					</button>
					<button type="submit" class="btn btn-warning">
						가입취소<i class="fa fa-times spaceLeft"></i>
					</button>
				</div>
			</form>
		</div>
	</article>

</body>
</html>