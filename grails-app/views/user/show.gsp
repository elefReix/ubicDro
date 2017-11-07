<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" />
        <asset:stylesheet src="application.css"/>
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
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
        <a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

        <div class="row">
              <div class="col-md-1">
              </div>
              <div class="col-md-7">
              <div id="show-user" class="content scaffold-show" role="main">
                  <h1><g:message code="default.show.label" args="[entityName]" /></h1>
                  <g:if test="${flash.message}">
                  <div class="message" role="status">${flash.message}</div>
                  </g:if>
                  <f:display bean="user" />
                  <g:form resource="${this.user}" method="DELETE">
                      <fieldset class="buttons">
                          <g:link class="edit" action="edit" resource="${this.user}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                          <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                      </fieldset>
                  </g:form>
              </div>
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
