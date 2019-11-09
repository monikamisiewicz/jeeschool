<%--
  Created by IntelliJ IDEA.
  User: monikamisiewicz
  Date: 2019-10-31
  Time: 20:45
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
    <div class="col"><h3 class="color-header text-uppercase">Administrator</h3></div>
    <div class="col d-flex justify-content-end mb-2"><a href="/"
                                                        class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Powrót</a>
    </div>
</div>

<div>
    <a href="/solutionList">Lista zadań</a><br/>
    <a href="/groupList">Lista grup użytkowników</a><br/>
    <a href="/userList">Lista użytkowników</a><br/>
</div>



<jsp:include page="footer.jsp"/>
</body>
</html>
