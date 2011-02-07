package com.bogdanmata.model.quiz

class QuizGroup {
	
	String name
	String nameRo
	boolean nameRoValidate
	String nameFr
	boolean nameFrValidate
	String nameDe
	boolean nameDeValidate
	String nameIt
	boolean nameItValidate
	String nameEs
	boolean nameEsValidate
	
	String description
	String descriptionRo
	boolean descriptionRoValidate
	String descriptionFr
	boolean descriptionFrValidate
	String descriptionDe
	boolean descriptionDeValidate
	String descriptionIt
	boolean descriptionItValidate
	String descriptionEs
	boolean descriptionEsValidate

	static hasMany = [groups: QuizGroupMapping]
	
    static constraints = {
    }
}
