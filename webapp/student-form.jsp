<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Management System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-5">
    <div class="card col-md-6 offset-md-3">
        <div class="card-body">
            <c:if test="${student != null}">
                <form action="update" method="post">
            </c:if>
            <c:if test="${student == null}">
                <form action="insert" method="post">
            </c:if>

            <caption>
                <h2>
                    <c:if test="${student != null}">Edit Student</c:if>
                    <c:if test="${student == null}">Add New Student</c:if>
                </h2>
            </caption>

            <c:if test="${student != null}">
                <input type="hidden" name="id" value="<c:out value='${student.id}' />" />
            </c:if>

            <div class="mb-3">
                <label class="form-label">Student Name</label>
                <input type="text" value="<c:out value='${student.name}'/>" class="form-control" name="name" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" value="<c:out value='${student.email}'/>" class="form-control" name="email" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Course</label>
                <input type="text" value="<c:out value='${student.course}'/>" class="form-control" name="course" required>
            </div>

            <button type="submit" class="btn btn-success">Save</button>
            <a href="list" class="btn btn-secondary">Cancel</a>
            </form>
        </div>
    </div>
</body>
</html>