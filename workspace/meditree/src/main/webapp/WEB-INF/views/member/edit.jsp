<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>join</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@600&display=swap')
	;

body h1 {
	font-family: 'IBM Plex Sans KR', sans-serif;
}

#joinForm {
	margin: auto;
}

.table-light tr>th, td {
	text-align: center;
}

.htitle {
	width: 200px;
	height: 100px;
	margin: auto;
	padding-top: 15px;
	text-align: center;
}

.shadow {
	width: 80%;
	height: 500px;
	margin: auto;
	margin-top: 80px;
}

.rec {
	width: 60%;
	margin: auto;
}

.btn {
	margin-top: 30px;
	margin-right: 50px;
}

.btnwech {
	margin: auto;
	display: flex;
	justify-content: center;
	margin-left: 65px;
}

.btn-primary {
	background-color: #82CBC4;
	border: none;
	
}

#main {
	display: grid;
	grid-template-columns: 1fr 8fr;
}

#board {
	align-items: center;
	justify-content: center;
	background-color: #f3f3f4;
}
</style>
</head>

<body>
	<div id="wrap">
		<%@ include file="/WEB-INF/views/common/common.jsp"%>

		<div id="main">
			<%@ include file="/WEB-INF/views/common/commonSidebar.jsp"%>
			<div id="board">

				<form action="${root}/member/edit" method="post">
				<input type="hidden" name="no" value="${loginMember.no}">
					<div class="shadow p-3 mb-5 bg-body rounded">
						<div class="htitle">
							<h1>정보 수정</h1>
						</div>

							<div class="rec">
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label">이름</label>
									<div class="col-sm-10">
										<input type="text" name="name" class="form-control" id="name" value="${loginMember.name}" required>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label">비밀번호</label>
									<div class="col-sm-10">
										<input type="text" name="pwd" class="form-control" id="pwd" value="${loginMember.pwd}" required>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label">핸드폰번호</label>
									<div class="col-sm-10">
										<input type="tel" name="tel" class="form-control"
											id="telNo" value="${loginMember.tel}" required>
									</div>
								</div>




								<!-- <div class="input-group mb-3">
									<label for="deptNo" class="col-sm-2 col-form-label">소속과</label>
									<select class="form-select" name="deptNo" aria-label="Default select example" required>
										<option selected>선택</option>
										<option value="10">간호부</option>
										<option value="20">원무부</option>
										<option value="30">의사</option>
										<option value="00">경영지원부</option>
										<option value="5">일반내과</option>
										<option value="6">정신과</option>
										<option value="7">이비인후과</option>
										<option value="8">산부인과</option>
										<option value="9">수술실</option>
										<option value="10">일반</option>
									</select>
								</div> -->

							<div class="btnwech">
								<button type="submit" class="btn btn-primary">수정</button>
							</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>