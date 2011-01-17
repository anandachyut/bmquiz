package com.bogdanmata.model.quiz

class AbstractQuizController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [abstractQuizInstanceList: AbstractQuiz.list(params), abstractQuizInstanceTotal: AbstractQuiz.count()]
    }

    def create = {
        def abstractQuizInstance = new AbstractQuiz()
        abstractQuizInstance.properties = params
        return [abstractQuizInstance: abstractQuizInstance]
    }

    def save = {
        def abstractQuizInstance = new AbstractQuiz(params)
        if (abstractQuizInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'abstractQuiz.label', default: 'AbstractQuiz'), abstractQuizInstance.id])}"
            redirect(action: "show", id: abstractQuizInstance.id)
        }
        else {
            render(view: "create", model: [abstractQuizInstance: abstractQuizInstance])
        }
    }

    def show = {
        def abstractQuizInstance = AbstractQuiz.get(params.id)
        if (!abstractQuizInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'abstractQuiz.label', default: 'AbstractQuiz'), params.id])}"
            redirect(action: "list")
        }
        else {
            [abstractQuizInstance: abstractQuizInstance]
        }
    }

    def edit = {
        def abstractQuizInstance = AbstractQuiz.get(params.id)
        if (!abstractQuizInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'abstractQuiz.label', default: 'AbstractQuiz'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [abstractQuizInstance: abstractQuizInstance]
        }
    }

    def update = {
        def abstractQuizInstance = AbstractQuiz.get(params.id)
        if (abstractQuizInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (abstractQuizInstance.version > version) {
                    
                    abstractQuizInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'abstractQuiz.label', default: 'AbstractQuiz')] as Object[], "Another user has updated this AbstractQuiz while you were editing")
                    render(view: "edit", model: [abstractQuizInstance: abstractQuizInstance])
                    return
                }
            }
            abstractQuizInstance.properties = params
            if (!abstractQuizInstance.hasErrors() && abstractQuizInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'abstractQuiz.label', default: 'AbstractQuiz'), abstractQuizInstance.id])}"
                redirect(action: "show", id: abstractQuizInstance.id)
            }
            else {
                render(view: "edit", model: [abstractQuizInstance: abstractQuizInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'abstractQuiz.label', default: 'AbstractQuiz'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def abstractQuizInstance = AbstractQuiz.get(params.id)
        if (abstractQuizInstance) {
            try {
                abstractQuizInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'abstractQuiz.label', default: 'AbstractQuiz'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'abstractQuiz.label', default: 'AbstractQuiz'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'abstractQuiz.label', default: 'AbstractQuiz'), params.id])}"
            redirect(action: "list")
        }
    }
}
