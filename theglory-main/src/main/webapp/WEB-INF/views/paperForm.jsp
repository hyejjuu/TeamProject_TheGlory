<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="resources/js/paper.js"></script>

<div class="row justify-content-md-center mt-5 mb-3" id="global-content">
	<div>
	
		<div class="row my-3 text-center">
			<div class="col">
				<h2 class="fs-1 fw-bold">전자문진</h2>
			</div>
		</div>
	
	
	<!-- content -->
	<form action="paperResult" method="POST" name="paperForm" id="paperForm">	
		<div class="row col-8 offset-2">
			
			<div class="text-center">
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="list-sign" role="tabpanel" aria-labelledby="list-sign-list">
						<figure class="text-center">
							<blockquote class="blockquote">
								<p class="mb-0">
									<font style="vertical-align: inherit;">
										<font style="vertical-align: inherit;">헌혈금지약물, 헌혈금지약물(태아영향)-요약, 감염병, 말라리아 관련 헌혈제한지역, 헌혈관련증상에 대한 안내문을 읽어 보셨습니까?</font>
									</font>
								</p>  
							</blockquote>
							<div class="row mt-5 mb-3">
								<div class="col-8 offset-2">
									<label for="userId" class="form-label"> 아이디 : </label>
									<input type="text" class="form-control" name="id" id="userId" value="${sessionScope.member.id}" readonly>
								</div>
							</div>
							<figcaption class="blockquote-footer text-danger">
								<font style="vertical-align: inherit;">
									<cite title="안내문">
										<font style="vertical-align: inherit;">*반드시 모든 안내문을 읽어주세요*</font>
									</cite>
								</font>
							</figcaption>
						</figure>
					</div>
					
					<div class="col tab-pane fade" id="list-today" role="tabpanel" aria-labelledby="list-today">
						<h2><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1. 오늘</font></font></strong></h2>
						<p>
							<font style="vertical-align: inherit;">
								<strong><font style="vertical-align: inherit;">아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>아래 사항 중 선택해 주십시오.</font></strong>
							</font>
						</p>
						<fieldset class="form-group">
							<div class="col-sm-3 text-start">
								<div class="form-check m-3 border-bottom">
									<input class="form-check-input" type="radio" name="today" id="1o" value="해당없음">
									<label class="form-check-label" for="optionsRadios1">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;"><strong>해당 없음</strong>(다음으로 이동)</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="today" id="1n1" value="몸상태 안좋음">
									<label class="form-check-label" for="optionsRadios2">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">몸상태 안좋음</font>
										</font>
									</label>
								</div>
							</div>
						</fieldset>
						<textarea class="form-control m-3" name="today_t" id="text1" rows="3" placeholder="상세내용을 입력해 주세요"></textarea>
					</div>
					
					<div class="tab-pane fade" id="list-three" role="tabpanel" aria-labelledby="list-three">
						<h2><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2. 최근 3일 이내</font></font></strong></h2>
						<p>
							<font style="vertical-align: inherit;">
								<strong><font style="vertical-align: inherit;">아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>아래 사항 중 선택해 주십시오.</font></strong>
							</font>
						</p>
						<fieldset class="form-group">
							<div class="col text-start">
								<div class="form-check col-sm-3 m-3 border-bottom">
									<input class="form-check-input" type="radio" name="three" id="2o" value="해당없음">
									<label class="form-check-label" for="optionsRadios1">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;"><strong>해당 없음</strong>(다음으로 이동)</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="three" id="2x" value="해당있음">
									<label class="form-check-label" for="optionsRadios2">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">아래 항목 중 선택해 주세요</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="three_c" class="three_c" id="2n1"value="발열">발열</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="three_c" class="three_c" id="2n2"value="인후통">인후통</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="three_c" class="three_c" id="2n3"value="설사">설사</label>
								</div>
							</div>
						</fieldset>
						<textarea class="form-control m-3" name="three_t" id="text2" rows="3" placeholder="상세내용을 입력해 주세요"></textarea>
					</div>
					
					<div class="tab-pane fade" id="list-week" role="tabpanel" aria-labelledby="list-week">
						<h2><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3. 최근 1주일 이내</font></font></strong></h2>
						<p>
							<font style="vertical-align: inherit;">
								<strong><font style="vertical-align: inherit;">아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>아래 사항 중 선택해 주십시오.</font></strong>
							</font>
						</p>
						<fieldset class="form-group">
							<div class="col text-start">
								<div class="form-check col-sm-3 m-3 border-bottom">
									<input class="form-check-input" type="radio" name="week" id="3o" value="해당없음">
									<label class="form-check-label" for="optionsRadios1">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;"><strong>해당 없음</strong>(다음으로 이동)</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="week" id="3x" value="해당있음">
									<label class="form-check-label" for="optionsRadios2">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">아래 항목 중 선택해 주세요</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="week_c" class="week_c" id="3n1"value="약물복용">약물 복용</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="week_c" class="week_c" id="3n2"value="주사">주사</label>
								</div>
							</div>
						</fieldset>
						<textarea class="form-control m-3" name="week_t" id="text3" rows="3" placeholder="상세내용을 입력해 주세요"></textarea>
					</div>
					
					<div class="tab-pane fade" id="list-month" role="tabpanel" aria-labelledby="list-month">
						<h2><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4. 최근 1개월 이내</font></font></strong></h2>
						<p>
							<font style="vertical-align: inherit;">
								<strong><font style="vertical-align: inherit;">아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>아래 사항 중 선택해 주십시오.</font></strong>
							</font>
						</p>
						<fieldset class="form-group">
							<div class="col text-start">
								<div class="form-check col-sm-3 m-3 border-bottom">
									<input class="form-check-input" type="radio" name="month" id="4o" value="해당없음">
									<label class="form-check-label" for="optionsRadios1">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;"><strong>해당 없음</strong>(다음으로 이동)</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="month" id="4x" value="해당있음">
									<label class="form-check-label" for="optionsRadios2">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">아래 항목 중 선택해 주세요</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="month_c" class="month_c" id="4n1"value="반복적인 고열, 춥고 떨림, 땀흘림">반복적인 고열, 춥고 떨림, 땀흘림</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="month_c" class="month_c" id="4n2"value="의료기관에서 단순 감기 이외의 질병 진단 또는 치료">의료기관에서 단순 감기 이외의 질병 진단 또는 치료</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="month_c" class="month_c" id="4n3"value="시술(내시경, 조직검사, 레이저 시술 등)">시술(내시경, 조직검사, 레이저 시술 등)</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="month_c" class="month_c" id="4n4"value="외국 여행">외국 여행</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="month_c" class="month_c" id="4n5"value="치과치료">치과치료</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="month_c" class="month_c" id="4n6"value="기타">기타</label>
								</div>
							</div>
						</fieldset>
						<textarea class="form-control m-3" name="month_t" id="text4" rows="3" placeholder="상세내용을 입력해 주세요"></textarea>
					</div>
					
					<div class="tab-pane fade" id="list-months" role="tabpanel" aria-labelledby="list-months">
						<h2><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5. 최근 6개월 이내</font></font></strong></h2>
						<p>
							<font style="vertical-align: inherit;">
								<strong><font style="vertical-align: inherit;">아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>아래 사항 중 선택해 주십시오.</font></strong>
							</font>
						</p>
						<fieldset class="form-group">
							<div class="col text-start">
								<div class="form-check col-sm-3 m-3 border-bottom">
									<input class="form-check-input" type="radio" name="months" id="5o" value="해당없음">
									<label class="form-check-label" for="optionsRadios1">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;"><strong>해당 없음</strong>(다음으로 이동)</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="months" id="5x" value="해당있음">
									<label class="form-check-label" for="optionsRadios2">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">아래 항목 중 선택해 주세요</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="months_c" class="months_c" id="5n1"value="사마귀, 점제거, 피어씽(귀뚫음 등), 문신(반영구화장 포함)">사마귀, 점제거, 피어씽(귀뚫음 등), 문신(반영구화장 포함)</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="months_c" class="months_c" id="5n2"value="침술, 부항(사혈)">침술, 부항(사혈)</label>
								</div>
							</div>
						</fieldset>
						<fieldset class="form-group m-3">
							<div class="col-sm-3 text-start">
								<legend class="mt-4"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">여성만</font></font></legend>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="months" id="5f1" value="임신">
									<label class="form-check-label" for="optionsRadios1">
										<font style="vertical-align: inherit;"><font style="vertical-align: inherit;">임신</font></font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="months" id="5f2" value="분만">
									<label class="form-check-label" for="optionsRadios2">
										<font style="vertical-align: inherit;"><font style="vertical-align: inherit;">분만</font></font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="months" id="5f3" value="유산">
									<label class="form-check-label" for="optionsRadios3">
										<font style="vertical-align: inherit;"><font style="vertical-align: inherit;">유산</font></font>
									</label>
								</div>
							</div>
						</fieldset>
						<textarea class="form-control m-3" name="months_t" id="text5" rows="3" placeholder="상세내용을 입력해 주세요"></textarea>
					</div>
					
					<div class="tab-pane fade" id="list-year" role="tabpanel" aria-labelledby="list-year">
						<h2><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6. 최근 1년 이내</font></font></strong></h2>
						<p>
							<font style="vertical-align: inherit;">
								<strong><font style="vertical-align: inherit;">아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>아래 사항 중 선택해 주십시오.</font></strong>
							</font>
						</p>
						<fieldset class="form-group">
							<div class="col text-start">
								<div class="form-check col-sm-3 m-3 border-bottom">
									<input class="form-check-input" type="radio" name="year" id="6o" value="해당없음">
									<label class="form-check-label" for="optionsRadios1">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;"><strong>해당 없음</strong>(다음으로 이동)</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="year" id="6x" value="해당있음">
									<label class="form-check-label" for="optionsRadios2">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">아래 항목 중 선택해 주세요</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="year_c" class="year_c" id="6n1"value="입원">입원</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="year_c" class="year_c" id="6n2"value="수혈">수혈</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="year_c" class="year_c" id="6n3"value="수술">수술</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="year_c" class="year_c" id="6n4"value="경련">경련</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="year_c" class="year_c" id="6n5"value="예방접종">예방접종</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="year_c" class="year_c" id="6n6"value="다른 사람이 사용한 주사침에 찔림">다른 사람이 사용한 주사침에 찔림</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="year_c" class="year_c" id="6n7"value="의식소실">의식소실</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="year_c" class="year_c" id="6n8"value="마약주사">마약주사</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="year_c" class="year_c" id="6n9"value="교도소(소년교도소 포함), 구치소 등에 3일 이상 수감">교도소(소년교도소 포함), 구치소 등에 3일 이상 수감</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="year_c" class="year_c" id="6n10"value="불특정 이성과의 성접촉 또는 남성의 경우 남성과의 성접촉">불특정 이성과의 성접촉 또는 남성의 경우 남성과의 성접촉</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="year_c" class="year_c" id="6n11"value="기타">기타</label>
								</div>
							</div>
						</fieldset>
						<textarea class="form-control m-3" name="year_t" id="text6" rows="3" placeholder="상세내용을 입력해 주세요"></textarea>
					</div>
					
					<div class="tab-pane fade" id="list-every" role="tabpanel" aria-labelledby="list-every">
						<h2><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">7. 기간에 관계없이</font></font></strong></h2>
						<p>
							<font style="vertical-align: inherit;">
								<strong><font style="vertical-align: inherit;">아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>아래 사항 중 선택해 주십시오.</font></strong>
							</font>
						</p>
						<fieldset class="form-group">
							<div class="col text-start">
								<div class="form-check col-sm-3 m-3 border-bottom">
									<input class="form-check-input" type="radio" name="every" id="7o" value="해당없음">
									<label class="form-check-label" for="optionsRadios1">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;"><strong>해당 없음</strong>(다음으로 이동)</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="every" id="7x" value="해당있음">
									<label class="form-check-label" for="optionsRadios2">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">아래 항목 중 선택해 주세요</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="every_c" class="every_c" id="7n1"value="암">암</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="every_c" class="every_c" id="7n2"value="심장질환">심장질환</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="every_c" class="every_c" id="7n3"value="신장질환">신장질환</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="every_c" class="every_c" id="7n4"value="간질환">간질환</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="every_c" class="every_c" id="7n5"value="당뇨">당뇨병</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="every_c" class="every_c" id="7n6"value="혈액질환">혈액질환(혈우병, 적혈구증다증 등)</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="every_c" class="every_c" id="7n7"value="호흡기질환">호흡기질환</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="every_c" class="every_c" id="7n8"value="피부질환">피부질환(건선 등)</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="every_c" class="every_c" id="7n9"value="알코올 또는 마약 중독">알코올 또는 마약 중독</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="every_c" class="every_c" id="7n10"value="정신질환">정신질환</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="every_c" class="every_c" id="7n11"value="경련성질환">경련성 질환</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="every_c" class="every_c" id="7n12"value="자가면역질환">자가면역질환(류마티스 등)</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="every_c" class="every_c" id="7n13"value="장기이식">장기이식(신장, 간장, 췌장, 심장, 폐, 골수, 안구 등)</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="every_c" class="every_c" id="7n14"value="기타">기타</label>
								</div>
							</div>
						</fieldset>
						<textarea class="form-control m-3" name="every_t" id="text7" rows="3" placeholder="상세내용을 입력해 주세요"></textarea>
					</div>
					
					<div class="tab-pane fade" id="list-drug" role="tabpanel" aria-labelledby="list-drug">
						<h2><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">8. 헌혈 금지 약물</font></font></strong></h2>
						<p>
							<font style="vertical-align: inherit;">
								<strong><font style="vertical-align: inherit;">아래 사항 중 선택해 주십시오.</font></strong>
							</font>
						</p>
						<fieldset class="form-group">
							<div class="col text-start">
								<div class="form-check col-sm-3 m-3 border-bottom">
									<input class="form-check-input" type="radio" name="drug" id="8o" value="해당없음">
									<label class="form-check-label" for="optionsRadios1">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;"><strong>해당 없음</strong>(다음으로 이동)</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="drug" id="8x" value="해당있음">
									<label class="form-check-label" for="optionsRadios2">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">아래 항목 중 선택해 주세요</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="drug_c" class="drug_c" id="8n1"value="건선치료제(에트레티네이트, 아시트레틴)">건선치료제(에트레티네이트, 아시트레틴)</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="drug_c" class="drug_c" id="8n2"value="소에서 유래한 인슐린">소에서 유래한 인슐린</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="drug_c" class="drug_c" id="8n3"value="전립선치료제(두타스테라이드, 피나스테라이드)">전립선치료제(두타스테라이드, 피나스테라이드)</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="drug_c" class="drug_c" id="8n4"value="탈모증 치료제(피나스테라이드)">탈모증 치료제(피나스테라이드)</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="drug_c" class="drug_c" id="8n5"value="뇌하수체 유래 성장 호르몬">뇌하수체 유래 성장 호르몬</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="drug_c" class="drug_c" id="8n6"value="여드름치료제(이소트렌티노인)">여드름치료제(이소트렌티노인)</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="drug_c" class="drug_c" id="8n7"value="기타">기타</label>
								</div>
							</div>
						</fieldset>
						<textarea class="form-control m-3" name="drug_t" id="text8" rows="3" placeholder="상세내용을 입력해 주세요"></textarea>
					</div>
					
					<div class="tab-pane fade" id="list-infectious" role="tabpanel" aria-labelledby="list-infectious">
						<h2><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">9. 감염병</font></font></strong></h2>
						<p>
							<font style="vertical-align: inherit;">
								<strong><font style="vertical-align: inherit;">아래 사항 중 선택해 주십시오.</font></strong>
							</font>
						</p>
						<fieldset class="form-group">
							<div class="col text-start">
								<div class="form-check col-sm-3 m-3 border-bottom">
									<input class="form-check-input" type="radio" name="infectious" id="9o" value="해당없음">
									<label class="form-check-label" for="optionsRadios1">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;"><strong>해당 없음</strong>(다음으로 이동)</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="infectious" id="9x" value="해당있음">
									<label class="form-check-label" for="optionsRadios2">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">아래 항목 중 선택해 주세요</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="infectious_c" class="infectious_c" id="9n1"value="간염">간염(B형, C형 등)</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="infectious_c" class="infectious_c" id="9n2"value="에이즈">에이즈</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="infectious_c" class="infectious_c" id="9n3"value="말라리아">말라리아</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="infectious_c" class="infectious_c" id="9n4"value="성병">성병(임질, 매독 등)</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="infectious_c" class="infectious_c" id="9n5"value="한센병">한센병</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="infectious_c" class="infectious_c" id="9n6"value="바베시아증">바베시아증</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="infectious_c" class="infectious_c" id="9n7"value="샤가스병">샤가스병</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="infectious_c" class="infectious_c" id="9n8"value="변종 크로이츠펠트-야콥병(vCJD)">변종 크로이츠펠트-야콥병(vCJD)</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="infectious_c" class="infectious_c" id="9n9"value="브루셀라증">브루셀라증</label>
								</div>
								<div class="form-check m-3">
									<label><input type="checkbox" name="infectious_c" class="infectious_c" id="9n10"value="기타">기타</label>
								</div>
							</div>
						</fieldset>
						<textarea class="form-control m-3" name="infectious_t" id="text9" rows="3" placeholder="상세내용을 입력해 주세요"></textarea>
					</div>
					
					<div class="tab-pane fade" id="list-malaria" role="tabpanel" aria-labelledby="list-malaria">
						<h2><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">10. 말라리아</font></font></strong></h2>
						<p>
							<font style="vertical-align: inherit;">
								<strong><font style="vertical-align: inherit;">아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>아래 사항 중 선택해 주십시오.</font></strong>
							</font>
						</p>
						<fieldset class="form-group">
							<div class="col text-start">
								<div class="form-check col-sm-3 m-3 border-bottom">
									<input class="form-check-input" type="radio" name="malaria" id="10o" value="해당없음">
									<label class="form-check-label" for="optionsRadios1">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;"><strong>해당 없음</strong>(다음으로 이동)</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="malaria" id="10n1" value="최근 1년 이내에 국내 - 외 말라리아 관련 헌혈제한지역에서 1일 이상 6개월 미만 숙박">
									<label class="form-check-label" for="optionsRadios2">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">최근 1년 이내에 국내 - 외 말라리아 관련 헌혈제한지역에서 1일 이상 6개월 미만 숙박</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="malaria" id="10n2" value="최근 2년 이내에 국내 말라리아 관련 헌혈제한지역에서 6개월 이상 거주 또는 군복무">
									<label class="form-check-label" for="optionsRadios2">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">최근 2년 이내에 국내 말라리아 관련 헌혈제한지역에서 6개월 이상 거주 또는 군복무</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="malaria" id="10n3" value="최근 3년 이내에 국외 말라리아 관련 헌혈제한지역에서 6개월 이상 거주 또는 군복무">
									<label class="form-check-label" for="optionsRadios2">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">최근 3년 이내에 국외 말라리아 관련 헌혈제한지역에서 6개월 이상 거주 또는 군복무</font>
										</font>
									</label>
								</div>
							</div>
						</fieldset>
						<textarea class="form-control m-3" name="malaria_t" id="text10" rows="3" placeholder="상세내용을 입력해 주세요"></textarea>
					</div>
					
					<div class="tab-pane fade" id="list-vcjd" role="tabpanel" aria-labelledby="list-vcjd">
						<h2><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">11. 변종 크로이츠펠트-야콥병(vCJD)</font></font></strong></h2>
						<p>
							<font style="vertical-align: inherit;">
								<strong><font style="vertical-align: inherit;">아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>아래 사항 중 선택해 주십시오.</font></strong>
							</font>
						</p>
						<fieldset class="form-group">
							<div class="col text-start">
								<div class="form-check col-sm-3 m-3 border-bottom">
									<input class="form-check-input" type="radio" name="vcjd" id="11o" value="해당없음">
									<label class="form-check-label" for="optionsRadios1">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;"><strong>해당 없음</strong>(완료)</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="vcjd" id="11n1" value="1980년~1996년까지 1개월 이상 영국 거주/방문/여행">
									<label class="form-check-label" for="optionsRadios2">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">1980년~1996년까지 1개월 이상 "영국" 거주/방문/여행</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="vcjd" id="11n2" value="1997년~현재까지 3개월 이상 영국 거주/방문/여행">
									<label class="form-check-label" for="optionsRadios2">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">1997년~현재까지 3개월 이상 "영국" 거주/방문/여행</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="vcjd" id="11n3" value="1980년~현재까지 5년 이상 유럽국가 거주/방문/여행">
									<label class="form-check-label" for="optionsRadios2">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">1980년~현재까지 5년 이상 "유럽국가" 거주/방문/여행</font>
										</font>
									</label>
								</div>
								<div class="form-check m-3">
									<input class="form-check-input" type="radio" name="vcjd" id="11n4" value="1980년 이후 영국, 프랑스에서의 수혈">
									<label class="form-check-label" for="optionsRadios2">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">1980년 이후 "영국, 프랑스"에서의 수혈</font>
										</font>
									</label>
								</div>
							</div>
						</fieldset>
						<textarea class="form-control m-3" name="vcjd_t" id="text11" rows="3" placeholder="상세내용을 입력해 주세요"></textarea>
 						<input type="submit" value="완료" class="btn btn-success m-3">
					</div>
				</div>
			</div>
			
			<div class="text-center mt-5 mb-3">
				<div class="list-group list-group-horizontal" id="list-tab" role="group">
					<a class="list-group-item list-group-item-light list-group-item-action active" id="list-sign" data-bs-toggle="list" href="#list-sign" aria-controls="list-sign">*</a>
					<a class="list-group-item list-group-item-light list-group-item-action" id="list-today" data-bs-toggle="list" href="#list-today" aria-controls="list-today">1</a>
					<a class="list-group-item list-group-item-light list-group-item-action" id="list-three" data-bs-toggle="list" href="#list-three" aria-controls="list-three">2</a>
					<a class="list-group-item list-group-item-light list-group-item-action" id="list-week" data-bs-toggle="list" href="#list-week" aria-controls="list-week">3</a>
					<a class="list-group-item list-group-item-light list-group-item-action" id="list-month" data-bs-toggle="list" href="#list-month" aria-controls="list-month">4</a>
					<a class="list-group-item list-group-item-light list-group-item-action" id="list-months" data-bs-toggle="list" href="#list-months" aria-controls="list-months">5</a>
					<a class="list-group-item list-group-item-light list-group-item-action" id="list-year" data-bs-toggle="list" href="#list-year" aria-controls="list-year">6</a>
					<a class="list-group-item list-group-item-light list-group-item-action" id="list-every" data-bs-toggle="list" href="#list-every" aria-controls="list-every">7</a>
					<a class="list-group-item list-group-item-light list-group-item-action" id="list-drug" data-bs-toggle="list" href="#list-drug" aria-controls="list-drug">8</a>
					<a class="list-group-item list-group-item-light list-group-item-action" id="list-infectious" data-bs-toggle="list" href="#list-infectious" aria-controls="list-infectious">9</a>
					<a class="list-group-item list-group-item-light list-group-item-action" id="list-malaria" data-bs-toggle="list" href="#list-malaria" aria-controls="list-malaria">10</a>
					<a class="list-group-item list-group-item-light list-group-item-action" id="list-vcjd" data-bs-toggle="list" href="#list-vcjd" aria-controls="list-vcjd">11</a>
				</div>
			</div>
			
		</div>
	</form>
		
	</div>
</div>