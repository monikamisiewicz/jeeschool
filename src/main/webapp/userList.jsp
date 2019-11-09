<%--
  Created by IntelliJ IDEA.
  User: monikamisiewicz
  Date: 2019-11-01
  Time: 21:39
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
    <div class="col"><h3 class="color-header text-uppercase">Lista użytkowników</h3></div>
    <div class="col d-flex justify-content-end mb-2"><a href="/panelAdmin"
                                                        class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Powrót</a>
    </div>
</div>

<div class="schedules-content">
    <table class="table border-bottom">
        <thead>
        <tr class="d-flex">
            <th class="col-1">ID</th>
            <th class="col-2">NAZWA UŻYTKOWNIKA</th>
            <th class="col-2">EMAIL</th>
            <th class="col-2">ID GRUPY</th>
        </tr>
        </thead>
        <tbody class="text-color-lighter">
        <c:forEach var="user" items="${userList}">
            <tr class="d-flex">
                <td class="col-2">${user.id}</td>
                <td class="col-2">${user.userName}</td>
                <td class="col-2">${user.email}</td>
                <td class="col-2">${user.groupId}</td>

                <td>
                    <a href="/addUser"
                       class="btn btn-warning rounded-0 text-light m-1">Dodaj</a>
                </td>
                <td>
                    <a href="/editUser?id=${user.id}"
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
