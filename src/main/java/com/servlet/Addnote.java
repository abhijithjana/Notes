package com.servlet;


import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Base64;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.helper.FactoryProvider;

import com.tables.Note;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Addnote
 */


public class Addnote extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Addnote() {
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
		      String title=request.getParameter("title");
			  String content=request.getParameter("content");
		
			
			  Note note=new Note(title,content);

			  SessionFactory factory=FactoryProvider.getFactory();
			  Session session=factory.openSession();
			  
			  Transaction tx=session.beginTransaction();
			  session.save(note);
			  tx.commit();
			  session.close();
				RequestDispatcher rs=request.getRequestDispatcher("/viewnote.jsp");
				rs.forward(request, response);
	  
			  
		} catch (Exception e) {
			PrintWriter out=response.getWriter() ;
			  out.print("<h1>note added succsfull</h1><br>"+e);
	  
		}
		
	}


	

}
