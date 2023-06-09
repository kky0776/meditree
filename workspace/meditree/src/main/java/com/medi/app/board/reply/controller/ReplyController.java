package com.medi.app.board.reply.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.medi.app.board.reply.service.ReplyService;
import com.medi.app.board.reply.vo.ReplyVo;
import com.medi.app.member.vo.MemberVo;

@RestController
@RequestMapping("board/reply")
public class ReplyController {

	private final ReplyService rs;
	private final Gson gson;

	
	
	@Autowired
	public ReplyController(ReplyService rs, Gson gson) {
		this.rs = rs;
		this.gson = gson;
	}
	
	//댓글작성
	@PostMapping("write")
	public String write(ReplyVo vo, HttpSession session) {
		
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		
		if (loginMember == null) {
			return "unauthor";
		}
		
		String writerNo = loginMember.getNo();
		vo.setWriterNo(writerNo);
		
		int result = rs.write(vo);
		
		if (result != 1) {
			return "fail";
		}
		return "ok";
	}
	
	
	//댓글 조회
	@GetMapping("list")
	public String list(String bno) {
		List<ReplyVo> list = rs.getReplyList(bno);
		
		
		String str = gson.toJson(list);
		return str;
		
	}
	
	//댓글 삭제
		@DeleteMapping("delete")
		public String delete(String rno , HttpSession session) throws Exception {
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
			if(loginMember == null) {
				throw new Exception("로그인 plz");
			}
			String memberNo = loginMember.getNo();
			
			ReplyVo rvo = new ReplyVo();
			rvo.setNo(rno);
			rvo.setWriterNo(memberNo);
			
			int result = rs.delete(rvo);
			
			if(result == 1) {
				return "del-ok";
			}else {
				return "del-fail";
			}
		}
	
	
	
	
}
