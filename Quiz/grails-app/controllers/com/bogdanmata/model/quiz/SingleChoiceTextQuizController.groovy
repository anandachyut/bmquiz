package com.bogdanmata.model.quiz

import com.bogdanmata.generic.generator.IdGenerator;
import com.bogdanmata.model.quiz.response.SingleChoiceTextQuizResponse;

class SingleChoiceTextQuizController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [singleChoiceTextQuizInstanceList: SingleChoiceTextQuiz.list(params), singleChoiceTextQuizInstanceTotal: SingleChoiceTextQuiz.count()]
    }

    def create = {
        def singleChoiceTextQuizInstance = new SingleChoiceTextQuiz()
        singleChoiceTextQuizInstance.properties = params
		
		// add 3 empty responses
		def responses = [:]
		responses.put IdGenerator.getInstance().generate(), new SingleChoiceTextQuizResponse()
		responses.put IdGenerator.getInstance().generate(), new SingleChoiceTextQuizResponse()
		responses.put IdGenerator.getInstance().generate(), new SingleChoiceTextQuizResponse()
		
        return [singleChoiceTextQuizInstance: singleChoiceTextQuizInstance, responses: responses]
    }

    def save = {
        def singleChoiceTextQuizInstance = new SingleChoiceTextQuiz(params)
		
		def responses = [:]
		
		params.each { String key, value ->
			if(key.endsWith("response")) {
				String reponseId = key.substring(0, key.indexOf('.'))
				if(responses[reponseId] == null) {
					responses[reponseId] = new SingleChoiceTextQuizResponse()
				}
			}
		}
		
		def correctKey = params[correct];
		
		singleChoiceTextQuizInstance.responses = responses.values()
		singleChoiceTextQuizInstance.correctResponse = responses[correctKey]
		
        if (singleChoiceTextQuizInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'singleChoiceTextQuiz.label', default: 'SingleChoiceTextQuiz'), singleChoiceTextQuizInstance.id])}"
            redirect(action: "show", id: singleChoiceTextQuizInstance.id)
        }
        else {
            render(view: "create", model: [singleChoiceTextQuizInstance: singleChoiceTextQuizInstance])
        }
    }

    def show = {
        def singleChoiceTextQuizInstance = SingleChoiceTextQuiz.get(params.id)
        if (!singleChoiceTextQuizInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'singleChoiceTextQuiz.label', default: 'SingleChoiceTextQuiz'), params.id])}"
            redirect(action: "list")
        }
        else {
            [singleChoiceTextQuizInstance: singleChoiceTextQuizInstance]
        }
    }

    def edit = {
        def singleChoiceTextQuizInstance = SingleChoiceTextQuiz.get(params.id)
        if (!singleChoiceTextQuizInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'singleChoiceTextQuiz.label', default: 'SingleChoiceTextQuiz'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [singleChoiceTextQuizInstance: singleChoiceTextQuizInstance]
        }
    }

    def update = {
        def singleChoiceTextQuizInstance = SingleChoiceTextQuiz.get(params.id)
        if (singleChoiceTextQuizInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (singleChoiceTextQuizInstance.version > version) {
                    
                    singleChoiceTextQuizInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'singleChoiceTextQuiz.label', default: 'SingleChoiceTextQuiz')] as Object[], "Another user has updated this SingleChoiceTextQuiz while you were editing")
                    render(view: "edit", model: [singleChoiceTextQuizInstance: singleChoiceTextQuizInstance])
                    return
                }
            }
            singleChoiceTextQuizInstance.properties = params
            if (!singleChoiceTextQuizInstance.hasErrors() && singleChoiceTextQuizInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'singleChoiceTextQuiz.label', default: 'SingleChoiceTextQuiz'), singleChoiceTextQuizInstance.id])}"
                redirect(action: "show", id: singleChoiceTextQuizInstance.id)
            }
            else {
                render(view: "edit", model: [singleChoiceTextQuizInstance: singleChoiceTextQuizInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'singleChoiceTextQuiz.label', default: 'SingleChoiceTextQuiz'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def singleChoiceTextQuizInstance = SingleChoiceTextQuiz.get(params.id)
        if (singleChoiceTextQuizInstance) {
            try {
                singleChoiceTextQuizInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'singleChoiceTextQuiz.label', default: 'SingleChoiceTextQuiz'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'singleChoiceTextQuiz.label', default: 'SingleChoiceTextQuiz'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'singleChoiceTextQuiz.label', default: 'SingleChoiceTextQuiz'), params.id])}"
            redirect(action: "list")
        }
    }
}
