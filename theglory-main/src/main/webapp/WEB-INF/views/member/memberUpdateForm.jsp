<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="resources/js/member.js"></script>
<div class="row my-5" id="global-content">
	<div class="col">
		<div class="row my-3 text-center">
			<div class="col">
				<h2 class="fs-1 fw-bold">회원 정보 수정</h2>
			</div>
		</div>
		
		<form action="memberUpdateResult" name="memberUpdateForm" method="post" id="memberUpdateForm">
			<input type="hidden" name="isIdCheck" id="isIdCheck" value="false"/>
			<div class="row mt-5 mb-3">
				<div class="col-8 offset-2">
					<label for="name" class="form-label"> 이 름 : </label>
					<input type="text" class="form-control" name="name" id="name" value="${sessionScope.member.name}" readonly>
				</div>
			</div>
			<div class="row mt-5 mb-3">
				<div class="col-8 offset-2">
					<label for="userId" class="form-label"> 아이디 : </label>
					<div class="row">
						<div class="col-6">
							<input type="text" class="form-control" name="id" id="userId" value="${sessionScope.member.id}" readonly>
						</div>
					</div>
				</div>
			</div>
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label for="oldPass" class="form-label">* 기존 비밀번호 : </label>
					<div class="row">
						<div class="col-6">
							<input type="password" class="form-control" name="oldPass" id="oldPass">
						</div>
						<div class="col-4">
							<input type="button" class="btn btn-warning" id="btnPassCheck" value="비밀번호 확인">
						</div>
					</div>
				</div>
			</div>
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label for="pass1" class="form-label">* 새 비밀번호 : </label>
					<input type="password" class="form-control" name="pass1" id="pass1">
				</div>
			</div>
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label for="pass2" class="form-label">* 새 비밀번호 확인 : </label>
					<input type="password" class="form-control" name="pass2" id="pass2">
				</div>
			</div>
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label for="birth" class="form-label"> 생년월일 : </label>
						<div class="col-md-4">
							<input type="date" class="form-control" name="birth" id="birth" value="${sessionScope.member.birth}" readonly>
						</div>
				</div>
			</div>		
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label class="form-label">성별</label>
					<div class="row">
						<div class="col-md-3">
							<div class="form-check">
								<input type="radio" class="form-check-input" name="gender" id="female" value="여성" ${member.gender == '여성' ? 'checked' : ''} readonly>
								<label class="form-check-label" for="female">여성</label>
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-check">
								<input type="radio" class="form-check-input" name="gender" id="male" value="남성" ${member.gender == '남성' ? 'checked' : ''} readonly>
								<label class="form-check-label" for="male">남성</label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label for="bloodtype" class="form-label"> 혈액형 : </label>
					<div class="row">
						<div class="col-md-3">
							<select class="form-select" name="bloodtype" id="bloodtype" disabled>
								<option ${member.bloodtype == 'A형' ? 'selected' : ''}>A형</option>
								<option ${member.bloodtype == 'B형' ? 'selected' : ''}>B형</option>
								<option ${member.bloodtype == 'O형' ? 'selected' : ''}>O형</option>
								<option ${member.bloodtype == 'AB형' ? 'selected' : ''}>AB형</option>
							</select>
						</div>
					</div>
				</div>
			</div>
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label for="address" class="form-label">* 주소(시군구) : </label>
						<div class="col-md-4">
							<input type="text" class="form-control" name="address" id="address" value="${sessionScope.member.address}">
						</div>
				</div>
			</div>
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label for="phone" class="form-label">* 휴 대 폰 번호 : </label>
					<div class="row">
						<div class="col-8">
							<input id="phone" type="tel" name="phone" class="form-control" value="${sessionScope.member.phone}" />
						</div>
					</div>					
				</div>
			</div>		
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label for="emailId" class="form-label">* 이 메 일 : </label>
					<div class="row">
						<div class="col-md-4">
							<input type="text" class="form-control" name="emailId" id="emailId" value="${sessionScope.member.email.split('@')[0]}">
						</div> @ 
						<div class="col-md-4">
							<input type="text" class="form-control" name="emailDomain" id="emailDomain" value="${sessionScope.member.email.split('@')[1]}">
						</div>
						<div class="col-md-3">
							<select class="form-select" name="selectDomain" id="selectDomain">
								<option>직접입력</option>
								<option>네이버</option>
								<option>다음</option>
								<option>한메일</option>
								<option>구글</option>
							</select>
						</div>
					</div>
				</div>
			</div>
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label class="form-label">* 메일 수신여부 : </label>
					<div class="row">
						<div class="col-md-3">
							<div class="form-check">
								<input type="radio" class="form-check-input" name="emailGet" id="emailOk" value="true" ${ member.emailGet ? "checked" : "" }>
								<label class="form-check-label" for="emailOk">수신동의</label>
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-check">
								<input type="radio" class="form-check-input" name="emailGet" id="emailNo" value="false" ${ member.emailGet ? "" : "checked" }>
								<label class="form-check-label" for="emailNo">수신 비동의</label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row mb-3 mt-5">
				<div class="col-8 offset-2">
					<input type="submit" value="수정하기" class="btn btn-primary">
				</div>
			</div>	
		</form>
		
	</div>
</div>

