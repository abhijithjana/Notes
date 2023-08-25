package com.servlet;

import java.io.IOException;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.FactoryProvider;
import com.tables.Note;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Edit
 */
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Edit() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id").trim());
		String title=req.getParameter("title");
		  String content=req.getParameter("content");
	
		

		Session session=FactoryProvider.getFactory().openSession();
		Transaction tx=session.beginTransaction();
		Note note=(Note)session.get(Note.class,id);
		note.setAddtime(new Date());
		note.setTitle(title);
		note.setContent(content);
		tx.commit();
		session.close();
		RequestDispatcher rs=req.getRequestDispatcher("/viewnote.jsp");
		rs.forward(req, resp);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	

}
