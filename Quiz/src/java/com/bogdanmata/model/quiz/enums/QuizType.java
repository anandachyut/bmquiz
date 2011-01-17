package com.bogdanmata.model.quiz.enums;

import com.bogdanmata.generic.enums.MappingEnum;

public enum QuizType implements MappingEnum<String, String>{
	SingleChoiceTextQuiz("sct", "SingleChoiceTextQuiz"), 
	MultipleChoiceTextQuiz("mct", "MultipleChoiceTextQuiz");
	
	private final String id;
	private final String name;
	
	private QuizType(String id, String name) {
		this.id = id;
		this.name = name;
	}
	
	public String getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
}
