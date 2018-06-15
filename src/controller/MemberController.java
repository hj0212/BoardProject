package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dto.BoardDAO;
import member.dto.MemberDAO;
import member.dto.MemberDTO;


@WebServlet("*.do")
public class MemberController extends HttpServlet { 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		String requestURI= request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		request.setCharacterEncoding("UTF-8");
		
		BoardDAO bdao = new BoardDAO();
		MemberDAO mdao = new MemberDAO();

		boolean isForward = true;
		String dst = null;
		
		if(command.equals("/login.do")) {
			String loginId=request.getParameter("id");
			String loginPw=request.getParameter("pw");
			MemberDTO dto = mdao.findMember(loginId);
			
			if(dto.getId()!=null) {
				if(loginPw.equals(dto.getPw())) {
					request.setAttribute("loginResult", 11);
					request.getSession().setAttribute("loginId", loginId);
				}else {request.setAttribute("loginResult", 10);}
			}else {
				request.setAttribute("loginResult", 00);
			}	
			
			isForward = true;
			dst="loginResult.jsp";
			
		}else if(command.equals("/join.do")) {
			MemberDTO dto = new MemberDTO(request.getParameter("id"),request.getParameter("pw"),request.getParameter("name"),request.getParameter("email"));			
			int result=mdao.addMember(dto);	
			request.setAttribute("addResult", result);	
			isForward = true;
			dst="joinFormResult.jsp";
			
		}else if(command.equals("/navlogin.do")) {
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			
			request.getSession().setAttribute("loginId", name);
			int result=mdao.addNaverMember(new MemberDTO(id,name,email));
<<<<<<< Updated upstream
			isForward = false;
			dst="index.jsp";		
=======
			isForward = true;
			dst="index.html";		
			
>>>>>>> Stashed changes
		}else if(command.equals("/logout.do")) {
			request.getSession().invalidate();
		
			isForward = true;
			dst="login.html";	
		}
		
		if(isForward) {
			RequestDispatcher rd = request.getRequestDispatcher(dst);
			rd.forward(request, response);
		} else {
			response.sendRedirect(dst);
		}
	}catch(Exception e) {e.printStackTrace();}		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
