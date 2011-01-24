package com.bogdanmata.model.quiz

import com.bogdanmata.model.quiz.enums.QuizType;
import com.bogdanmata.model.quiz.response.MultipleChoiceTextQuizResponse;

class MultipleChoiceTextQuiz extends AbstractQuiz {

	static hasMany = [responses: MultipleChoiceTextQuizResponse]
		
    static constraints = {
    }
	
	static mapping = {
		discriminator value: QuizType.MultipleChoiceTextQuiz.id
	}
}
