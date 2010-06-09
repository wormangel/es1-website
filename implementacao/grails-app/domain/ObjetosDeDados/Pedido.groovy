package ObjetosDeDados

class Pedido {

    static constraints = {
        dataPedido(blank:false)
    }

    static hasMany = [itensPedido : ItemPedido]
    static belongsTo = Cliente

    Cliente cliente
    Date dataPedido
    boolean emAberto
    float custoTotal

//    float getCustoTotal() {
//        float soma = 0
//        for (item in itensPedido.values() ){
//            soma += item.subTotal()
//        }
//        return soma
//    }
}
