<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
   xmlns:h="http://java.sun.com/jsf/html">
      <h:head>
      <title>BEMO - Loginpage</title>		
      <h:outputStylesheet library="css" name="styles.css"  /> 	
   </h:head>
<h:body>
<h:form>
    <h:messages />

    <h2>Login Page</h2>
    <p>You can use "admin" and "secret" to login.</p>
    <h:panelGrid columns="3">


        <h:outputLabel for="password" value="Password:" />
        <h:inputSecret id="password" value="#{loginController.password}"
            label="Password" />
        <h:message for="password" />
        
        
        <h:outputLabel for="username" value="User Name:" />
        <h:inputText id="username" value="#{loginController.username}"
            required="true" label="Username" />
        <h:message for="username" />



        <h:outputLabel for="rememberMe" value="Remember Me:" />
        <h:selectBooleanCheckbox id="rememberMe"
            value="#{loginController.rememberMe}" />

        <h:commandButton action="#{loginController.authenticate()}"
            value="Login" />

    </h:panelGrid>
</h:form>
      <h:form>
         <h:commandButton action="home?faces-redirect=true"
            value="Back To Home Page" />
      </h:form>
</h:body>
</html>
