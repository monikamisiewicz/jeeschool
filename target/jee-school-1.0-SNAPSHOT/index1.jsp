<%--
wyświetl podstawowe dane zgodne z prototypem w wierszach tabeli html.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>INDEX</title>
    <link rel="stylesheet" href="<c:url value="/css/style.css"/> ">
</head>
<br>
<jsp:include page="header.jsp"/>

<div class="row border-bottom border-3">
    <div class="col"><h3 class="color-header text-uppercase">Ostatnie rozwiązania</h3></div>
</div>

<table>
    <tr>
        <td>Opis</td>
        <td>Data</td>
        <td>Więcej</td>
    </tr>

    <c:forEach var="solution" items="${recent}">
        <tr>
            <td>${solution.description}</td>
            <td>${solution.created}</td>
            <td><a href="/solutionDetails?id=${solution.id}">Szczegóły rozwiązania</a></td>
        </tr>
    </c:forEach>
</table>

some text <br/>
<jsp:include page="footer.jsp"/>
</body>
</html>
