<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>All meals</title>
</head>
<body>

<section>
    <table border="1" cellpadding="8" cellspacing="0">
        <tr>
            <th>Date</th>
            <th>Description</th>
            <th>Calories</th>
            <th></th>
            <th></th>
        </tr>
        <c:forEach var="meal" items="${meals}">
            <jsp:useBean id="meal" type="ru.javawebinar.topjava.model.MealTo"/>
            <tr style="color:<c:out value="${meal.excess ? 'green': 'red'}"/> ">
                <td>${meal.dateTime.format( DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm"))}</td>
                <td>${meal.description}</td>
                <td>${meal.calories}</td>
                <td><a href="">Update</a></td>
                <td><a href="">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</section>
</body>
</html>
