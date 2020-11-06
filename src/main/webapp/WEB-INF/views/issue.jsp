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
			 alert('Enter valid id');
			studentid= false;
			}
	
		 if(!(bookid.match(val)||(bookid.length==0)))
			{
			 alert('Enter valid id');
			bookid= false;
			}
			});
		});
 </script>
  <h1>${message}</h1>
 <div class="form" >
<form method="post" action="/issue" >

  <div class="form-group">
  <table style="font-size: 30px">
  <tr>
    <td>Student id</td>
   <td> <input type="text" name="studentid" class="form-control" id="studentid" placeholder="enter student id"  ></td>
  </tr>
  <tr>
  
    <td>Book id</td>
   <td> <input type="text" name="bookid" class="form-control" id="bookid" placeholder="enter book id"  ></td>
 </tr>
  
   <tr>
   <td></td>
 <td>
    <button type="submit" id="validate" class="btn btn-primary">Issue</button></td>
    </tr>
    </table>
  </div>
  
 
  </form>
  </div><br>
   <form method="get" action="/back">
   <button type="submit" class="btn btn-primary">Back</button>
   
   </form>
  </body>
  </html>
  