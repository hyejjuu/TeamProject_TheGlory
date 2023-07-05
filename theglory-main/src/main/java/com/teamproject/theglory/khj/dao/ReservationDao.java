package com.teamproject.theglory.khj.dao;

import java.util.List;

import com.teamproject.theglory.khj.domain.Reservation;

public interface ReservationDao {
	// DB 테이블에서 한 페이지에 보여질 게시 글 리스트를 읽어와 반환하는 메서드
	public abstract List<Reservation> resvBldHousStep1();
	
	public abstract List<Reservation> resvBldHousStep2();
	
	public abstract List<Reservation> resvBldHousStep3();
	
	public abstract List<Reservation> resvBldHousStep4();
	
	public abstract List<Reservation> resvBldHousStep5();
	
	public abstract void insertReservation(Reservation r);
	
}