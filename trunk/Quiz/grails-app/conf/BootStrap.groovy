import com.bogdanmata.model.quiz.Property;
import com.bogdanmata.quiz.security.Role;

class BootStrap {

    def init = { servletContext ->
		if(Role.count() == 0){
			new Role(authority: "ROLE_ALL").save(flush: true)
			new Role(authority: "ROLE_USER_VIEW").save(flush: true)
			new Role(authority: "ROLE_USER_EDIT").save(flush: true)
			new Role(authority: "ROLE_ROLE_VIEW").save(flush: true)
			new Role(authority: "ROLE_ROLE_EDIT").save(flush: true)
			new Role(authority: "ROLE_REQUESTMAP_VIEW").save(flush: true)
			new Role(authority: "ROLE_REQUESTMAP_EDIT").save(flush: true)
			
			// TODO admin
		}
		if(Property.count() == 0){
			new Property(owner: null, name: "com.bogdanmata.quiz.model.SingleChoiceTextQuiz.help.en", value: "Select the correct answer.").save(flush: true)
			new Property(owner: null, name: "com.bogdanmata.quiz.model.SingleChoiceTextQuiz.help.ro", value: "Alegeti răspunsul corect.").save(flush: true)
			new Property(owner: null, name: "com.bogdanmata.quiz.model.SingleChoiceTextQuiz.help.fr", value: "Sélectionnez la bonne réponse.").save(flush: true)
			new Property(owner: null, name: "com.bogdanmata.quiz.model.SingleChoiceTextQuiz.help.de", value: "Selecteer het juiste antwoord.").save(flush: true)
			new Property(owner: null, name: "com.bogdanmata.quiz.model.SingleChoiceTextQuiz.help.it", value: "Selezionare la risposta corretta.").save(flush: true)
			new Property(owner: null, name: "com.bogdanmata.quiz.model.SingleChoiceTextQuiz.help.es", value: "Seleccione la respuesta correcta.").save(flush: true)
		}
    }
    def destroy = {
    }
}
