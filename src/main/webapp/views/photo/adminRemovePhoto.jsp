<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Ярослав
  Date: 14.11.2016
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div style=" height: 90%;">

    <div style="font-size: 16px; text-align: center; width: 300px; height: 126px; background-color: #999999; color: white; float: inherit;position: absolute;left:36%; margin: 22px; border: 3px double black; border-radius: 0px;">
        <form:form action="/adminRemovePhoto" method="post">
            <p><input name="name" type="text" placeholder="Name photo"></p>
            <p><input type="submit" value="Видалити"></p>
        </form:form>
    </div>
</div>
