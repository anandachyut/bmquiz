package com.bogdanmata.model.quiz

class QuizGroupMappingController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	@Deprecated
    def index = {
        redirect(action: "list", params: params)
    }

	@Deprecated
    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [quizGroupMappingInstanceList: QuizGroupMapping.list(params), quizGroupMappingInstanceTotal: QuizGroupMapping.count()]
    }

	@Deprecated
    def create = {
        def quizGroupMappingInstance = new QuizGroupMapping()
        quizGroupMappingInstance.properties = params
        return [quizGroupMappingInstance: quizGroupMappingInstance]
    }

	@Deprecated
    def save = {
        def quizGroupMappingInstance = new QuizGroupMapping(params)
        if (quizGroupMappingInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'quizGroupMapping.label', default: 'QuizGroupMapping'), quizGroupMappingInstance.id])}"
            redirect(action: "show", id: quizGroupMappingInstance.id)
        }
        else {
            render(view: "create", model: [quizGroupMappingInstance: quizGroupMappingInstance])
        }
    }

	@Deprecated
    def show = {
        def quizGroupMappingInstance = QuizGroupMapping.get(params.id)
        if (!quizGroupMappingInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'quizGroupMapping.label', default: 'QuizGroupMapping'), params.id])}"
            redirect(action: "list")
        }
        else {
            [quizGroupMappingInstance: quizGroupMappingInstance]
        }
    }

	@Deprecated
    def edit = {
        def quizGroupMappingInstance = QuizGroupMapping.get(params.id)
        if (!quizGroupMappingInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'quizGroupMapping.label', default: 'QuizGroupMapping'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [quizGroupMappingInstance: quizGroupMappingInstance]
        }
    }

	@Deprecated
    def update = {
        def quizGroupMappingInstance = QuizGroupMapping.get(params.id)
        if (quizGroupMappingInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (quizGroupMappingInstance.version > version) {
                    
                    quizGroupMappingInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'quizGroupMapping.label', default: 'QuizGroupMapping')] as Object[], "Another user has updated this QuizGroupMapping while you were editing")
                    render(view: "edit", model: [quizGroupMappingInstance: quizGroupMappingInstance])
                    return
                }
            }
            quizGroupMappingInstance.properties = params
            if (!quizGroupMappingInstance.hasErrors() && quizGroupMappingInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'quizGroupMapping.label', default: 'QuizGroupMapping'), quizGroupMappingInstance.id])}"
                redirect(action: "show", id: quizGroupMappingInstance.id)
            }
            else {
                render(view: "edit", model: [quizGroupMappingInstance: quizGroupMappingInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'quizGroupMapping.label', default: 'QuizGroupMapping'), params.id])}"
            redirect(action: "list")
        }
    }

	@Deprecated
    def delete = {
        def quizGroupMappingInstance = QuizGroupMapping.get(params.id)
        if (quizGroupMappingInstance) {
            try {
                quizGroupMappingInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'quizGroupMapping.label', default: 'QuizGroupMapping'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'quizGroupMapping.label', default: 'QuizGroupMapping'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'quizGroupMapping.label', default: 'QuizGroupMapping'), params.id])}"
            redirect(action: "list")
        }
    }
	
	// TODO
	def findGroups = {}
	
	// TODO
	def findQuizs = {}
	
	// TODO
	def saveGroupsForQuiz = {}
	
	// TODO
	def saveQuizsForGroup = {}
}
