<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@page pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("UTF-8");%>
<%@ include file="layout/empty/header.jsp" %>
<div class="container" style="padding-top: 8%">
    <form method="post" action="<c:url value='/addUser'/>" commandName="reg" data-abide>
        <fieldset class="large-3 large-centered columns">
            <legend>Register</legend>
            <div class="row">
                <div class="name-field">
                    <label>Username
                    <input type='text' path="username" required/>
                    </label>
                    <small class="error">Name is required</small>
                </div>
            </div>
            <div class="row">
                <div class="password-field">
                    <label>Password
                        <input type='password' path="password" id="password" required />
                    </label>
                    <small class="error">Name is required</small>
                </div>
            </div>
            <div class="row">
                <div class="password-confirmation-field">
                    <label>Confirm Password
                        <input type='password' path="confirmPassword" required data-equalto="password"/>
                    </label>
                    <small class="error">The password did not match</small>
                </div>
            </div>
            <div style="text-align: center">
                <input class="medium success button" type="submit" value="register"/>
            </div>
        </fieldset>
    </form>
</div>
<%@ include file="layout/empty/footer.jsp" %>
