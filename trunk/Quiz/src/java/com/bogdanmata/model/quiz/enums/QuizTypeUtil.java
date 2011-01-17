package com.bogdanmata.model.quiz.enums;

import com.bogdanmata.generic.enums.MappingEnumUtil;

public class QuizTypeUtil extends MappingEnumUtil<String, String, QuizType>{
	
	private static QuizTypeUtil instance;
	
	public synchronized static QuizTypeUtil getInstance() {
		if(instance == null) {
			instance = new QuizTypeUtil();
		}
		return instance;
	}
	
	private QuizTypeUtil() {}
	
	@Override
	protected Class<QuizType> getMappingEnumClass() {
		return QuizType.class;
	}
}
