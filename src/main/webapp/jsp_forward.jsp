<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Forward</title>
</head>
<body>
    <%
        System.out.println("Before JSP forward Action .... ");
    %>
    <h1>JSP FORWARD ACTION<h1>
    <jsp:forward page="result.jsp">
        <jsp:param name="programme" value="Java Dev Training"/>
        <jsp:param name="company" value="Prodevans"/>
    </jsp:forward>

    <%
        System.out.println("After JSP forward Action .... ");
    %>
</body>
</html>