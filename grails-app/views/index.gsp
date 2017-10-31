<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <!-- librerias css -->
    <script src="js/jquery.min.js"></script>
    <link href="css/style.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <script type="text/ng-template" id="generic-messages">

          <p ng-message="required">Este campo es requerido</p>
          <p ng-message="minlength">Este campo debe contener minimo 5 caracteres</p>
          <p ng-message="maxlength">Este campo debe contener máximo 10 caraceres</p>

    </script>
    <title>Portal Login</title>

</head>
<body>
    <!-- Formulario Login-->
    <div class="row">
          <div class="col-md-4">
          </div>
          <div class="col-md-4">
            <center>
              <h1>Ingresar al portal </h1>
            </center>
            <br/>
              <g:form role="form" name="fomularioLogin" action="index" controller="User">
                    <div class="form-group">
                            <label for="InputUser">	Nombre de usuario	</label>
                            <input class="form-control" id="InputUser" type="text" ng-minlength="5" ng-maxlength="10" required name="username" placeholder="username">
                            <div ng-messages="fomularioLogin.username.$error">
                              <div ng-messages-include="required"></div>
                              <div ng-messages-include="minlength"></div>
                              <div ng-messages-include="maxlength"></div>
                            </div>
                    </div>
                    <div class="form-group">
                            <label for="InputPassword"> Contraseña		</label>
                            <input class="form-control" id="InputPassword" type="password" ng-minlength="5" ng-maxlength="10" required name="password" placeholder="password">
                            <div ng-messages="fomularioLogin.password.$error">
                              <div ng-messages-include="required"></div>
                              <div ng-messages-include="minlength"></div>
                              <div ng-messages-include="maxlength"></div>
                            </div>
                    </div>
                    <center>
                          <button type="submit" class="btn btn-default">Login</button>
                    </center>
              </g:form>
          </div>
          <div class="col-md-4">
          </div>
    </div>
</body>
</html>
