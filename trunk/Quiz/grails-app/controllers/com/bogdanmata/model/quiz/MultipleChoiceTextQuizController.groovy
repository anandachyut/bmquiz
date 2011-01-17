package com.bogdanmata.model.quiz

class MultipleChoiceTextQuizController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [multipleChoiceTextQuizInstanceList: MultipleChoiceTextQuiz.list(params), multipleChoiceTextQuizInstanceTotal: MultipleChoiceTextQuiz.count()]
    }

    def create = {
        def multipleChoiceTextQuizInstance = new MultipleChoiceTextQuiz()
        multipleChoiceTextQuizInstance.properties = params
        return [multipleChoiceTextQuizInstance: multipleChoiceTextQuizInstance]
    }

    def save = {
        def multipleChoiceTextQuizInstance = new MultipleChoiceTextQuiz(params)
        if (multipleChoiceTextQuizInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'multipleChoiceTextQuiz.label', default: 'MultipleChoiceTextQuiz'), multipleChoiceTextQuizInstance.id])}"
            redirect(action: "show", id: multipleChoiceTextQuizInstance.id)
        }
        else {
            render(view: "create", model: [multipleChoiceTextQuizInstance: multipleChoiceTextQuizInstance])
        }
    }

    def show = {
        def multipleChoiceTextQuizInstance = MultipleChoiceTextQuiz.get(params.id)
        if (!multipleChoiceTextQuizInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'multipleChoiceTextQuiz.label', default: 'MultipleChoiceTextQuiz'), params.id])}"
            redirect(action: "list")
        }
        else {
            [multipleChoiceTextQuizInstance: multipleChoiceTextQuizInstance]
        }
    }

    def edit = {
        def multipleChoiceTextQuizInstance = MultipleChoiceTextQuiz.get(params.id)
        if (!multipleChoiceTextQuizInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'multipleChoiceTextQuiz.label', default: 'MultipleChoiceTextQuiz'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [multipleChoiceTextQuizInstance: multipleChoiceTextQuizInstance]
        }
    }

    def update = {
        def multipleChoiceTextQuizInstance = MultipleChoiceTextQuiz.get(params.id)
        if (multipleChoiceTextQuizInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (multipleChoiceTextQuizInstance.version > version) {
                    
                    multipleChoiceTextQuizInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'multipleChoiceTextQuiz.label', default: 'MultipleChoiceTextQuiz')] as Object[], "Another user has updated this MultipleChoiceTextQuiz while you were editing")
                    render(view: "edit", model: [multipleChoiceTextQuizInstance: multipleChoiceTextQuizInstance])
                    return
                }
            }
            multipleChoiceTextQuizInstance.properties = params
            if (!multipleChoiceTextQuizInstance.hasErrors() && multipleChoiceTextQuizInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'multipleChoiceTextQuiz.label', default: 'MultipleChoiceTextQuiz'), multipleChoiceTextQuizInstance.id])}"
                redirect(action: "show", id: multipleChoiceTextQuizInstance.id)
            }
            else {
                render(view: "edit", model: [multipleChoiceTextQuizInstance: multipleChoiceTextQuizInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'multipleChoiceTextQuiz.label', default: 'MultipleChoiceTextQuiz'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def multipleChoiceTextQuizInstance = MultipleChoiceTextQuiz.get(params.id)
        if (multipleChoiceTextQuizInstance) {
            try {
                multipleChoiceTextQuizInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'multipleChoiceTextQuiz.label', default: 'MultipleChoiceTextQuiz'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'multipleChoiceTextQuiz.label', default: 'MultipleChoiceTextQuiz'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'multipleChoiceTextQuiz.label', default: 'MultipleChoiceTextQuiz'), params.id])}"
            redirect(action: "list")
        }
    }
}
