package com.bogdanmata.model.quiz

class QuizGroupMapping {
	
	static belongsTo = [quiz: AbstractQuiz, group: QuizGroup]
	
    static constraints = {
    }
}
