<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome page</title>
<link href="/webjars/bootstrap/4.3.1/css.bootstrap.min.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
 <body
 background="https://d4804za1f1gw.cloudfront.net/wp-content/uploads/sites/50/2018/11/06110356/hero.jpg">
 <script>
 $(document).ready(function()
		{
	$('#validate').click(function()
			{
		studentid=true;
		bookid=true;
		
		var studentid=$('#studentid').val();
		
		
		if($.trim(studentid).length==0)
			{
			alert('All fields are mandatory')
			return false;
			}
		var val=/[0-9]/;
		
		 if(!(studentid.match(val)||(studentid.length==0)))
			{
			 alert('Enter valid id')
			 return false;
			}
	
		 if(!(bookid.match(val)||(book.length==0)))
			{
			 alert('Enter valid id')
			 return false;
			}
			});
		});
 </script>
 <div class="form" >
<form method="post" action="/return" >

  <div class="form-group">
    <label>Student id</label>
    <input type="text" name="studentid" class="form-control" id="studentid" placeholder="enter student id"  >
  </div>
  
   <div class="form-group">
    <label>Book id</label>
    <input type="text" name="bookid" class="form-control" id="bookid" placeholder="enter book id"  >
  </div>
  
   
  <div class="form-group">
    <button type="submit" id="validate" class="btn btn-primary">Submit</button>
  </div>
  
  </form>
  </div><br>
   <form method="get" action="/back">
   <button type="submit" class="btn btn-primary">Back</button>
   </form>
  </body>
  </html>