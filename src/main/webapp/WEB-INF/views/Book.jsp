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
 <script >
$(document).ready(function()
		{
	$('#validate').click(function()
			{
		bname=true;
		aname=true;
	    libraryid=true;
		var bname=$('#bname').val();
		var aname=$('#aname').val();
		var libraryid=$('#libraryid').val();
		
		if($.trim(bname).length==0)
			{
			alert('All fields are mandatory')
			bname = false;
			}
		var val=/^[a-zA-Z._-\s]+$/;
		var val1=/[0-9]/;
		if(!(bname.match(val)||(bname.length==0)))
			{
			alert('Enter valid Book Name')
			return false;
			}
		else if(!(aname.match(val)||(aname.length==0)))
			{
			alert('Enter valid Author Name')
			return false;
			}
		else if(!(libraryid.match(val1)||(libraryid.length==0)))
			{
			alert('Enter valid Id')
			return false;
			}
	
			});
		});
		</script>
 
 <div class="form" >
<form method="post" action="/book" >

  <div class="form-group">
    <label>Library id</label>
    <input type="text" name="libraryid" class="form-control" id="libraryid" placeholder="enter library id"  >
  </div>
  <div class="form-group">
    <label >Book Name</label>
    <input type="text" name="bname" class="form-control" id="bname" placeholder="enter book name"  >
  </div>
  
   <div class="form-group">
    <label >author Name</label>
    <input type="text" name="aname" class="form-control" id="aname" placeholder="enter author name" >
  </div>
  
   <button type="submit" id="validate" class="btn btn-primary">Submit</button>
  
  
  </form>
  </div><br>
   <form method="get" action="/back">
   <button type="submit" class="btn btn-primary">Back</button>
   </form>
  </body>
  </html>
  