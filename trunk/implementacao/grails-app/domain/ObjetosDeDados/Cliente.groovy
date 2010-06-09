package ObjetosDeDados

class Cliente  {
    static hasMany = [pedidos: Pedido]

    static constraints = {
        nome(blank:false)
        email(email:true,blank:false)
    }

    String nome
    String email
    Date ultimoLogin
    String endereco
    String telefone
    String celular
    String descricao
}