<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

</head>
<body
background="https://d4804za1f1gw.cloudfront.net/wp-content/uploads/sites/50/2018/11/06110356/hero.jpg"  >
<form action="/displaystudent" method="get">

 <table border="2" width="70%" cellpadding="2" id="t1">
 <thead>
 <tr>
<th>Student Id</th>
<th>Student Name</th>
<th>Student Address</th>
<th>LibraryId</th>
</tr>
</thead>
<tbody>
			<c:forEach var="students" items="${students}">
				<tr>
				     <td>${students.studentid}</td>
					<td>${students.studentname}</td>
					<td>${students.studentaddress}</td>
					<td>${students.libraryid}</td>
					
				</tr>
			</c:forEach>
			</tbody>
		</table>
		 <h1>${message}</h1>
		 
		
		</form>

</body>
</html>