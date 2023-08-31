package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.servdaoimp.UserDaoImp;
import com.serventity.Userdao;

/**
 * Servlet implementation class UserServ
 */
public class UserServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name,email,age,desc, comment, refer,domain="",cap,ancap;
		String dom[];
		
		cap  = req.getParameter("mcap");
		ancap = req.getParameter("ancap");
		name = req.getParameter("name");
		email = req.getParameter("email");
		age = req.getParameter("age");
		desc = req.getParameter("option");
		refer = req.getParameter("choice");
		dom = req.getParameterValues("check");
		comment = req.getParameter("comment");
		
		int i,j = dom.length;
		for(i = 0; i<j-1; i++) {
			domain += dom[i]+", ";
		}
		domain += dom[j-1];
		
		HttpSession sess = req.getSession();
		Userdao usd = new Userdao(name,email,age,desc,domain,comment,refer);
		UserDaoImp udi = new UserDaoImp();
		
		if(cap.equals(ancap)) {
		boolean f = udi.insertFeed(usd);
		
		if(f) {
			sess.setAttribute("smsg", "Thank you for your valuable feedback");
			response.sendRedirect("home1.jsp");
		}
		else {
			sess.setAttribute("fmsg", "There is error in submission");
			response.sendRedirect("experience.jsp");
		}
		}
		else {
			sess.setAttribute("wcap", "Invalid captcha");
			response.sendRedirect("experience.jsp");
		}
	}

}
