package com.bogdanmata.model.quiz.response

class MultipleChoiceTextQuizResponseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [multipleChoiceTextQuizResponseInstanceList: MultipleChoiceTextQuizResponse.list(params), multipleChoiceTextQuizResponseInstanceTotal: MultipleChoiceTextQuizResponse.count()]
    }

    def create = {
        def multipleChoiceTextQuizResponseInstance = new MultipleChoiceTextQuizResponse()
        multipleChoiceTextQuizResponseInstance.properties = params
        return [multipleChoiceTextQuizResponseInstance: multipleChoiceTextQuizResponseInstance]
    }

    def save = {
        def multipleChoiceTextQuizResponseInstance = new MultipleChoiceTextQuizResponse(params)
        if (multipleChoiceTextQuizResponseInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'multipleChoiceTextQuizResponse.label', default: 'MultipleChoiceTextQuizResponse'), multipleChoiceTextQuizResponseInstance.id])}"
            redirect(action: "show", id: multipleChoiceTextQuizResponseInstance.id)
        }
        else {
            render(view: "create", model: [multipleChoiceTextQuizResponseInstance: multipleChoiceTextQuizResponseInstance])
        }
    }

    def show = {
        def multipleChoiceTextQuizResponseInstance = MultipleChoiceTextQuizResponse.get(params.id)
        if (!multipleChoiceTextQuizResponseInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'multipleChoiceTextQuizResponse.label', default: 'MultipleChoiceTextQuizResponse'), params.id])}"
            redirect(action: "list")
        }
        else {
            [multipleChoiceTextQuizResponseInstance: multipleChoiceTextQuizResponseInstance]
        }
    }

    def edit = {
        def multipleChoiceTextQuizResponseInstance = MultipleChoiceTextQuizResponse.get(params.id)
        if (!multipleChoiceTextQuizResponseInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'multipleChoiceTextQuizResponse.label', default: 'MultipleChoiceTextQuizResponse'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [multipleChoiceTextQuizResponseInstance: multipleChoiceTextQuizResponseInstance]
        }
    }

    def update = {
        def multipleChoiceTextQuizResponseInstance = MultipleChoiceTextQuizResponse.get(params.id)
        if (multipleChoiceTextQuizResponseInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (multipleChoiceTextQuizResponseInstance.version > version) {
                    
                    multipleChoiceTextQuizResponseInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'multipleChoiceTextQuizResponse.label', default: 'MultipleChoiceTextQuizResponse')] as Object[], "Another user has updated this MultipleChoiceTextQuizResponse while you were editing")
                    render(view: "edit", model: [multipleChoiceTextQuizResponseInstance: multipleChoiceTextQuizResponseInstance])
                    return
                }
            }
            multipleChoiceTextQuizResponseInstance.properties = params
            if (!multipleChoiceTextQuizResponseInstance.hasErrors() && multipleChoiceTextQuizResponseInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'multipleChoiceTextQuizResponse.label', default: 'MultipleChoiceTextQuizResponse'), multipleChoiceTextQuizResponseInstance.id])}"
                redirect(action: "show", id: multipleChoiceTextQuizResponseInstance.id)
            }
            else {
                render(view: "edit", model: [multipleChoiceTextQuizResponseInstance: multipleChoiceTextQuizResponseInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'multipleChoiceTextQuizResponse.label', default: 'MultipleChoiceTextQuizResponse'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def multipleChoiceTextQuizResponseInstance = MultipleChoiceTextQuizResponse.get(params.id)
        if (multipleChoiceTextQuizResponseInstance) {
            try {
                multipleChoiceTextQuizResponseInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'multipleChoiceTextQuizResponse.label', default: 'MultipleChoiceTextQuizResponse'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'multipleChoiceTextQuizResponse.label', default: 'MultipleChoiceTextQuizResponse'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'multipleChoiceTextQuizResponse.label', default: 'MultipleChoiceTextQuizResponse'), params.id])}"
            redirect(action: "list")
        }
    }
}
