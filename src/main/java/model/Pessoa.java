
package model;


public class Pessoa {
    private int codigo;
    private String nome, telefone, email;

    public Pessoa() {
    }

    public Pessoa(String nome, String telefone, String email) {
        this.nome = nome;
        this.telefone = telefone;
        this.email = email;
    }

    public Pessoa(int codigo, String nome, String telefone, String email) {
        this(nome, telefone, email );
        this.codigo = codigo;
    }
    

    //GETTERS
    public int getCodigo() {
        return codigo;
    }

    public String getNome() {
        return nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public String getEmail() {
        return email;
    }
    
    //SETERS

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
}
