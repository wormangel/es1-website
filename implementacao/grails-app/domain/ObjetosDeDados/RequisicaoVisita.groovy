package ObjetosDeDados

class RequisicaoVisita {

    static constraints = {
        nome(blank:false)
        email(email:true,blank:false)
        telefone()
        endereco()
        mensagem(blank:false)
    }

    String nome
    String email
    String telefone
    String endereco
    String mensagem
    boolean emAberto
}
