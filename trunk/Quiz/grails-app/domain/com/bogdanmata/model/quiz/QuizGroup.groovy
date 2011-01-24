package com.bogdanmata.model.quiz

class QuizGroup {
	
	String name
	String nameRo
	String nameFr
	String nameDe
	String nameIt
	String nameEs
	
	String description
	String descriptionRo
	String descriptionFr
	String descriptionDe
	String descriptionIt
	String descriptionEs

	static hasMany = [groups: QuizGroupMapping]
	
    static constraints = {
    }
}
