<%--
  Created by IntelliJ IDEA.
  User: monikamisiewicz
  Date: 2019-10-31
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Jee-School</title>
    <link rel="stylesheet" href="<c:url value="/css/style.css"/> ">
</head>
<body>
<jsp:include page="header.jsp"/>


<div class="row border-bottom border-3">
    <div class="col"><h3 class="color-header text-uppercase">Lista użytkowników grupy</h3></div>
    <div class="col d-flex justify-content-end mb-2"><a href="/groupList"
                                                        class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Powrót</a>
    </div>
</div>

<div class="schedules-content">
    <table class="table border-bottom">
        <thead>
        <tr class="d-flex">
            <th class="col-1">ID</th>
            <th class="col-2">NAZWA UŻYTKOWNIKA</th>
            <th class="col-2">SZCZEGÓŁY UŻYTKOWNIKA</th>
        </tr>
        </thead>
        <tbody class="text-color-lighter">
        <c:forEach var="groupUser" items="${groupUsers}">
            <tr class="d-flex">
                <td class="col-1">${groupUser.id}</td>
                <td class="col-2">${groupUser.userName}</td>
                <td class="col-2"><a href="/userDetails?id=${groupUser.id}">WIĘCEJ</a></td>
                    <%--                linki zzawierające id użytkownika prowadzące do szcegółów użytkownika--%>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


<jsp:include page="footer.jsp"/>
</body>
</html>
