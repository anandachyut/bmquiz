package com.bogdanmata.model.quiz.enums;

import com.bogdanmata.generic.enums.MappingEnum;
import com.bogdanmata.model.quiz.MultipleChoiceTextQuiz;
import com.bogdanmata.model.quiz.SingleChoiceTextQuiz;

public enum EntityType implements MappingEnum<String, Class<?>> {
	MultipleChoiceTextQuiz(MultipleChoiceTextQuiz.class.getCanonicalName(), MultipleChoiceTextQuiz.class),
	SingleChoiceTextQuiz(SingleChoiceTextQuiz.class.getCanonicalName(), SingleChoiceTextQuiz.class);
	
	private final String id;
	private final Class<?> name;
	
	private EntityType(String id, Class<?> name) {
		this.id = id;
		this.name = name;
	}
	
	public String getId() {
		return id;
	}
	
	public Class<?> getName() {
		return name;
	}
}
