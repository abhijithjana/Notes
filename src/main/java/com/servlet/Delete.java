package com.servlet;

import java.io.IOException;

import org.apache.catalina.connector.Response;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.FactoryProvider;
import com.tables.Note;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Delete() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id"));
		Session session=FactoryProvider.getFactory().openSession();
		Transaction tx=session.beginTransaction();
		Note note=(Note)session.get(Note.class,id);
		session.delete(note);
		tx.commit();
		session.close();
		RequestDispatcher rs=request.getRequestDispatcher("/viewnote.jsp");
		rs.forward(request, response);
		
		
	}

	
	

}
