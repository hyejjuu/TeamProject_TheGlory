package com.teamproject.theglory.kgh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamproject.theglory.kgh.dao.MemberDao;
import com.teamproject.theglory.kgh.domain.Member;


@Service
public class MemberServiceImpl implements MemberService {
    
	@Autowired
	private MemberDao memberDao;
	
	
	@Override
	public int login(String id, String pass) {
        Member member = memberDao.getMember(id);
        System.out.println("getId : "+member.getId());
        System.out.println("getPass : "+member.getPass());
        System.out.println(id);
        System.out.println(pass);
        System.out.println("verify : " + member.getVerify() + " (0은 일반회원이고 , 1은 관리자임돠)");
        
        int result = -1;
        
        if(member == null) {
        	return result;
        }
        
        if(pass.equals(member.getPass())) {
        	result = 1;
        } else {
        	result=0;
        }
		
		return result;
	}

	@Override
	public Member getMember(String id) {
        System.out.println(id);
		return memberDao.getMember(id);
		
	}

}