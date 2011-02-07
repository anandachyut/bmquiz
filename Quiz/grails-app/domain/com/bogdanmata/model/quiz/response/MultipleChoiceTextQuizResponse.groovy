package com.bogdanmata.model.quiz.response

import com.bogdanmata.model.quiz.MultipleChoiceTextQuiz;

class MultipleChoiceTextQuizResponse {

	boolean correct
    String content
	String contentRo
	boolean contentRoValidate
	String contentFr
	boolean contentFrValidate
	String contentDe
	boolean contentDeValidate
	String contentIt
	boolean contentItValidate
	String contentEs
	boolean contentEsValidate
	
	static belongsTo = [quiz: MultipleChoiceTextQuiz]
	
	static constraints = {
		content nullable: false
	}
}
