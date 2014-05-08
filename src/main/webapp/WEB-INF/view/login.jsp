<%@ include file="layout/empty/header.jsp" %>
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
        <a href="/register"><spring:message code="label.gotoregister"/></a>
    </fieldset>
</form>
</div>
<%@ include file="layout/empty/footer.jsp" %>