<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.domain.Photo" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Events List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-success bg-success fixed-tops pb-0.1">
        <div class="container-fluid">
           
              <a class="navbar-brand" href="#">
                <img class="ml-1" src="/images/tut_logo.png" alt="tut logo" width="400" height="80">
              </a>
            
          </div>
      </nav>
<h2>Sponsers</h2>

<table>
    <thead>
        <tr>
            <th>Full Name</th>
            <th>Email Address</th>
			<th>Phone Number</th>
            <th>Organisation</th>
            <th>Message</th>
            <!-- Add more table headers as needed -->
        </tr>
    </thead>
    <tbody>
        <% 
            List<Photo> events = (List<Photo>) request.getAttribute("events");
            if (events != null && !events.isEmpty()) {
                for (Photo event : events) {

                  
        %>
        <tr>
            <td><%= event.getFullName() %></td>
            <td><%= event.getAddress() %></td>
            <td><%= event. getCellNumber()%></td>
            <td><%= event.getOrg() %></td>
			<td><%= event.getMsg() %></td>
            <!-- Add more table cells with corresponding event properties -->
        </tr>
        <% 
                }
            } else { 
        %>
        <tr>
            <td colspan="3">No sponser found</td>
            <td></td>
          
        </tr>
        <% } %>
    </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

</body>
</html>
