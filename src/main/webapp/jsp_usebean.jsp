<%@ page import="model.Person" %>
<%@ page import="model.Employee" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>The jsp:useBean Action</title>
</head>
<body>
<p>
<%--
Bean ---> bean
getFatherName() ---> fatherName
--%>
    1. Locate an existing Bean in a page, session, request or application scope.
</p>
<%
    Person p = new Person("Tina","Blake");
    request.setAttribute("person",p);// Scope - Request Scope

    //session.setAttribute("");// Scope - Session Scope
    //application.setAttribute(""); // Scope - Application Scope
%>

<jsp:useBean id= "person" scope= "request" class= "model.Person"> </jsp:useBean>
<jsp:getProperty name="person" property="firstName"/>
<jsp:getProperty name="person" property="lastName"/>

<p>
    2. Create a Bean
</p>
<jsp:useBean id="person2" type="model.Person" class="model.Employee"></jsp:useBean>
<jsp:getProperty name="person2" property="firstName"/>
<jsp:getProperty name="person2" property="lastName"/>
<jsp:getProperty name="person2" property="salary"/>

<p>
    3. Create a Bean - type and beanName
</p>
<jsp:useBean id="person3" type="model.Employee" beanName="model.Employee"></jsp:useBean>
<jsp:getProperty name="person3" property="firstName"/>
<jsp:getProperty name="person3" property="lastName"/>
<jsp:getProperty name="person3" property="salary"/>

<p>
    4. Person Form - 1
</p>
<jsp:useBean id="person4" class="model.Person">
    <jsp:setProperty name="person4" property="*"/>
</jsp:useBean>
<jsp:getProperty name="person4" property="firstName"/>
<jsp:getProperty name="person4" property="lastName"/>
<p>
    5. Person Form - 2
</p>

<jsp:setProperty name="person4" property="firstName" param="first"/>
<jsp:setProperty name="person4" property="lastName" param="last"/>

<jsp:getProperty name="person4" property="firstName"/>
<jsp:getProperty name="person4" property="lastName"/>




</body>
</html>