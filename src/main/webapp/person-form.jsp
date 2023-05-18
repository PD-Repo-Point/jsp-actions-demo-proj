<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Form</title>
</head>
<body>
<p>
    Person Form - 1
</p>
<form action="jsp_usebean.jsp" method="post">
    First Name: <input name="firstName"> <br/>
    Last Name: <input name="lastName"> <br/>
    <input type="submit" value="Submit">
</form>
<hr/>
<p>
    Person Form - 2
</p>
<form action="jsp_usebean.jsp" method="post">
    First Name: <input name="first"> <br/>
    Last Name: <input name="last"> <br/>
    <input type="submit" value="Submit">
</form>
</body>
</html>