package com.bogdanmata.model.quiz

class TranslateTaskController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [translateTaskInstanceList: TranslateTask.list(params), translateTaskInstanceTotal: TranslateTask.count()]
    }

    def create = {
        def translateTaskInstance = new TranslateTask()
        translateTaskInstance.properties = params
        return [translateTaskInstance: translateTaskInstance]
    }

    def save = {
        def translateTaskInstance = new TranslateTask(params)
        if (translateTaskInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'translateTask.label', default: 'TranslateTask'), translateTaskInstance.id])}"
            redirect(action: "show", id: translateTaskInstance.id)
        }
        else {
            render(view: "create", model: [translateTaskInstance: translateTaskInstance])
        }
    }

    def show = {
        def translateTaskInstance = TranslateTask.get(params.id)
        if (!translateTaskInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'translateTask.label', default: 'TranslateTask'), params.id])}"
            redirect(action: "list")
        }
        else {
            [translateTaskInstance: translateTaskInstance]
        }
    }

    def edit = {
        def translateTaskInstance = TranslateTask.get(params.id)
        if (!translateTaskInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'translateTask.label', default: 'TranslateTask'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [translateTaskInstance: translateTaskInstance]
        }
    }

    def update = {
        def translateTaskInstance = TranslateTask.get(params.id)
        if (translateTaskInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (translateTaskInstance.version > version) {
                    
                    translateTaskInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'translateTask.label', default: 'TranslateTask')] as Object[], "Another user has updated this TranslateTask while you were editing")
                    render(view: "edit", model: [translateTaskInstance: translateTaskInstance])
                    return
                }
            }
            translateTaskInstance.properties = params
            if (!translateTaskInstance.hasErrors() && translateTaskInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'translateTask.label', default: 'TranslateTask'), translateTaskInstance.id])}"
                redirect(action: "show", id: translateTaskInstance.id)
            }
            else {
                render(view: "edit", model: [translateTaskInstance: translateTaskInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'translateTask.label', default: 'TranslateTask'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def translateTaskInstance = TranslateTask.get(params.id)
        if (translateTaskInstance) {
            try {
                translateTaskInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'translateTask.label', default: 'TranslateTask'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'translateTask.label', default: 'TranslateTask'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'translateTask.label', default: 'TranslateTask'), params.id])}"
            redirect(action: "list")
        }
    }
}
