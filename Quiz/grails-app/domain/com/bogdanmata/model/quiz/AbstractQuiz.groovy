package com.bogdanmata.model.quiz


import java.io.Serializable;

import com.bogdanmata.model.quiz.enums.QuizType;
import com.bogdanmata.model.quiz.enums.QuizTypeUtil;
import com.sun.org.apache.bcel.internal.generic.Type;

class AbstractQuiz implements Serializable {
	
	Long id
	String help
	String question
	String hint
	QuizType type
	
	static constraints = {
    }
	
	static mapping = {
		tablePerHierarchy false
		discriminator column: "type"
	}
}
