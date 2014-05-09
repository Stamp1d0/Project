<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("UTF-8");%>
<%@ include file="layout/empty/header.jsp" %>
<div class="container" style="padding-top: 8%">
        <form:form method="post" action="/addUser" commandName="reg" id="someform">
        <fieldset class="small-3 small-centered columns">
            <c:if test="${not empty error}">
                ${error}
            </c:if>
            <legend>Register</legend>
            <div class="row">
                <div class="name-field">
                    <label>Username
                    <form:input type='text' path="username" id="someinput"/>
                    </label>
                    <small class="error">Name is required</small>
                </div>
            </div>
            <div class="row">
                <div class="password-field">
                    <label>Password
                        <form:input type='password' path="password" id="password"/>
                    </label>
                    <small class="error">Name is required</small>
                </div>
            </div>
            <div class="row">
                <div class="password-confirmation-field">
                    <label>Confirm Password
                        <form:input type='password' path="confirmPassword" required="" data-equalto="password"/>
                    </label>
                    <small class="error">The password did not match</small>
                </div>
            </div>
            <div style="text-align: center">
                    <input class="medium button" type="submit" value="Register"/>
            </div>
            <a href="/login" >Back to login</a>
        </fieldset>
    </form:form>
</div>
<script>
    $("#password").attr('required', '');
    $("#someinput").attr('required', '');
    $("#someform").attr('data-abide', '');
</script>
<%@ include file="layout/empty/footer.jsp" %>
