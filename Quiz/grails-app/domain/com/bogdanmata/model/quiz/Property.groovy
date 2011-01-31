package com.bogdanmata.model.quiz

import com.bogdanmata.quiz.security.User

class Property {
	
	User owner 
	String name
	String value

    static constraints = {
		owner nullable: true
    }
}
