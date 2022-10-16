<%@ page import="com.cen4025.cen4025cassignment7.ToDoList" %><%--
  Created by IntelliJ IDEA.
  User: sturg
  Date: 10/16/2022
  Time: 3:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>CEN 4025C - Assignment 7: Todo List Web Application - Task Added</title>
</head>
<%
    ToDoList list = new ToDoList();
    String task = request.getParameter("addTask");
    list.addTaskWeb(task);
%>
<body>
    <h1>Task Added</h1>
    <br/>
    <table>
        <tbody>
        <tr>
            <td><a href="index.jsp">Click here to return to the todo list</a></td>
        </tr>
        </tbody>
    </table>
</body>
</html>
