<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@page pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("UTF-8");%>
<%@ include file="layout/empty/header.jsp" %>
<div class="container" style="padding-top: 8%">
    <form name="f" action="<c:url value='j_spring_security_check'/>" method="POST" data-abide>
        <fieldset class="large-3 large-centered columns">
            <legend>Login</legend>
            <c:if test="${not empty param.error}">
                <div data-alert class="alert-box">
                    ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
                    <a href="#" class="close">&times;</a>
                </div>
            </c:if>
            <div class="row">
                <div class="name-field">
                    <label>Username
                        <input type='text' name='j_username' required/>
                    </label>
                    <small class="error">Name is required</small>
                </div>
            </div>
            <div class="row">
                <div class="name-field">
                    <label>Password
                        <input type='password' name='j_password' required/>
                    </label>
                    <small class="error">Password is required</small>
                </div>
            </div>
            <div>
                <input type="checkbox" name="_spring_security_remember_me" />
                <label>Remember me </label>
            </div>
            <div style="text-align: center">
                <input class="medium button" name="submit" type="submit" value="Войти">
            </div>
            <a href="/register"><spring:message code="label.gotoregister"/></a>
        </fieldset>
    </form>
</div>
<%@ include file="layout/footer.jsp" %>