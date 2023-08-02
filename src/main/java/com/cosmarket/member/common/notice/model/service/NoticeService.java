package com.cosmarket.member.common.notice.model.service;

import com.cosmarket.member.common.notice.model.dao.NoticeDAO;
import com.cosmarket.member.common.notice.model.vo.PageData;

import commonJDBC.JDBCTemplate;

public class NoticeService {
	private NoticeDAO nDao;
	private JDBCTemplate jdbcTemplate;
	
	public NoticeService() {
		nDao = new NoticeDAO();
		jdbcTemplate = JDBCTemplate.getInstance();
	}

	public PageData selectNoticeList(int currentPage) {
		// TODO Auto-generated method stub
		return null;
	}
}
