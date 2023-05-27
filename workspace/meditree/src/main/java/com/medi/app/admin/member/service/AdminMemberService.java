package com.medi.app.admin.member.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.medi.app.admin.member.dao.AdminMemberDao;
import com.medi.app.common.page.PageVo;
import com.medi.app.member.vo.MemberVo;

@Service
@Transactional
public class AdminMemberService {

	private final AdminMemberDao dao;
	private final SqlSessionTemplate sst;
	
	@Autowired
	public AdminMemberService(AdminMemberDao dao, SqlSessionTemplate sst) {
		this.dao = dao;
		this.sst = sst;
	}
	
	public List<MemberVo> getMemberList(PageVo pv, Map<String, String> searchMap) {
		return dao.getMemberList(sst , pv , searchMap);
	}
	
	public MemberVo getMemberByNo(String no) {
		return dao.getMemberByNo(sst , no);
	}

	public int getCnt(Map<String, String> searchMap) {
		return dao.getCnt(sst , searchMap);
	}
	
}
