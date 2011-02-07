package com.bogdanmata.model.quiz

import com.bogdanmata.model.quiz.enums.EntityType;
import com.bogdanmata.model.quiz.enums.Language;

class TranslateTask {

	EntityType entity
	Long id
	String property
	Language language
	
	// TODO asignTo
	
    static constraints = {
    }
}
