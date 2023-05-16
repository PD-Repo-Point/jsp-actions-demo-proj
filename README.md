# JSP Actions

- Use constructs in XML syntax to control the behavior of the servlet engine.
- JSP Standard Actions Syntax

  <jsp: action_name attribute = "value"/>
  
# JSP Actions Tags

![image](https://github.com/PD-Repo-Point/jsp-actions-demo-proj/assets/104901724/030ddf42-84d5-4072-8228-b506b77108d1)

## <jsp:forward> Action

-  Terminates the action of the current page
-  Forwards the request to another resource
    • static page, another JSP or Java Servlet
    
    
Syntax :

*<jsp:forward page = "Relative URL" />*

*<jsp:forward page="Relative URL">* 

*<jsp:param name=" " value=" "/>* 

... 

*<jsp:param ... />*

*</jsp:forward>*


## <jsp:include> Action

- Inserts files at the time the page is being requested.

Syntax : 

*<jsp:include page="relative URL | <%= expression %>" flush="true" />*

*<jsp:include page="relativeURL | <%= expression %>">*

*<jsp:param name="parametername" value="parametervalue | <%=expression%>" />*

*</jsp:include>*

![image](https://github.com/PD-Repo-Point/jsp-actions-demo-proj/assets/104901724/f2c33705-b12f-4f73-8f48-be6e6512b75e)

**Behaviors of JSP Include Action :**

When the servlet container encounters a <jsp:include> action, it requests the included page then adds the 
response into the current JSP page, where the <jsp:include> action is declared.

**Difference between jsp include directive and include action :**

![image](https://github.com/PD-Repo-Point/jsp-actions-demo-proj/assets/104901724/46c9dbe6-696a-4b80-9f8d-ffd8cca63cf8)


**Rules of JSP Include Action :**

•The included page cannot change response status code or set headers. The servlet container will 
ignore those attempts.

•The servlet container includes response (not source code) of the included page.

•Response of the included page is inserted in to the current JSP page at the position of 
the <jsp:include> action (position-sensitive).

•If URL of the included page starts with a slash (/), the servlet container will interpret the page as relative to the web application context path; if the URL starts without a slash, the container will treat the page as relative to the current JSP page.

•Value of the page URL can be a runtime expression that evaluates to a String.

•The servlet container will throw an exception if it could not find the included page


**References :**
•https://www.codejava.net/java-ee/jsp/jsp-include-standard-action-examples







    

