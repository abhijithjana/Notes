<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Note Taker</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  </head>
  <body>
     <%@include file="navbar.jsp" %>
     <form  class="p-2 mx-5" method="post" action="Addnote" >
  <div class="mb-3">
    <label for="title" class="form-label">Enter Title</label>
    <input type="text"  required="required" name="title" class="form-control" id="title" >
    </div>

<div class="mb-3">
  <textarea name="content" required="required" class="form-control" placeholder="content here" id="floatingTextarea"></textarea>
  <label for="floatingTextarea" class="form-label">Comments</label>
</div>


  <button type="submit" class="btn btn-primary">Submit</button>
   
</form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  </body>
</html>