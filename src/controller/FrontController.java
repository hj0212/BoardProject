package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dto.BoardDAO;
import board.dto.BoardDTO;


@WebServlet("*.bo")
public class FrontController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();
			String command = requestURI.substring(contextPath.length());

			BoardDAO dao = new BoardDAO();

			boolean isForward = true;
			String dst = null;

			if(command.equals("/viewList.bo")) {
				List<BoardDTO> list = dao.viewList();
				request.setAttribute("boardlist", list);
				isForward = true;
				dst = "boardlist.jsp";

			} else if(command.equals("/read.bo")) {
				int seq = Integer.parseInt((String)request.getParameter("seq"));

				BoardDTO dto = dao.readArticle(seq);
				request.setAttribute("article", dto);
				isForward = true;
				dst = "read.jsp?seq=" + seq;

			} else if(command.equals("/write.bo")) {
				BoardDTO dto = new BoardDTO();
				dto.setTitle(request.getParameter("title"));
				dto.setPassword(request.getParameter("password"));
				dto.setContents(request.getParameter("contents"));
				dto.setIp(request.getRemoteAddr());

				int result = dao.writeArticle(dto);

				request.setAttribute("result", result); 
				isForward = true;
				dst = "result.jsp";

			} 	else if(command.equals("/pwcheck.bo")) {
			
				String password = request.getParameter("password");
				String proc = request.getParameter("proc");
				int seq = Integer.parseInt((String)request.getParameter("seq"));


				if(dao.passwordCheck(seq, password)) {
					if(proc.equals("modi")) {
						isForward = false;
						dst = "modify.jsp?seq=" + seq;
					} else if(proc.equals("remo")){
						int result = dao.removeArticle(seq, password);
						request.setAttribute("result", result);
						isForward = true;
						dst = "removeresult.jsp";
					}
				} else {
					isForward = false;
					dst = "pwcheck.jsp?proc=" + proc + "&seq=" + seq;
				}

			}	else if(command.equals("/modify.bo")) {
				System.out.println("여기");
				int seq = Integer.parseInt((String)request.getParameter("seq"));
				BoardDTO dto = new BoardDTO();
				dto.setSeq(seq);
				dto.setTitle(request.getParameter("title"));
				dto.setPassword(request.getParameter("password"));
				dto.setContents(request.getParameter("contents"));

				int result = dao.modifyArticle(dto);

				request.setAttribute("result", result);
				request.setAttribute("seq", seq);
				isForward = true;
				dst = "result.jsp";
			}

			if(isForward) {
				RequestDispatcher rd = request.getRequestDispatcher(dst);
				rd.forward(request, response);
			} else {
				response.sendRedirect(dst);
			}

		} catch (Exception e) {

			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
