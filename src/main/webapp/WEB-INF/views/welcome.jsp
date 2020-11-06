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
 
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
   
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
   
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 10px;
      background-color: #f1f1f1;
      height: 100%;
    }
   
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
   
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;}
    }
    img {
  opacity: 0.5;
  filter: alpha(opacity=50); /* For IE8 and earlier */
}
  </style>
 </head>
 
 <body
 background="https://media.istockphoto.com/photos/book-and-computer-technology-in-library-picture-id899906850">
 
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
     
      <div style="text-align: center;">
        <h1 style="color:white;">
John'S Library</h1>
       </div>
     <div>
      <ul class="nav navbar-nav navbar-right">
    
                    <li>
                       <a href="/issue"> <button type="button" class="btn btn-primary" >Login</button></a>
                    </li>
                </ul>
                </div>
      
    </div>
  </div>
</nav>

 
<div class="container-fluid text-center">   
  <div class="row content">
    <div class="col-sm-2 sidenav">
     <div class="col-sm-8 text-left">
      
        <p><a href="/addlibrary">Library Registration</a></p>
        <p><a href="/addbook">Book Registration</a></p>
        <p><a href="/addstudent">Student Registration</a></p>
        <p><a href="/displaylibrary">Display Library Details</a></p>
        <p><a href="/displaybook">Display Book Details</a></p>
        <p><a href="/displaystudent">Display Student Details</a></p>
         <p><a href="/issue">Issue Books</a></p>
          <p><a href="/returnbook">Return Books</a></p>
    </div>
    
    </div>
    </div>
    </div>
  
 </body>
 
 </html>