package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LoginCheckFilter implements Filter {

	@Override
	public void destroy() {}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest)request;
		HttpSession session = httpRequest.getSession(false);
		
		String requestURI = httpRequest.getRequestURI();
		String requestPath = httpRequest.getContextPath();
		String addr = requestURI.substring(requestPath.length());
		
		boolean pass = false;
		
		if(addr.equals("/loginProc.html") || addr.equals("/navlogin.do")) {
			pass = true;
		}
		
		if(session != null) {
			if(session.getAttribute("loginId") != null) {
				pass = true;
			}
		}
		
		if(pass) {
			chain.doFilter(request, response);
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/login.html");
			dispatcher.forward(request, response);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {}
}
