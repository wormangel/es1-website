package ObjetosDeDados

class Cliente {
    static hasMany = [pedidos: Pedido]

    String nome
    String email
    Date ultimoLogin
    String endereco
    String telefone
    String celular

    static constraints = {
        nome(blank:false)
        email(email:true,blank:false)
        endereco()
        telefone()
        celular()
        ultimoLogin(nullable:true)
    }


}