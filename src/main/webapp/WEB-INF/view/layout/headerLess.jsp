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
            <li><a id="lang" onclick="$.ajax({type: 'post',url: '/changeLocale',success: location.reload()});">${locale}</a></li>
        </ul>
    </section>
</nav>
<script>

</script>