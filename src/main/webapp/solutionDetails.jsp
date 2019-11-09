<%--
  Created by IntelliJ IDEA.
  User: monikamisiewicz
  Date: 2019-10-31
  Time: 09:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Jee-school</title>
    <link rel="stylesheet" href="<c:url value="/css/style.css"/> ">
</head>

<body>
<jsp:include page="header.jsp"/>

<div class="row border-bottom border-3">
    <div class="col"><h3 class="color-header text-uppercase">Szczegóły rozwiązania</h3></div>
    <div class="col d-flex justify-content-end mb-2"><a href="/"
                                                        class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Powrót</a>
    </div>
</div>


<table class="table borderless">
    <tbody>
    <tr class="d-flex">
        <th scope="row" class="col-2">Data utworzenia</th>
        <td class="col-7"> ${solution.created} </td>
    </tr>
    <tr class="d-flex">
        <th scope="row" class="col-2">Data aktualizacji</th>
        <td class="col-7">${solution.updated}</td>
    </tr>
    <tr class="d-flex">
        <th scope="row" class="col-2">Opis</th>
        <td class="col-7">${solution.description} </td>
    </tr>
    <tr class="d-flex">
        <th scope="row" class="col-2">Komentarz</th>
        <td class="col-7">${solution.comment} </td>
    </tr>
    <tr class="d-flex">
        <th scope="row" class="col-2">Ocena</th>
        <td class="col-7">${solution.grade} </td>
    </tr>
    <tr class="d-flex">
        <th scope="row" class="col-2">Id ćwiczenia</th>
        <td class="col-7">${solution.exerciseId} </td>
    </tr>
    <tr class="d-flex">
        <th scope="row" class="col-2">Id użytkownika</th>
        <td class="col-7">${solution.userId} </td>
    </tr>
    </tbody>
</table>


<jsp:include page="footer.jsp"/>
</body>
</html>
