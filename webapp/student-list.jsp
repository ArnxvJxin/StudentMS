<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Management System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-5">
    <div class="row">
        <div class="container">
            <h3 class="text-center">Student Management System</h3>
            <hr>
            <div class="container text-left mb-3">
                <a href="new" class="btn btn-primary">Add New Student</a>
            </div>
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Course</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="student" items="${listStudent}">
                        <tr>
                            <td><c:out value="${student.id}" /></td>
                            <td><c:out value="${student.name}" /></td>
                            <td><c:out value="${student.email}" /></td>
                            <td><c:out value="${student.course}" /></td>
                            <td>
                                <a href="edit?id=<c:out value='${student.id}' />" class="btn btn-sm btn-warning">Edit</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="delete?id=<c:out value='${student.id}' />" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>