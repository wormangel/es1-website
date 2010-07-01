package ObjetosDeDados

import grails.test.*

class RequisicaoVisitaTests extends GrailsUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testCreateRequisicaoVisita() {
		
		def r = new RequisicaoVisita(nome:"José da Silva", email:"jose@email.com", telefone:"8333333333", endereco:"Rua das casas", mensagem:"Oi, Preciso de uma visita, pois quero me cadastrar! =)", emAberto: true)
		assert r.nome == "José da Silva"
		assert r.email == "jose@email.com"
		assert r.endereco == "Rua das casas"
		assert r.telefone == "8333333333"
		assert r.mensagem == "Oi, Preciso de uma visita, pois quero me cadastrar! =)"
		assert r.emAberto
		
		def r2 = new RequisicaoVisita(nome:"", email:"")
		assert r2.nome == ""
		assert r2.email == ""
		assert r2.mensagem == null
		assert !(r2.emAberto)

    }
}
