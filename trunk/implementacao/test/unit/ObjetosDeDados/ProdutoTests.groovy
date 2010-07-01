package ObjetosDeDados

import grails.test.*

class ProdutoTests extends GrailsUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testCreateProduto() {

		def p = new Produto(nome:"Produto1", preco:20.32, descricao:"Produto para realizar testes")
		assert p.nome == "Produto1"
		assert p.preco == 20.32
		assert p.descricao == "Produto para realizar testes"
		
		def p2 = new Produto(nome:"", preco:20.32, descricao:"Produto para realizar testes")
		assert p2.nome == ""
		
		def p3 = new Produto(nome:"Produto1")
		assert p3.preco != null
		assert p3.descricao == null
		
    }
	
	void testToString() {
		
		def p = new Produto(nome:"Produto1", preco:20.32, descricao:"Produto para realizar testes")
		assert p.toString() == "Produto1"
									
	}
}
