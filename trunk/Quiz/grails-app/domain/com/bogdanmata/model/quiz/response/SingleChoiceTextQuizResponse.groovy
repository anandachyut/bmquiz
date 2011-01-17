package com.bogdanmata.model.quiz.response

import java.io.Serializable;

import com.bogdanmata.model.quiz.SingleChoiceTextQuiz;

class SingleChoiceTextQuizResponse implements Serializable {
	
	String content
	
	static belongsTo = [quiz: SingleChoiceTextQuiz]
	
	static constraints = {
		content nullable: false
	}
}
