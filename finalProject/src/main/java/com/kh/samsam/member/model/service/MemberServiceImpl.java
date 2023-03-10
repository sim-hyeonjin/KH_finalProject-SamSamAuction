package com.kh.samsam.member.model.service;



import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.samsam.common.model.vo.PageInfo;
import com.kh.samsam.member.model.dao.MemberDao;
import com.kh.samsam.member.model.vo.Member;
import com.kh.samsam.member.model.vo.MemberChart;
import com.kh.samsam.product.model.vo.Product;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private MemberDao memberDao;
	@Inject
	private MemberDao manager;
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	@Override
	public int selectNewMember(MemberChart c) {
		int count = memberDao.selectNewMember(sqlSession, c);
		return count;
	}

	@Override
	public int selectRemoveMember(MemberChart c) {
		int count = memberDao.selectRemoveMember(sqlSession, c);
		return count;
	}
	@Override
	public Member loginMember(Member m) {
		
		Member loginUser = memberDao.loginMember(sqlSession,m);
		
		return loginUser;
	}
	

	
	@Override
	public int insertMember(Member m) {
		
		int result = memberDao.insertMember(sqlSession,m);
		
		return result;
	}
	@Override
	public int check_id(String id) {
		return memberDao.check_id(sqlSession,id);
	}

	// 이메일 중복 검사(AJAX)
	@Override
	public void check_email(String email, HttpServletResponse response) throws Exception {
		PrintWriter out = response.getWriter();
		out.println(manager.check_email(sqlSession, email));
		out.close();
	}
	// 아이디 찾기
	@Override
	public String find_id(HttpServletResponse response, String email) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = manager.find_id(sqlSession, email);
		
		if (id == null) {
			out.println("<script>");
			out.println("alert('가입된 아이디가 없습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return null;
		} else {
			return id;
		}
	}

	
	// 이메일 발송
		@Override
		public void send_mail(Member m, String div) throws Exception {
			// Mail Server 설정
			String subject = "";
			String msg = "";
			
			if(div.equals("find_pw")) {
				subject = "SAMSAM AUCTION 임시 비밀번호 입니다.";
				msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
				msg += "<h3 style='color: blue;'>";
				msg += m.getUserId() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
				msg += "<p>임시 비밀번호 : ";
				msg += m.getUserPw() + "</p></div>";
			}
			// 받는 사람 E-Mail 주소
			String mail = m.getEmail();
			String setFrom = "alsrbwlw@naver.com"; // email-config에 설정한 자신의 이메일 주소를 입력 
			String toMail = mail;
			String title = subject; // 이메일 제목 
			String content =msg; //이메일 내용 삽입
			mailSend(setFrom, toMail, title, content);
		}
		public void mailSend(String setFrom, String toMail, String title, String content) {
			System.out.println("456");
			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper helper = new MimeMessageHelper(message,true,"utf-8");
				helper.setFrom(setFrom);
				helper.setTo(toMail);
				helper.setSubject(title);
				helper.setText(content,true);
				mailSender.send(message);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// 비밀번호 찾기
		@Override
		public void find_pw(HttpServletResponse response, Member m) throws Exception {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			// 아이디가 없으면
			if(memberDao.check_id(sqlSession, m.getUserId()) == 0) {
				out.print("아이디가 없습니다.");
				out.close();
			}
//			// 가입에 사용한 이메일이 아니면
//			else if(!m.getEmail().equals(manager.loginMember(m.getUserId()).getEmail())) {
//				out.print("잘못된 이메일 입니다.");
//				out.close();
			else{
				// 임시 비밀번호 생성
				
				String pw = "";
				for (int i = 0; i < 12; i++) {
					pw += (char) ((Math.random() * 26) + 97);
				}
				
				m.setUserPw(pw);
				// 비밀번호 변경
				// 비밀번호 변경 메일 발송
				send_mail(m, "find_pw");
				String encPwd = bcryptPasswordEncoder.encode(m.getUserPw());
				System.out.println("암호화 후 비밀번호 : "+encPwd);
				m.setUserPw(encPwd);
				memberDao.update_pw(sqlSession, m);
				out.print("이메일로 임시 비밀번호를 발송하였습니다.");
				out.close();
			}
		}


	@Override
	public int pwdChange(Member m) {
		// TODO Auto-generated method stub
		int result = memberDao.pwdChange(sqlSession,m);
		return result;
	}


	public void certifiedPhoneNumber(String userPhoneNumber, int randomNumber) {
		String api_key = "NCSMHEFPTZLZ6P06";
	    String api_secret = "RYH3QUQ0PLZOOVNPWGPZVYP5RT85SVPD";
	    Message coolsms = new Message(api_key, api_secret);

	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", userPhoneNumber);    // 수신전화번호
	    params.put("from", "010");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
	    params.put("type", "SMS");
	    params.put("text", "[TEST] 인증번호는" + "["+randomNumber+"]" + "입니다."); // 문자 내용 입력
	    params.put("app_version", "test app 1.2"); // application name and version

	    try {
	        JSONObject obj = (JSONObject) coolsms.send(params);
	        System.out.println(obj.toString());
	      } catch (CoolsmsException e) {
	        System.out.println(e.getMessage());
	        System.out.println(e.getCode());
	      }
	    
	}

	@Override
	public int updateMember(Member m) {
		// TODO Auto-generated method stub
		int result = memberDao.updateMember(sqlSession,m);
		
		return result;
	}

	@Override
	public int deleteMember(String userId) {
		int result = memberDao.deleteMember(sqlSession,userId);
		
		return result;
	}

	
	//======찜리스트======
		//페이징 처리 게시글 count
		@Override
		public int selectPListCount(String userId) {
			
			return memberDao.selectPListCount(sqlSession,userId);
		}

		//찜리스트 출력
		@Override
		public ArrayList<Product> pickList(String userId, PageInfo pi) {
			return memberDao.pickList(sqlSession,userId, pi);
		}
		



		

		// 신고 당한 회원 정지 - banCount 조회
		@Override
		public int selectBanCount(String reportedId) {
			return memberDao.selectBanCount(sqlSession, reportedId);
		}


		// 신고 당한 회원 정지
		@Override
		public int banMember(Member m) {
			return memberDao.banMember(sqlSession, m);
		}
		
		@Override
		public int deleteReport(int reportNo) {
			return memberDao.deleteReport(sqlSession, reportNo);
		}

		@Override
		public int nobanMember(int reportNo) {
			return memberDao.nobanMember(sqlSession, reportNo);
		}
	


	//2022.07.24 알람 시작
	@Override
	public ArrayList<Product> successBid(String userId) {
		return memberDao.successBid(sqlSession, userId);
	}
	@Override
	public ArrayList<Product> successProduct(String userId) {
		return memberDao.successProduct(sqlSession, userId);
	}
	@Override
	public ArrayList<Product> failProduct(String userId) {
		return memberDao.failProduct(sqlSession, userId);
	}
	@Override
	public ArrayList<Product> topBid(String userId) {
		return memberDao.topBid(sqlSession, userId);
	}
	//2022.07.24 알람 끝







}
