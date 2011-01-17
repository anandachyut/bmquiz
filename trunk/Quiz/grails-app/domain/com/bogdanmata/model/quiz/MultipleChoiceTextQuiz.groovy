package com.bogdanmata.model.quiz

import com.bogdanmata.model.quiz.enums.QuizType;

class MultipleChoiceTextQuiz extends AbstractQuiz {

    static constraints = {
    }
	
	static mapping = {
		discriminator value: QuizType.MultipleChoiceTextQuiz.id
	}
}
