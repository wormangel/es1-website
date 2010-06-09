package ObjetosDeDados

class Produto {

    static constraints = {
        nome(blank:false)
        preco(nullable:false)
        descricao(nullable:true)
    }
    
    String nome;
    float preco;
    String descricao;

    String toString() {
        return nome
    }
}
