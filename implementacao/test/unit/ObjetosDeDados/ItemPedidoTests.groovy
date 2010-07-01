package ObjetosDeDados

import grails.test.*

class ItemPedidoTests extends GrailsUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testCreatePedido() {
	
		def p = new Produto(nome:"Produto1", preco:20.32, descricao:"Produto para realizar testes")
		
		def i = new ItemPedido(quantidadeProduto:5, produto:p)
		//assert quantidadeProduto == 5
		assert i.produto.nome == p.nome
		
    }
	
	void testSubtotal() {
		
		def p = new Produto(nome:"Produto1", preco:20.32, descricao:"Produto para realizar testes")
		def p2 = new Produto(nome:"Produto2", preco:50.10, descricao:"Produto para realizar testes")
		
		def i = new ItemPedido(quantidadeProduto:5, produto:p)
		/*assert i.subTotal() == 5 * 20.32
		
		i.quantidadeProduto = 10
		assert i.subTotal() == 10 * 20.32
		
		i.produto = p2
		assert i.subTotal() == 10 * 50.10
		*/
	}
	
	void testToString() {
		
		def p = new Produto(nome:"Produto1", preco:20.32, descricao:"Produto para realizar testes")
		def p2 = new Produto(nome:"Produto2", preco:50.10, descricao:"Produto para realizar testes")
		
		def i = new ItemPedido(quantidadeProduto:5, produto:p)
		assert i.toString() == 5 + " x " + p.toString()
		
		i.quantidadeProduto = 10
		assert i.toString() == 10 + " x " + p.toString()
		
		i.produto = p2
		assert i.toString() == 10 + " x " + p2.toString()
		
	}
}
