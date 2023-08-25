<!doctype html>
<%@page import="com.tables.Note"%>
<%@page import="jakarta.servlet.RequestDispatcher"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit:Note Taker</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  </head>
  <body>
     <%@include file="navbar.jsp" %>
     <%
     int id=Integer.parseInt(request.getParameter("id"));
     Session s=FactoryProvider.getFactory().openSession();
     Note note=(Note)s.get(Note.class,id);
     s.close();
     %>
     <form  class="p-2 mx-5" method="post" action="Edit" >
     <input type="text"  required="required" name="id" class="form-control"  value="<%=note.getId() %>  " type="hidden">
  <div class="mb-3">
    <label for="title" class="form-label">Enter Title</label>
    <input type="text"  required="required" name="title" class="form-control" id="title" value="<%=note.getTitle() %>">
    </div>

<div class="mb-3">
  <textarea name="content" required="required" class="form-control" placeholder="content here" id="floatingTextarea"><%= note.getContent()%> </textarea>
  
  <label for="floatingTextarea" class="form-label">Comments</label>
</div>


  <button type="submit" class="btn btn-primary">Update</button>
   
</form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  </body>
</html>