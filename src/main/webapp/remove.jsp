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
    <title>CEN 4025C - Assignment 7: Todo List Web Application - Task Removed.</title>
</head>
<%
    ToDoList list = new ToDoList();
    String taskIdToRemove = request.getParameter("removeTask");
    taskIdToRemove = taskIdToRemove.trim();
    int taskID = Integer.parseInt(taskIdToRemove);
    list.removeTaskWeb(taskID);
%>
<body>
    <h1>Task Removed</h1>
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
