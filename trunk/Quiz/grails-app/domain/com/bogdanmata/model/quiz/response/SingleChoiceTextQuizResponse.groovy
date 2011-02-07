package com.bogdanmata.model.quiz.response

import java.io.Serializable;

import com.bogdanmata.model.quiz.SingleChoiceTextQuiz;

class SingleChoiceTextQuizResponse implements Serializable {
	
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
	
	static belongsTo = [quiz: SingleChoiceTextQuiz]
	
	static constraints = {
		content nullable: false
	}
}
