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
			libraryname=true;
			libraryaddress=true;
		 
			var libraryname=$('#libraryname').val();
			var libraryaddress=$('#libraryaddress').val();
			
			
			if($.trim(libraryname).length==0)
				{
				alert('All fields are mandatory')
				return false;
				}
			var val=/^[a-zA-Z._-\s]+$/;
			
			if(!(libraryname.match(val)||(libraryname.length==0)))
				{
				alert('Enter valid Library Name')
				return false;
				}
			else if(!(libraryaddress.match(val)||(libraryaddress.length==0)))
				{
				alert('Enter vaild Library Address')
				return false;
				}
		
				});
			});
 </script>
 <div class="form" >
<form method="post" action="/library" >

 
  <div class="form-group">
    <label >Library Name</label>
    <input type="text" name="libraryname" class="form-control" id="libraryname" placeholder="enter library name"  >
  </div>
  
   <div class="form-group">
    <label >Library Address</label>
    <input type="text" name="libraryaddress" class="form-control" id="libraryaddress" placeholder="enter the address of library" >
  </div>
   <button type="submit" id="validate" class="btn btn-primary">Submit</button>
  
  
  </form>
  </div><br>
   <form method=get action="/back">
   <button type="submit" class="btn btn-primary">Back</button>
   </form>
  </body>
  </html>
  