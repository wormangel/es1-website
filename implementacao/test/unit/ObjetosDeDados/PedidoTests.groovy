package ObjetosDeDados

import grails.test.*

class PedidoTests extends GrailsUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testCreatePedido() {
		def c = new Cliente(nome:"José da Silva", email:"jose@email.com", endereco:"Rua das casas", telefone:"8333333333", celular:"8388888888")
		def c2 = new Cliente(nome:"João da Silva", email:"joao@email.com", endereco:"Rua das casas", telefone:"8333333333", celular:"8388888888")
		
		def p = new Pedido(cliente: c, emAberto: true)
		assert p.cliente.nome == "José da Silva"
		assert p.emAberto
		
		p.cliente = c2
		assert p.cliente.nome == "João da Silva"
    }
}
