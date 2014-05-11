<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("UTF-8");%>
<%@ include file="layout/headerLess.jsp" %>
<div class="container" style="padding-top: 8%">
    <form:form method="post" action="/addUser" commandName="reg" id="someform">
        <fieldset class="small-3 small-centered columns">
            <c:if test="${not empty error}">
                <div data-alert class="alert-box">
                        ${error}
                    <a href="#" class="close">&times;</a>
                </div>
            </c:if>
            <legend><spring:message code="register.reg"/></legend>
            <div class="row">
                <div class="name-field">
                    <label><spring:message code="login.name"/>
                        <form:input type='text' path="username" id="someinput"/>
                    </label>
                    <small class="error"><spring:message code="login.reqname"/></small>
                </div>
            </div>
            <div class="row">
                <div class="password-field">
                    <label><spring:message code="login.pass"/>
                        <form:input type='password' path="password" id="password"/>
                    </label>
                    <small class="error"><spring:message code="login.reqpass"/></small>
                </div>
            </div>
            <div class="row">
                <div class="password-confirmation-field">
                    <label><spring:message code="register.confirm"/>
                        <form:input type='password' path="confirmPassword" required="" data-equalto="password"/>
                    </label>
                    <small class="error"><spring:message code="register.didnomatch"/></small>
                </div>
            </div>
            <div style="text-align: center">
                <input class="medium button" type="submit" value="<spring:message code="register.reg"/>"/>
            </div>
            <a href="/login"><spring:message code="register.back"/></a>
        </fieldset>
    </form:form>
</div>
<script>
    $("#password").attr('required', '');
    $("#someinput").attr('required', '');
    $("#someform").attr('data-abide', '');
</script>
<%@ include file="layout/footer.jsp" %>
