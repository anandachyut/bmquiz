package com.bogdanmata.model.quiz

class QuizGroupController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [quizGroupInstanceList: QuizGroup.list(params), quizGroupInstanceTotal: QuizGroup.count()]
    }

    def create = {
        def quizGroupInstance = new QuizGroup()
        quizGroupInstance.properties = params
        return [quizGroupInstance: quizGroupInstance]
    }

    def save = {
        def quizGroupInstance = new QuizGroup(params)
        if (quizGroupInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'quizGroup.label', default: 'QuizGroup'), quizGroupInstance.id])}"
            redirect(action: "show", id: quizGroupInstance.id)
        }
        else {
            render(view: "create", model: [quizGroupInstance: quizGroupInstance])
        }
    }

    def show = {
        def quizGroupInstance = QuizGroup.get(params.id)
        if (!quizGroupInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'quizGroup.label', default: 'QuizGroup'), params.id])}"
            redirect(action: "list")
        }
        else {
            [quizGroupInstance: quizGroupInstance]
        }
    }

    def edit = {
        def quizGroupInstance = QuizGroup.get(params.id)
        if (!quizGroupInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'quizGroup.label', default: 'QuizGroup'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [quizGroupInstance: quizGroupInstance]
        }
    }

    def update = {
        def quizGroupInstance = QuizGroup.get(params.id)
        if (quizGroupInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (quizGroupInstance.version > version) {
                    
                    quizGroupInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'quizGroup.label', default: 'QuizGroup')] as Object[], "Another user has updated this QuizGroup while you were editing")
                    render(view: "edit", model: [quizGroupInstance: quizGroupInstance])
                    return
                }
            }
            quizGroupInstance.properties = params
            if (!quizGroupInstance.hasErrors() && quizGroupInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'quizGroup.label', default: 'QuizGroup'), quizGroupInstance.id])}"
                redirect(action: "show", id: quizGroupInstance.id)
            }
            else {
                render(view: "edit", model: [quizGroupInstance: quizGroupInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'quizGroup.label', default: 'QuizGroup'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def quizGroupInstance = QuizGroup.get(params.id)
        if (quizGroupInstance) {
            try {
                quizGroupInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'quizGroup.label', default: 'QuizGroup'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'quizGroup.label', default: 'QuizGroup'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'quizGroup.label', default: 'QuizGroup'), params.id])}"
            redirect(action: "list")
        }
    }
}
