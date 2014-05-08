<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<link href="<c:url value="/resources/css/foundation.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/foundation.min.css" />" rel="stylesheet">
<script src="/resources/vendor/modernizr.js"></script>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cellular</title>
</head>
<body>
<div class="container" style="padding-top: 8%">
<form name="f" action="<c:url value='j_spring_security_check'/>" method="POST">
    <fieldset class="large-3 large-centered columns">
        <legend>Login</legend>
        <div class="row">
            <div >
                <label>Username</label>
                <input type='text' name='j_username'/>
            </div>
        </div>
        <div class="row">
            <div>
                <label>Password</label>
                <input type='password' name='j_password'>
            </div>
        </div>
        <div style="text-align: center">
            <input class="medium success button" name="submit" type="submit">
        </div>
    </fieldset>
</form>
</div>
</body>
</html>