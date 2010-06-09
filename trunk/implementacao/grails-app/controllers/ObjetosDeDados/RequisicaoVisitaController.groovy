package ObjetosDeDados

class RequisicaoVisitaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [requisicaoVisitaInstanceList: RequisicaoVisita.list(params), requisicaoVisitaInstanceTotal: RequisicaoVisita.count()]
    }

    def create = {
        def requisicaoVisitaInstance = new RequisicaoVisita()
        requisicaoVisitaInstance.properties = params
        return [requisicaoVisitaInstance: requisicaoVisitaInstance]
    }

    def save = {
        def requisicaoVisitaInstance = new RequisicaoVisita(params)
        if (requisicaoVisitaInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'requisicaoVisita.label', default: 'RequisicaoVisita'), requisicaoVisitaInstance.id])}"
            redirect(action: "show", id: requisicaoVisitaInstance.id)
        }
        else {
            render(view: "create", model: [requisicaoVisitaInstance: requisicaoVisitaInstance])
        }
    }

    def show = {
        def requisicaoVisitaInstance = RequisicaoVisita.get(params.id)
        if (!requisicaoVisitaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'requisicaoVisita.label', default: 'RequisicaoVisita'), params.id])}"
            redirect(action: "list")
        }
        else {
            [requisicaoVisitaInstance: requisicaoVisitaInstance]
        }
    }

    def edit = {
        def requisicaoVisitaInstance = RequisicaoVisita.get(params.id)
        if (!requisicaoVisitaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'requisicaoVisita.label', default: 'RequisicaoVisita'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [requisicaoVisitaInstance: requisicaoVisitaInstance]
        }
    }

    def update = {
        def requisicaoVisitaInstance = RequisicaoVisita.get(params.id)
        if (requisicaoVisitaInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (requisicaoVisitaInstance.version > version) {
                    
                    requisicaoVisitaInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'requisicaoVisita.label', default: 'RequisicaoVisita')] as Object[], "Another user has updated this RequisicaoVisita while you were editing")
                    render(view: "edit", model: [requisicaoVisitaInstance: requisicaoVisitaInstance])
                    return
                }
            }
            requisicaoVisitaInstance.properties = params
            if (!requisicaoVisitaInstance.hasErrors() && requisicaoVisitaInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'requisicaoVisita.label', default: 'RequisicaoVisita'), requisicaoVisitaInstance.id])}"
                redirect(action: "show", id: requisicaoVisitaInstance.id)
            }
            else {
                render(view: "edit", model: [requisicaoVisitaInstance: requisicaoVisitaInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'requisicaoVisita.label', default: 'RequisicaoVisita'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def requisicaoVisitaInstance = RequisicaoVisita.get(params.id)
        if (requisicaoVisitaInstance) {
            try {
                requisicaoVisitaInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'requisicaoVisita.label', default: 'RequisicaoVisita'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'requisicaoVisita.label', default: 'RequisicaoVisita'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'requisicaoVisita.label', default: 'RequisicaoVisita'), params.id])}"
            redirect(action: "list")
        }
    }
}
