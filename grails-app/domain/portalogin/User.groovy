package portalogin

class User {
    String name
    String password
    String url
    String role
    static constraints = {
      name  name  : true, blank: false, unique: true, maxSize: 10
      password password: true, blank: false, maxSize: 10
      url url : true, blank: false, maxSize: 1000
      role role :true, blank: false,  maxSize: 20
    }
    //static mapping  = {
      //table schema: "[user]"
    //}
}
