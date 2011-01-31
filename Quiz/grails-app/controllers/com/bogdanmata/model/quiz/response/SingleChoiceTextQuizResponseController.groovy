package com.bogdanmata.model.quiz.response

class SingleChoiceTextQuizResponseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [singleChoiceTextQuizResponseInstanceList: SingleChoiceTextQuizResponse.list(params), singleChoiceTextQuizResponseInstanceTotal: SingleChoiceTextQuizResponse.count()]
    }

    def create = {
        def singleChoiceTextQuizResponseInstance = new SingleChoiceTextQuizResponse()
        singleChoiceTextQuizResponseInstance.properties = params
        return [singleChoiceTextQuizResponseInstance: singleChoiceTextQuizResponseInstance]
    }

    def save = {
        def singleChoiceTextQuizResponseInstance = new SingleChoiceTextQuizResponse(params)
        if (singleChoiceTextQuizResponseInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'singleChoiceTextQuizResponse.label', default: 'SingleChoiceTextQuizResponse'), singleChoiceTextQuizResponseInstance.id])}"
            redirect(action: "show", id: singleChoiceTextQuizResponseInstance.id)
        }
        else {
            render(view: "create", model: [singleChoiceTextQuizResponseInstance: singleChoiceTextQuizResponseInstance])
        }
    }

    def show = {
        def singleChoiceTextQuizResponseInstance = SingleChoiceTextQuizResponse.get(params.id)
        if (!singleChoiceTextQuizResponseInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'singleChoiceTextQuizResponse.label', default: 'SingleChoiceTextQuizResponse'), params.id])}"
            redirect(action: "list")
        }
        else {
            [singleChoiceTextQuizResponseInstance: singleChoiceTextQuizResponseInstance]
        }
    }

    def edit = {
        def singleChoiceTextQuizResponseInstance = SingleChoiceTextQuizResponse.get(params.id)
        if (!singleChoiceTextQuizResponseInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'singleChoiceTextQuizResponse.label', default: 'SingleChoiceTextQuizResponse'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [singleChoiceTextQuizResponseInstance: singleChoiceTextQuizResponseInstance]
        }
    }

    def update = {
        def singleChoiceTextQuizResponseInstance = SingleChoiceTextQuizResponse.get(params.id)
        if (singleChoiceTextQuizResponseInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (singleChoiceTextQuizResponseInstance.version > version) {
                    
                    singleChoiceTextQuizResponseInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'singleChoiceTextQuizResponse.label', default: 'SingleChoiceTextQuizResponse')] as Object[], "Another user has updated this SingleChoiceTextQuizResponse while you were editing")
                    render(view: "edit", model: [singleChoiceTextQuizResponseInstance: singleChoiceTextQuizResponseInstance])
                    return
                }
            }
            singleChoiceTextQuizResponseInstance.properties = params
            if (!singleChoiceTextQuizResponseInstance.hasErrors() && singleChoiceTextQuizResponseInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'singleChoiceTextQuizResponse.label', default: 'SingleChoiceTextQuizResponse'), singleChoiceTextQuizResponseInstance.id])}"
                redirect(action: "show", id: singleChoiceTextQuizResponseInstance.id)
            }
            else {
                render(view: "edit", model: [singleChoiceTextQuizResponseInstance: singleChoiceTextQuizResponseInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'singleChoiceTextQuizResponse.label', default: 'SingleChoiceTextQuizResponse'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def singleChoiceTextQuizResponseInstance = SingleChoiceTextQuizResponse.get(params.id)
        if (singleChoiceTextQuizResponseInstance) {
            try {
                singleChoiceTextQuizResponseInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'singleChoiceTextQuizResponse.label', default: 'SingleChoiceTextQuizResponse'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'singleChoiceTextQuizResponse.label', default: 'SingleChoiceTextQuizResponse'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'singleChoiceTextQuizResponse.label', default: 'SingleChoiceTextQuizResponse'), params.id])}"
            redirect(action: "list")
        }
    }
}
