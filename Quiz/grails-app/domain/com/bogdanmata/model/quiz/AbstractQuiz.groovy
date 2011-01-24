package com.bogdanmata.model.quiz


import java.io.Serializable;
import java.util.Locale;

import com.bogdanmata.model.quiz.enums.QuizType;
import com.bogdanmata.model.quiz.enums.QuizTypeUtil;
import com.sun.org.apache.bcel.internal.generic.Type;

class AbstractQuiz implements Serializable {
	
	Long id
	
	String help
	String helpRo
	boolean helpRoValidate
	String helpFr
	boolean helpFrValidate
	String helpDe
	boolean helpDeValidate
	String helpIt
	boolean helpItValidate
	String helpEs
	boolean helpEsValidate
	
	String question
	String questionRo
	boolean questionRoValidate
	String questionFr
	boolean questionFrValidate
	String questionDe
	boolean questionDeValidate
	String questionIt
	boolean questionItValidate
	String questionEs
	boolean questionEsValidate
	
	String hint
	String hintRo
	boolean hintRoValidate
	String hintFr
	boolean hintFrValidate
	String hintDe
	boolean hintDeValidate
	String hintIt
	boolean hintItValidate
	String hintEs
	boolean hintEsValidate
	
	QuizType type
	
	static hasMany = [groups: QuizGroupMapping]
	
	static constraints = {
    }
	
	static mapping = {
		tablePerHierarchy: false
		discriminator column: "type"
	}
	
	@Override
	public String toString() {
		return super.toString();
	}
}
