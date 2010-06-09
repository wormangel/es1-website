package ObjetosDeDados

class ItemPedido {

    static constraints = {
    }

    static belongsTo = Pedido
    Pedido pedido

    Produto produto
    int quantidadeProduto
    float subTotal() {
        return produto.preco * quantidadeProduto
    }

    String toString(){
        return quantidadeProduto + "x " + produto.toString()
    }
}
