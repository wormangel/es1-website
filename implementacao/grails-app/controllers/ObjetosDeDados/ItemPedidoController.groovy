package ObjetosDeDados

class ItemPedidoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [itemPedidoInstanceList: ItemPedido.list(params), itemPedidoInstanceTotal: ItemPedido.count()]
    }

    def create = {
        def itemPedidoInstance = new ItemPedido()
        itemPedidoInstance.properties = params
        return [itemPedidoInstance: itemPedidoInstance]
    }

    def save = {
        def itemPedidoInstance = new ItemPedido(params)
        if (itemPedidoInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'itemPedido.label', default: 'ItemPedido'), itemPedidoInstance.id])}"
            redirect(action: "show", id: itemPedidoInstance.id)
        }
        else {
            render(view: "create", model: [itemPedidoInstance: itemPedidoInstance])
        }
    }

    def show = {
        def itemPedidoInstance = ItemPedido.get(params.id)
        if (!itemPedidoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'itemPedido.label', default: 'ItemPedido'), params.id])}"
            redirect(action: "list")
        }
        else {
            [itemPedidoInstance: itemPedidoInstance]
        }
    }

    def edit = {
        def itemPedidoInstance = ItemPedido.get(params.id)
        if (!itemPedidoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'itemPedido.label', default: 'ItemPedido'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [itemPedidoInstance: itemPedidoInstance]
        }
    }

    def update = {
        def itemPedidoInstance = ItemPedido.get(params.id)
        if (itemPedidoInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (itemPedidoInstance.version > version) {
                    
                    itemPedidoInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'itemPedido.label', default: 'ItemPedido')] as Object[], "Another user has updated this ItemPedido while you were editing")
                    render(view: "edit", model: [itemPedidoInstance: itemPedidoInstance])
                    return
                }
            }
            itemPedidoInstance.properties = params
            if (!itemPedidoInstance.hasErrors() && itemPedidoInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'itemPedido.label', default: 'ItemPedido'), itemPedidoInstance.id])}"
                redirect(action: "show", id: itemPedidoInstance.id)
            }
            else {
                render(view: "edit", model: [itemPedidoInstance: itemPedidoInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'itemPedido.label', default: 'ItemPedido'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def itemPedidoInstance = ItemPedido.get(params.id)
        if (itemPedidoInstance) {
            try {
                itemPedidoInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'itemPedido.label', default: 'ItemPedido'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'itemPedido.label', default: 'ItemPedido'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'itemPedido.label', default: 'ItemPedido'), params.id])}"
            redirect(action: "list")
        }
    }
}
