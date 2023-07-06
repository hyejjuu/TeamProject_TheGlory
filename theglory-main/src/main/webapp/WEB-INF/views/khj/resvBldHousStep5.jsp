<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="row my-5" id="global-content">
	<div class="col">
		<div class="row my-3 fw-5">
			<div class="col">
				<h2 class="fs-3 fw-bold text-center">헌혈의집 헌혈 예약</h2>
			</div>
		</div>
		<div class="row my-3">
			<div class="col-8 offset-2">
				<div class="row mt-2 mb-3 border-bottom fw-bold">&nbsp;개인정보입력</div>
			</div>
		</div>
		<div class="row my-3">
			<div class="col-8 offset-2">
				<label for="writer" class="form-label">이름 </label> <input
					type="text" class="form-control" name="writer" id="writer"
					value="${b.memberId}" maxlength="4">
			</div>
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label for="id" class="form-label">생년월일 </label>
					<div class="row">
						<div class="col-md-3">
							<input type="text" class="form-control" name="birthdate"
								id="birthdate" value="${b.birthdate}" maxlength="4">
							<!-- 사용자 생년월일 받아오기  -->

						</div>
					</div>
				</div>
			</div>
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label for="phone2" class="form-label">휴대전화</label>
					<div class="row">
						<div class="col-md-3">
							<select class="form-select" name="phone1" id="phone1"
								maxlength="4">
								<option>010</option>
								<option>011</option>
								<option>016</option>
								<option>017</option>
								<option>018</option>
								<option>019</option>
							</select>
						</div>
						-
						<div class="col-md-4">
							<input type="text" class="form-control" name="phone2" id="phone2"
								maxlength="4" value="${b.phone2}">
						</div>
						-
						<div class="col-md-4">
							<input type="text" class="form-control" name="phone3" id="phone3"
								maxlength="4" value="${b.phone3}">
						</div>
					</div>
				</div>
			</div>
			<div class="row my-3 fw-5">
				<div class="col-8 offset-2">
					<div class="row mt-2 mb-3 border-bottom fw-bold">&nbsp;개인정보
						수집 및 이용에 대한 안내</div>
				</div>
				<div class="col-8 offset-2">
					<div class="row mt-2 mb-3 border-bottom fw-bold">
						&nbsp;개인정보 수집 및 이용에 대한 안내
						<div>
							<p>
								수집 및 이용 목적 <br> &nbsp;&nbsp;헌혈예약 및 예약 관련 상담
							</p>

							<p>
								수집 및 이용 항목 (필수) <br>
								&nbsp;&nbsp;이름, 주민등록번호(외국인등록번호), 휴대전화번호<br> 
								&nbsp;&nbsp;혈액관리법 시행령 제10조의 2에 따라 헌혈예약 시 헌혈경력 및 검사결과 조회를 위해 주민등록번호를 처리하고 <br>&nbsp;&nbsp;있습니다.
							</p>

							<p>
								이용 및 보유 기간<br> &nbsp;&nbsp;헌혈예약 후 5년
							</p>

							<p>
								동의거부 권리 및 불이익<br> &nbsp;&nbsp;정보주체는 개인정보 수집에 동의하지 않을 권리가
								있으며, 필수항목을 입력하지 않으시는 경우 헌혈예약이 <br>&nbsp;&nbsp;불가합니다.
							</p>
						</div>
					</div>

				</div>
				<div class="row my-3">
					<div class="col-8 offset-2">
						<div class="row gx-3">
							<div class="form-check col-auto">
								<input type="radio" class="form-check-input" name="okGet"
									id="Ok" value="true"> <label
									class="form-check-label" for="Ok">동의합니다</label>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>