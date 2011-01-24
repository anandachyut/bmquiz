import com.bogdanmata.quiz.security.Role;

class BootStrap {

    def init = { servletContext ->
		if(Role.count() == 0){
			new Role(authority = 'ROLE_ALL').save(flush = true)
			new Role(authority = 'ROLE_USER_VIEW').save(flush = true)
			new Role(authority = 'ROLE_USER_EDIT').save(flush = true)
			new Role(authority = 'ROLE_ROLE_VIEW').save(flush = true)
			new Role(authority = 'ROLE_ROLE_EDIT').save(flush = true)
			new Role(authority = 'ROLE_REQUESTMAP_VIEW').save(flush = true)
			new Role(authority = 'ROLE_REQUESTMAP_EDIT').save(flush = true)
			
			// TODO admin
		}
    }
    def destroy = {
    }
}
