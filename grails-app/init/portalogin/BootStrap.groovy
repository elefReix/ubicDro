package portalogin

class BootStrap {

    def init = { servletContext ->
      if (User.count() == 0) {
            new User(name: 'Admin', password: 'ubictum.1').save()
        }
    }
    def destroy = {
    }
}
