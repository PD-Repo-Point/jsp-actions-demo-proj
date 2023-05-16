## JSP Actions

- Use constructs in XML syntax to control the behavior of the servlet engine.
- JSP Standard Actions Syntax

  <jsp: action_name attribute = "value"/>
  
## JSP Actions Tags

![image](https://github.com/PD-Repo-Point/jsp-actions-demo-proj/assets/104901724/030ddf42-84d5-4072-8228-b506b77108d1)

# <jsp:forward> Action

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


# <jsp:include> Action

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









    

