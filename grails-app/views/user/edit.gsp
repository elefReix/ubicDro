<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" />
        <asset:stylesheet src="application.css"/>
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
      <!--***************************************************************************************************************************************-->
     <div class="row">
     <div class="col-md-12">
         <nav class="navbar navbar-default" role="navigation">
         <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                   <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </button> <a class="navbar-brand" href="#">Ubictum</a>
        </div>
      </nav>
    </div>
    </div>
    <!--***************************************************************************************************************************************-->
    <a href="#edit-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="row">
              <div class="col-md-2">
              </div>
              <div class="col-md-6">
                  <div id="edit-user" class="content scaffold-edit" role="main">
                      <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
                      <g:if test="${flash.message}">
                      <div class="message" role="status">${flash.message}</div>
                      </g:if>
                      <g:hasErrors bean="${this.user}">
                      <ul class="errors" role="alert">
                          <g:eachError bean="${this.user}" var="error">
                          <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                          </g:eachError>
                      </ul>
                      </g:hasErrors>
                  </div>
                  <g:form resource="${this.user}" method="PUT">
                      <g:hiddenField name="version" value="${this.user?.version}" />
                      <fieldset class="form">
                          <f:all bean="user"/>
                      </fieldset>
                      <fieldset class="buttons">
                          <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                      </fieldset>
                  </g:form>
              </div>
              <div class="nav col-md-4" role="navigation">
                  <ul>
                      <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                      <li><g:link class="list" action="index1"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                      <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                  </ul>
              </div>
        </div>
    </body>
</html>
