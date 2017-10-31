package portalogin

class User {
    String name
    String password
    static constraints = {
      name  name  : true, blank: false, unique: true, maxSize: 10
      password password: true, blank: false, unique: true, maxSize: 10
    }
    static mapping  = {
      table schema: "[user]"
    }
}
