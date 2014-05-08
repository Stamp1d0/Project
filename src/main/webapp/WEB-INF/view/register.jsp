<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<h3>Register</h3>
<form:form method="post" action="addUser" commandName="user">
    <table>
        <tr>
            <td><form:input type='text' path="username" /></td>
        </tr>
        <tr>
            <td><form:input type='password' path="password" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="register"/>
            </td>
        </tr>
    </table>
</form:form>

</body>
</html>
