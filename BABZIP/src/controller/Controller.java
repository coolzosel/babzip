package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.FoodDAO;
import model.ReviewVO;

@WebServlet("/controller")
public class Controller extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String command = request.getParameter("command");
		System.out.println(command);
		if (command == null) {
			command = "list";
		}
		if (command.equals("list")) {
			list(request, response);
			System.out.println("list실행");
		} else if (command.equals("write")) {
			write(request, response);
			System.out.println("write실행");
		} else if (command.equals("update")) {
			update(request, response);
			System.out.println("update 실행");
		} else if (command.equals("delete")) {
			System.out.println("delete 실행");
			delete(request, response);
		} else if (command.equals("flist")) {
			flist(request,response);
		} else if (command.equals("clist")) {
			clist(request,response);
		}
	}
	
	//맛집보기
	public void flist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "error.jsp";
		try {
			request.setAttribute("flist", FoodDAO.getAllFood());
			System.out.println(request.getAttribute("flist"));
			url = "flist.jsp";
		} catch (SQLException e) {
			request.setAttribute("errorMsg", "맛집 찾기에 문제 발생!");
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
	
	//리뷰보기
	public void clist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "error.jsp";
		try {
			request.setAttribute("clist", FoodDAO.getAllContents());
			System.out.println(request.getAttribute("clist"));
			url = "clist.jsp";
		} catch (SQLException e) {
			request.setAttribute("errorMsg", "리뷰 보기에 문제 발생!");
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
	
	//기본형리뷰(vscode로 안 보내고 jsp에서 결과값출력)
	public void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "error.jsp";
		try {
			request.setAttribute("list", FoodDAO.getAllContents());
			System.out.println(request.getAttribute("list"));
			url = "list.jsp";
		} catch (SQLException e) {
			request.setAttribute("errorMsg", "리뷰 보기에 문제 발생!");
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	
	

	
	public void write(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd"); 
		int star = Integer.parseInt(request.getParameter("star"));
		String review = request.getParameter("review");
		int resnum = Integer.parseInt(request.getParameter("resnum")); 
		ReviewVO gContent = new ReviewVO(name, pwd, star, review, resnum);

		try {
			FoodDAO.writeContent(gContent);
			request.setAttribute("gContent", gContent);
			System.out.println("write" + gContent);
		} catch (SQLException e) {
			e.printStackTrace();
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}

	}

	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = null;
		int num = Integer.parseInt(request.getParameter("num"));
		String password = request.getParameter("password");

		try {
			FoodDAO.deleteContent(num, password);
			request.setAttribute("allList", FoodDAO.getAllContents());
			url = "list.jsp";

		} catch (SQLException e) {
			e.printStackTrace();
			request.setAttribute("error", "실패");
			url = "error.jsp";
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "error.jsp";
		int num = Integer.parseInt(request.getParameter("num"));
		int star = Integer.parseInt(request.getParameter("star"));
		String review = request.getParameter("review");
		String pwd = request.getParameter("pwd");

		try {
			FoodDAO.updateContent(new ReviewVO(num, pwd, star, review));
			url = "updateSuccess.jsp";
		} catch (SQLException e) {
			e.printStackTrace();
			request.setAttribute("error", "해당 한줄평 수정 실패");
			url = "error.jsp";

		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}