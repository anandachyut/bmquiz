package com.bogdanmata.model.quiz

import com.bogdanmata.model.quiz.enums.QuizType;
import com.bogdanmata.model.quiz.response.SingleChoiceTextQuizResponse;

class SingleChoiceTextQuiz extends AbstractQuiz {
	
	SingleChoiceTextQuizResponse correctResponse
	
	static hasMany = {
		responses: SingleChoiceTextQuizResponse
	}

    static constraints = {
		correctResponse nullable: false
    }
	
	static mapping = {
		discriminator value: QuizType.SingleChoiceTextQuiz.id
	}
}
