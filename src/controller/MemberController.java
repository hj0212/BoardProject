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
