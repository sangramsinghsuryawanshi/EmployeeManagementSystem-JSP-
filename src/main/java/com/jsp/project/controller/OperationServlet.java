package com.jsp.project.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.jsp.project.been.Employee;
import com.jsp.project.dao.GetQuires;

/**
 * Servlet implementation class OperationServlet
 */
public class OperationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OperationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String oper = request.getParameter("operation");
		
		
		
		if(oper.equals("insert"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			String city = request.getParameter("city");
			String mobile = request.getParameter("mobile");
			Employee emp = new Employee();
			emp.setId(id);
			emp.setName(name);
			emp.setCity(city);
			emp.setMobile(mobile);
			int status = GetQuires.isInsert(emp);
			if(status!=0)
			{
				pw.print("<script>alert('Data inserted successfully!!');window.location.replace('DataFetch.jsp');</script>");
			}
			else
			{
				pw.write("Data is not inserted........!");
				pw.print("<script>alert('Data is not inserted!!');window.location.replace('DataFetch.jsp');</script>");
			}
		}
		else if(oper.equals("DataFetch"))
		{
			RequestDispatcher rs = request.getRequestDispatcher("DataFetch.jsp");
			rs.include(request, response);
		}
		
		else if(oper.equals("delete"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			if(GetQuires.isDelete(id)!=0)
			{
				pw.print("<script>alert('Deleted successfully!!');window.location.replace('DataFetch.jsp');</script>");
			}
			else
			{
				pw.print("<script>alert('Deleted not successfully!!');window.location.replace('DataFetch.jsp');</script>");
			}
			
		}
		
		else if(oper.equals("up"))
		{	
			RequestDispatcher rs = request.getRequestDispatcher("edit.jsp");
			rs.include(request, response);
		}
		
		else if(oper.equals("edite"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			String city = request.getParameter("city");
			String mobile = request.getParameter("mobile");
			Employee emp = new Employee();
			emp.setId(id);
			emp.setName(name);
			emp.setCity(city);
			emp.setMobile(mobile);
			if(GetQuires.isEdite(emp)!=0)
			{
				pw.print("<script>alert('Data Updated successfully!!');window.location.replace('DataFetch.jsp');</script>");
			}
			else
			{
				pw.print("<script>alert('Data not Updated successfully!!');window.location.replace('DataFetch.jsp');</script>");
			}
		}
		
		else if(oper.equals("DataSearch"))
		{
			RequestDispatcher rs = request.getRequestDispatcher("serach.jsp");
			rs.include(request, response);
		}
	}

}
