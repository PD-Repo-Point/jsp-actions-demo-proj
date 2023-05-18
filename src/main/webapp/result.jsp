<html>
    <head>
        <title>Result</title>
    </head>
    <body>
        <h1>This is a Result Page</h1>
        <p>
            <%
                out.println(request.getParameter("programme"));
                out.println(request.getParameter("company"));
            %>
        </p>
        <p>
            Programme : <%= request.getParameter("programme")%> <br/>
            Company : <%= request.getParameter("company")%>
        </p>
        <p>
            ${param["programme"]} ----- ${param["company"]}
        </p>
    </body>
</html>