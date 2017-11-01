package portalogin

class BootStrap {

    def init = { servletContext ->
      if (User.count() == 0) {
            new User(name: 'Admin', password: 'sineti.1').save()
        }
    }
    def destroy = {
    }
}
