<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<link href="<c:url value="/resources/css/foundation.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/foundation.min.css" />" rel="stylesheet">
<script src="/resources/vendor/modernizr.js"></script>
<script src="/resources/vendor/jquery.js"></script>
<script src="/resources/foundation/js/foundation/foundation.js"></script>
<script src="/resources/foundation/js/foundation/foundation.topbar.js"></script>
<script src="/resources/foundation/js/foundation/foundation.dropdown.js"></script>
<script>
    $(document).foundation();
</script>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Life</title>
</head>
<body>
<nav class="top-bar" data-topbar>
    <ul class="title-area">
        <li class="name">
            <h1><a>Life</a>></h1>
        </li>
        <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
        <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
    </ul>

    <section class="top-bar-section">
        <!-- Right Nav Section -->
        <ul class="right">
            <li class="has-dropdown">
                <a href="#">Language</a>
                <ul class="dropdown">
                    <li><a href="?lang=en">en</a></li>

                </ul>
            </li>
            <li class="active"><a>User</a></li>
            <li><a href="<c:url value='j_spring_security_logout'/>"><spring:message code="label.logout"/></a></li>
        </ul>

        <!-- Left Nav Section -->
        <ul class="left">
            <li><a href="/life"><spring:message code="label.cellular"/></a></li>
            <li><a href="/list"><spring:message code="label.messages"/></a></li>
        </ul>
    </section>
</nav>