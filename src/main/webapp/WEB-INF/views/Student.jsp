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
 background="https://d4804za1f1gw.cloudfront.net/wp-content/uploads/sites/50/2018/11/06110356/hero.jpg"  >
  <script>
 $(document).ready(function()
			{
		$('#validate').click(function()
				{
			studentname=true;
			libraryaddress=true;
		 
			var studentname=$('#studentname').val();
			var studentaddress=$('#studentaddress').val();
			var libraryid=$('#libraryid').val();
			
			if($.trim(studentname).length==0)
				{
				alert('All fields are mandatory')
				studentname = false;
				}
			var val=/^[a-zA-Z._-\s]+$/;
			var val2=/^[a-zA-Z0-9]+$/;
			var val1=/[0-9]/;
			if(!(studentname.match(val)||(studentname.length==0)))
				{
				alert('Enter valid student name');
				return false;
				}
			else if(!(studentaddress.match(val2)||(studentaddress.length==0)))
				{
				alert('Enter valid student address');
				return false;
				}
		
			else if(!(libraryid.match(val1)||(libraryid.length==0)))
			{
				alert('Enter valid id');
			     return false;
			}
				});
			});
 </script>
 <div class="form" >
<form method="post" action="/student" >

  
  <div class="form-group">
    <label >Student Name</label>
    <input type="text" name="studentname" class="form-control" id="studentname" placeholder="enter student name"  >
  </div>
  
   <div class="form-group">
    <label >Student Address</label>
    <input type="text" name="studentaddress" class="form-control" id="studentaddress" placeholder="enter the address of library" >
  </div>
   <div class="form-group">
    <label >Library id </label>
    <input type="text" name="libraryid" class="form-control" id="libraryid" placeholder="enter library id"  >
  </div>
   <button type="submit" id="validate" class="btn btn-primary">Submit</button>
  
  
  </form>
  </div><br>
   <form method="get" action="/back">
   <button type="submit" class="btn btn-primary">Back</button>
   </form>
  </body>
  </html>
  