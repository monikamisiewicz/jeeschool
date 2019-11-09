<%--
  Created by IntelliJ IDEA.
  User: monikamisiewicz
  Date: 2019-10-31
  Time: 14:19
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
    <div class="col"><h3 class="color-header text-uppercase">Lista grup</h3></div>
    <div class="col d-flex justify-content-end mb-2"><a href="/"
                                                        class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Powrót</a>
    </div>
</div>

<div class="schedules-content">
    <table class="table border-bottom">
        <thead>
        <tr class="d-flex">
            <th class="col-1">ID</th>
            <th class="col-2">NAZWA</th>
            <th class="col-2">WIĘCEJ</th>
        </tr>
        </thead>
        <tbody class="text-color-lighter">
        <c:forEach var="userGroup" items="${groupList}">
            <tr class="d-flex">
                <td class="col-2"><a href="/groupUsers?id=${userGroup.id}">${userGroup.id}</a></td>
                <td class="col-2">${userGroup.name}</td>
                    <%--                linki zzawierające id grupy prowadzące do listy użytkowników danej grupy--%>
                <td class="col-2 d-flex align-items-center justify-content-center flex-wrap">
                        <%--                    <a href="#" class="btn btn-danger rounded-0 text-light m-1">Usuń</a>--%>
                        <%--                    <a href="/app/plan/details?id=${plan.id}"--%>
                        <%--                       class="btn btn-info rounded-0 text-light m-1">Szczegóły</a>--%>


                        <%--    link do edycji danej grupy:--%>
                    <a href="/addGroup"
                       class="btn btn-warning rounded-0 text-light m-1">Dodaj</a>
                </td>
                <td>
                    <a href="/editGroup?id=${userGroup.id}"
                       class="btn btn-warning rounded-0 text-light m-1">Edytuj</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


<jsp:include page="footer.jsp"/>
</body>
</html>
