<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@page pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("UTF-8");%>

<%@ include file="layout/header.jsp" %>
<div class="row">
    <h2>Users Management Screen</h2>
    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th></th>
        </tr>
        </thead>
        <c:forEach items="${userList}" var="usr">
            <tbody>
            <tr>
                <td>${usr.username}</td>
                <td><a href="delete/${usr.id}">delete</a></td>
            </tr>
            </tbody>
        </c:forEach>
    </table>
</div>
<%@ include file="layout/footer.jsp" %>