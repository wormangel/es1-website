package ObjetosDeDados

import grails.test.*

class ClienteTests extends GrailsUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testCreateCliente() {

		def c = new Cliente(nome:"José da Silva", email:"jose@email.com", endereco:"Rua das casas", telefone:"8333333333", celular:"8388888888")
		assert c.nome == "José da Silva"
		assert c.email == "jose@email.com"
		assert c.endereco == "Rua das casas"
		assert c.telefone == "8333333333"
		assert c.celular == "8388888888"
		
		def c2 = new Cliente(nome:"")
		assert c2.nome == ""
		
		def c3 = new Cliente(nome:"José da Silva", email:"", endereco:"Rua das casas", telefone:"8333333333", celular:"8388888888")
		assert c3.email == ""
		assert c3.ultimoLogin == null
		
    }
}
