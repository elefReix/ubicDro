package portalogin

class User {
    String name
    String password
    String urlDestino
    static constraints = {
      name  name  : true, blank: false, unique: true, maxSize: 10
      password password: true, blank: false, unique: true, maxSize: 10
      urlDestino urlDestino : true
    }
    static mapping  = {
      table schema: "[user]"
    }
}
