package com.teamproject.theglory.khj.service;

import java.util.List;
import java.util.Map;

import com.teamproject.theglory.khj.domain.Reservation;

public interface ReservationService {

	// 현재 페이지에 해당하는 게시 글 리스트를 BoardDao를 이용해 읽어와 반화하는 메서드
	public abstract List<Reservation> resvBldHousStep1();

	public abstract List<Reservation> resvBldHousStep2();
	
	public abstract Map<String, Object> resvOneSelect(String reservationDate, int locationNo)  throws Exception;
	
	public abstract List<Reservation>  resvBldHousStep4();
	
	public List<Reservation> getMember(String id);
	
	public abstract List<Reservation>  resvBldHousStep5();
	
	public abstract void insertReservation(Reservation r);

	//예약 변경 요청시 호출 되는 메서드
	public abstract void updateReservation(Reservation r);
	
	// 예약 취소 요청시 호출되는 메서드 - Reservation 객체로 받아 DB에 삭제
	public abstract void deleteReservation(int reservationNo);
	
}
