<%--
  Created by IntelliJ IDEA.
  User: monikamisiewicz
  Date: 2019-10-31
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Jee-School</title>
    <link rel="stylesheet" href="<c:url value="/css/style.css"/> ">
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="row border-bottom border-3">
    <div class="col"><h3 class="color-header text-uppercase">Szczegóły użytkownika</h3></div>
    <div class="col d-flex justify-content-end mb-2"><a href="/groupUsers?id=${user.groupId}"
                                                        class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Powrót</a>
    </div>
</div>


<table class="table borderless">
    <tbody>
    <tr class="d-flex">
        <th scope="row" class="col-2">Id</th>
        <td class="col-7"> ${user.id} </td>
    </tr>
    <tr class="d-flex">
        <th scope="row" class="col-2">Nazwa użytkownika</th>
        <td class="col-7">${user.userName}</td>
    </tr>
    <tr class="d-flex">
        <th scope="row" class="col-2">Email</th>
        <td class="col-7">${user.email} </td>
    </tr>
    <tr class="d-flex">
        <th scope="row" class="col-2">Hasło</th>
        <td class="col-7">${user.password} </td>
    </tr>
    <tr class="d-flex">
        <th scope="row" class="col-2">Id grupy</th>
        <td class="col-7">${user.groupId} </td>
    </tr>
    </tbody>
</table>

<div class="row d-flex">
    <div class="col-5 border-bottom border-3"><h3 class="text-uppercase">Lista rozwiązań użytkownika</h3>
    </div>
    <div class="col-2"></div>
</div>

<div class="schedules-content">
    <table class="table border-bottom">
        <thead>
        <tr class="d-flex">
            <th class="col-1">ID</th>
            <th class="col-2">DATA UTWORZENIA</th>
            <th class="col-2">DATA AKTUALIZACJI</th>
            <th class="col-2">OPIS</th>
            <th class="col-2">ID ĆWICZENIA</th>
            <th class="col-2">KOMENTARZ</th>
            <th class="col-2">OCENA</th>
        </tr>
        </thead>
        <tbody class="text-color-lighter">
        <c:forEach var="userSolution" items="${userSolutions}">
            <tr class="d-flex">
                <td class="col-1">${userSolution.id}</td>
                <td class="col-2">${userSolution.created}</td>
                <td class="col-2">${userSolution.updated}</td>
                <td class="col-2">${userSolution.description}</td>
                <td class="col-2">${userSolution.exerciseId}</td>
                <td class="col-2">${userSolution.comment}</td>
                <td class="col-2">${userSolution.grade}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<jsp:include page="footer.jsp"/>

</body>
</html>
