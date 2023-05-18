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

•The included page cannot change response status code or set headers. The servlet container will ignore those attempts.

•The servlet container includes response (not source code) of the included page.

•Response of the included page is inserted in to the current JSP page at the position of the *<jsp:include>* action (position-sensitive).

•If URL of the included page starts with a slash (/), the servlet container will interpret the page as relative to the web application context path; if the URL starts without a slash, the container will treat the page as relative to the current JSP page.

•Value of the page URL can be a runtime expression that evaluates to a String.

•The servlet container will throw an exception if it could not find the included page

## JavaBean

A JavaBean is a Java class that should follow the following conventions:

• It should have a no-arg constructor.

• It should be Serializable.

• It should provide methods to set and get the values of the properties, known 
as getter and setter methods


## JavaBean Properties

• A JavaBean property is a named attribute that can be accessed by the user of the object. The attribute can be of any Java data type, including the classes that you define.

• A JavaBean property may be read, write, read only, or write only.

**1. getPropertyName ()**

For example, if the property name is firstName, the method name would be 
getFirstName() to read that property. This method is called the accessor.

**2. setPropertyName ()**

For example, if the property name is firstName, the method name would be 
setFirstName() to write that property. This method is called the mutator


## Pros and Cons of JavaBean
**Advantages:**
• The JavaBean properties and methods can be exposed to another application.

• It provides an easiness to reuse the software components.

**Disadvantages:**
• JavaBeans are mutable. So, it can't take advantages of immutable objects.

• Creating the setter and getter method for each property separately may lead 
to the boilerplate code

## jsp:useBean

Used to locate or instantiate a bean class.

• If the bean is already exists, doesn’t create.

<jsp:useBean id= "instanceName" scope= "page | request | session | application"

class= "packageName.className" type= "packageName.className"

beanName="packageName.className | <%= expression >" > 

</jsp:useBean>


Notes:

• id: is used to identity a bean in specific scope

• scope: default is page

• class: instantiates the specified bean class

• type: used together with ”class” and “beanName” attributes to specify type.

• beanName: instantiates the bean using the java.beans.Beans.instantiate() method.

• class and beanName attributes CANNOT be together

# References :
•https://www.codejava.net/java-ee/jsp/jsp-include-standard-action-examples







    

