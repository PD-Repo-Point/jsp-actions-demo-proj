<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Include Action Demo</title>
</head>
<body>
<%
    System.out.println("Before JSP include Action .... ");
%>
    <h1>JSP Include Action Demo</h1>
    <jsp:include page="being_included.jsp">
        <jsp:param name="programme" value="DevOps Training" />
        <jsp:param name="company" value="Prodevans" />
    </jsp:include>
<%

    System.out.println("After JSP include Action .... ");
%>
</body>
</html>