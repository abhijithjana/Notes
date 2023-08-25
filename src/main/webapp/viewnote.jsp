<!doctype html>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.tables.Note"%>
<%@page import="java.util.List"%>
<%@page import="java.util.stream.Stream"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Note Taker</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  </head>
  <body>
     <%@include file="navbar.jsp" %>
     <div class="row">
       <div class="col-12">
         <%
          Session s=FactoryProvider.getFactory().openSession();
         Query q=s.createQuery("from Note");
         List<Note> list=q.list();
         for(Note note:list){
         %>
         <div class="card m-3 p-2">
  <div class="card-body  ">
    <h5 class="card-title"><%= note.getTitle() %></h5>
    
    <p class="card-text"><%= note.getContent() %></p>
    <a  href="Delete?id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?id=<%=note.getId()%>" class="btn btn-secondary">Edit</a>
    
  </div>
</div>
         <%
         }
         s.close();
         %>
       </div>
     </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  </body>
</html>