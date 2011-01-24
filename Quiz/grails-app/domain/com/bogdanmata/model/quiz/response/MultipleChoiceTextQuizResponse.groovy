package com.bogdanmata.model.quiz.response

import com.bogdanmata.model.quiz.MultipleChoiceTextQuiz;

class MultipleChoiceTextQuizResponse {

	boolean correct
    String content
	String contentRo
	String contentFr
	String contentDe
	String contentIt
	String contentEs
	
	static belongsTo = [quiz: MultipleChoiceTextQuiz]
	
	static constraints = {
		content nullable: false
	}
}
