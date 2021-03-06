<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<h1 style="text-align: center">THIS IS LOGIN PAGE</h1>
	<c:url value="/login" var="loginUrl"/>  
<form action="${loginUrl}" method="post">         
    <c:if test="${param.error != null}">          
        <p>  
            Invalid username and password.  
        </p>  
    </c:if>  
    <c:if test="${param.logout != null}">         
        <p>  
            You have been logged out.  
        </p>  
    </c:if>  
    <p>  
        <label for="username">Username</label>  
        <input type="text" id="username" name="username"/>      
    </p>  
    <p>  
        <label for="password">Password</label>  
        <input type="password" id="password" name="password"/>      
    </p>  
    <input type="hidden"                          
        name="${_csrf.parameterName}"  
        value="${_csrf.token}"/>  
    <button type="submit" class="btn">Log in</button>  
</form>  
</body>
</html>