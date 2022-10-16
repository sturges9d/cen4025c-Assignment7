<%@ page import="com.cen4025.cen4025cassignment7.ToDoList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CEN 4025C - Assignment 7: Todo List Web Application</title>
</head>
<body>
    <h1>CEN 4025C - Assignment 7: Todo List Web Application</h1>
    <br/>
    <table border="1">
        <tr>
            <th>No.</th>
            <th>Task ID</th>
            <th>Task</th>
        </tr>
        <%
            ToDoList list = new ToDoList();
            list.setTaskIDsList();
            list.setTasksList();
            for (int i = 0; i < list.toDoList.size(); i++) {
        %>
        <tr>
            <td><%=i+1%></td>
            <td><%=list.taskIDs.get(i)%></td>
            <td><%=list.toDoList.get(i)%></td>
        </tr>
        <%
            } // End of for loop.
        %>
    </table>
    <br/>
    <form name="removeForm" action="add.jsp" method="post">
        <table>
            <tbody>
            <tr>
                <td>Type the task to add:</td>
            </tr>
            <tr>
                <td><input type="text" name="addTask" value="" size="50" /></td>
                <td><input type="submit" name="submitAddTask" value="Submit"></td>
                <td><input type="reset" name="addTaskClear" value="Clear"></td>
            </tr>
            </tbody>
        </table>
    </form>
    <br/>
    <form name="removeForm" action="remove.jsp" method="post">
        <table>
            <tbody>
            <tr>
                <td>Enter the Task ID of the task you wish to remove:</td>
            </tr>
            <tr>
                <td><input type="text" name="removeTask" value="" size="50"></td>
                <td><input type="submit" name="submitRemoveTask" value="Submit"></td>
                <td><input type="reset" name="removeTaskClear" value="Clear"></td>
            </tr>
            </tbody>
        </table>
    </form>
</body>
</html>