package com.bogdanmata.model.quiz.enums;

import com.bogdanmata.generic.enums.MappingEnum;

public enum Language implements MappingEnum<String, String>{
	English("en", "English"),
	Romanian("ro", "Romanian"),
	French("fr", "French"),
	Deutch("de", "Deutch"),
	Italian("it", "Italian"),
	Spanish("es", "Spanish");
	
	private final String id;
	private final String name;
	
	private Language(String id, String name) {
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
