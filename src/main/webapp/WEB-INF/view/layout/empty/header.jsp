<!doctype html>
<%@page pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<link href="<c:url value="/resources/css/foundation.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/foundation.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/accessibility_foundicons.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/vendor/modernizr.js" />"></script>
<script src="<c:url value="/resources/js/vendor/jquery.js"/>"></script>
<script src="<c:url value="/resources/js/foundation/foundation.js"/>"></script>
<script src="<c:url value="/resources/js/foundation/foundation.topbar.js"/>"></script>
<script src="<c:url value="/resources/js/foundation/foundation.dropdown.js"/>"></script>
<script src="<c:url value="/resources/js/foundation/foundation.abide.js"/>"></script>
<script src="<c:url value="/resources/js/foundation/foundation.alert.js"/>"></script>
<script>
    $( document ).ready(function() {
        $(document).foundation();
    });
</script>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Life</title>
</head>
<body>

