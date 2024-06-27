<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.domain.Event" %>
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
<h2>Events List</h2>

<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Description</th>
            <th>Date</th>
            <!-- Add more table headers as needed -->
        </tr>
    </thead>
    <tbody>
        <% 
            List<Event> events = (List<Event>) request.getAttribute("events");
            if (events != null && !events.isEmpty()) {
                for (Event event : events) {
        %>
        <tr>
            <td><%= event.getName() %></td>
            <td><%= event.getDescription() %></td>
            <td><%= event.getAddress() %></td>
			
            <!-- Add more table cells with corresponding event properties -->
        </tr>
        <% 
                }
            } else { 
        %>
        <tr>
            <td colspan="3">No events found</td>
        </tr>
        <% } %>
    </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

</body>
</html>