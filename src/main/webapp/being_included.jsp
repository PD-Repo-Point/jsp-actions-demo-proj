<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>This Page is included inside jsp_include.jsp</title>
</head>
<body>

<%
    System.out.println("being_include.jsp is executed.........");
%>
<p>
    ${param.programme} ---- ${param.company}
</p>

</body>
</html>