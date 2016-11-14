<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="/resources/log/css/stylelog.css">
<link rel="stylesheet" href="/resources/log/scss/style.css">
<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>

<form:form action="/loginprocessing" method="post" class="login">
    <p>
        <label for="username">Email:</label>
        <input type="text" name="username" id="username" placeholder="name@example.com">
    </p>
    <p>
        <label for="password">Password:</label>
        <input type="password" name="password" id="password" placeholder="Password">
    </p>
    <p class="login-submit">
        <button type="submit" class="login-button">Login</button>
    </p>
</form:form>
<div style="width: auto; height: auto;font-size: 20px;margin-left: 40%; position: inherit;float: left ">
    <a href="/">На головну</a>
</div>