<!DOCTYPE html>
<html>
    <head>
        <meta name="layout"/>
        <asset:stylesheet src="application.css"/>
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
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
    <a href="#list-user" class="skip" tabindex="-1">
      <g:message code="default.link.skip.label" default="Skip to content&hellip;"/>
    </a>

    <div class="row">
          <div class="col-md-2">
          </div>
          <div class="col-md-7">
          <div id="list-user" class="content scaffold-list" role="main">
              <h1><g:message code="default.list.label" args="[entityName]" /></h1>
              <g:if test="${flash.message}">
                  <div class="message" role="status">${flash.message}</div>
              </g:if>
              <f:table collection="${userList}" />

              <div class="pagination">
                  <g:paginate total="${userCount ?: 0}" />
              </div>
          </div>
        </div>
        <div class="nav col-md-3" role="navigation">
            <ul>
                <li><!-- Boton Principal -->
                  <a class="home" href="${createLink(uri: '/')}">
                    <g:message code="default.home.label"/>
                  </a>
                </li>
                <li><!-- Boton Crear nuevo usuario-->
                  <g:link class="create" action="create">
                    <g:message code="default.new.label" args="[entityName]" />
                  </g:link>
                </li>
            </ul>
        </div>
  </div>
</body>
</html>
