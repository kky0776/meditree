<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>mediDeviceDetail</title>
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

.htitle {
	width: 300px;
	height: 100px;
	margin: auto;
	padding-top: 10px;
	text-align: center;
}

.shadow {
	width: 90%;
	height: 600px;
	margin: auto;
	margin-top: 40px;
}

.btnfloat {
	float: right;
	padding-right: 30px;
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
input, textarea {
	width: 100%;
	height: 100%;
	resize: none;
}

label {
	float: 
}
</style>
</head>
<body>
	<div id="wrap">
		<%@ include file="/WEB-INF/views/common/common.jsp"%>

		<div id="main">
			<%@ include file="/WEB-INF/views/common/commonSidebar.jsp"%>
			<div id="board">
				
					<div class="shadow p-3 mb-5 bg-body rounded">
						<div class="htitle">
							<h1>의료기기 상세정보</h1>
						</div>

						<div id="contAreaBox">
							<div class="panel">
								<div class="panel-body">
									<div class="table-responsive" style="text-align: center;">
										<%-- <table id="datatable-scroller"
											class="table table-bordered tbl_Form">
											<colgroup>
												<col width="250px" />
												<col />
											</colgroup>
											<tbody>
												<tr>
													<th class="active">기기명</th>
													<td>${vo.name}</td>
												</tr>
												<tr>
													<th class="active">종류</th>
													<td>${vo.type}</td>
												</tr>
												<tr>
													<th class="active">등록일시</th>
													<td>${vo.rDate}</td>
												</tr>
												<tr>
													<th class="active">작동여부</th>
													<td>${vo.status}</td>
												</tr>
												<tr>
													<th class="active">현위치</th>
													<td>${vo.location}</td>
												</tr>
												<tr>
													<th class="active">설명</th>
													<td>${vo.content}</td>
												</tr>
											</tbody>

										</table> --%>
										
										<!-- 수정하기  -->
										<form action="${root}/mediDevice/edit" method="post">
										<table id="datatable-scroller"
											class="table table-bordered tbl_Form">
											<colgroup>
												<col width="250px" />
												<col />
											</colgroup>
											<tbody>
												<tr>
													<th class="active">기기명</th>
													<td><input type="text" name="name" value="${vo.name}" /></td>
												</tr>
												<tr>
													<th class="active">종류</th>
													<td><input type="text" name="type" value="${vo.type}" /></td>
												</tr>
												<tr>
													<th class="active">등록일시</th>
													<td>${vo.rDate}</td>
												</tr>
												<tr>
													<th class="active">작동여부</th>
													<td>
													 <label>
													 <input type="radio" name="status" value="Y" ${vo.status == 'Y'}/>가능</label>
													 <label>
													 <input type="radio" name="status" value="N" ${vo.status == 'N'}/>불가능</label>
													</td>
												</tr>
												<tr>
													<th class="active">현위치</th>
													<td><input type="text" name="location"
														value="${vo.location}" /></td>
												</tr>
												<tr>
													<th class="active">설명</th>
													<td><textarea name="content">${vo.content}</textarea></td>
												</tr>
											</tbody>
										</table>
										</form>
										
									</div>

									<div class="btnfloat">
										<a href="${root}/mediDevice/list" class="btn btn-secondary">목록으로</a>
										<a href="${root}/mediDevice/edit?num=${vo.no}"
											class="btn btn-success">수정하기</a> <a
											href="${root}/mediDevice/delete?num=${vo.no}"
											class="btn btn-danger">삭제하기</a>
									</div>

								</div>
							</div>
						</div>
					</div>
				
			</div>
		</div>
	</div>
</body>
</html>