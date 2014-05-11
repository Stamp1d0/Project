<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ include file="empty/header.jsp" %>
<nav class="top-bar" data-topbar>
    <ul class="title-area">
        <li class="name">
            <h1><a>Life</a></h1>
        </li>
        <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
        <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
    </ul>

    <section class="top-bar-section">
        <!-- Right Nav Section -->
        <ul class="right">
            <li>
                <a onclick="changeColor()"><i class="foundicon-view-mode"></i></a>
            </li>
            <li><a id="lang"
                   onclick="$.ajax({type: 'post',url: '/changeLocale',success: location.reload()});">${locale}</a></li>
            <li class="active"><a>${username}</a></li>
            <li><a href="<c:url value='j_spring_security_logout'/>"><spring:message code="label.logout"/></a></li>
        </ul>
        <!-- Left Nav Section -->
        <ul class="left">
            <li><a href="/life"><spring:message code="menu.main"/></a></li>
            <li><a href="/messages"><spring:message code="label.messages"/></a></li>
            <c:if test="${isAdmin}">
                <li><a href="/list"><spring:message code="label.adminPlace"/></a></li>
            </c:if>
        </ul>
    </section>
</nav>

<script>
    function changeColor() {
        var cookie = getCookie("colorCookie");
        if (cookie=="light")
            document.cookie="colorCookie=dark"
        else
            document.cookie="colorCookie=light"
        location.reload();
    }
    function getCookie(name) {
        var value = "; " + document.cookie;
        var parts = value.split("; " + name + "=");
        if (parts.length == 2) return parts.pop().split(";").shift();
    }
</script>