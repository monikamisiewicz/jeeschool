<%--
  Created by IntelliJ IDEA.
  User: monikamisiewicz
  Date: 2019-10-31
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jee-School</title>
    <link rel="stylesheet" href="<c:url value="/css/style.css"/> ">
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="row border-bottom border-3">
    <div class="col"><h3 class="color-header text-uppercase">Lista grup</h3></div>
    <div class="col d-flex justify-content-end mb-2"><a href="/groupList"
                                                        class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Powrót</a>
    </div>
</div>

<form action="/editGroup?id=${userGroup.id}" method="post">
    <div class="row border-bottom border-3 p-1 m-1">
        <div class="col noPadding">
            <h3 class="color-header text-uppercase">EDYTUJ GRUPĘ</h3>
        </div>
        <div class="col d-flex justify-content-end mb-2">
            <input type="hidden" name="id" value="${userGroup.id}">
            <button type="submit" class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Zapisz</button>
        </div>
    </div>

    <div class="schedules-content">

        <div>
            <label>Id grupy
                <input type="text" name="id" value="${userGroup.id}">
            </label>

        </div>
        <div>
            <label>Nazwa grupy
                <input type="text" name="name" placeholder="${userGroup.name}">
            </label>

        </div>
    </div>
</form>


<jsp:include page="footer.jsp"/>
</body>
</html>
