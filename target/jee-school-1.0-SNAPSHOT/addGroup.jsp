<%--
  Created by IntelliJ IDEA.
  User: monikamisiewicz
  Date: 2019-10-31
  Time: 21:07
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
    <div class="col d-flex justify-content-end mb-2"><a href="/groupList"
                                                        class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Powrót</a>
    </div>
</div>

<div class="m-4 p-3 width-medium">
    <div class="dashboard-content border-dashed p-3 m-4 view-height">
        <!-- action, method -->
        <form action="/addGroup" method="post">
            <div class="row border-bottom border-3 p-1 m-1">
                <div class="col noPadding">
                    <h3 class="color-header text-uppercase">NOWA GRUPA</h3>
                </div>
                <div class="col d-flex justify-content-end mb-2 noPadding">
                    <button type="submit" class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Zapisz</button>
                </div>
            </div>

            <div>

                <label>Nazwa grupy
                    <input type="text" name="name" placeholder="Nazwa grupy">
                </label>

            </div>
        </form>
    </div>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>
