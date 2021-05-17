package dao;

import model.Pessoa;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class PessoaDAO {

    private Connection conn;
    private PreparedStatement ps;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Pessoa> list = new ArrayList();

    public PessoaDAO() {
        conn = new ConnectionFactory().getConexao();
    }

    public void Inserir(Pessoa pessoa) {
        String sql = "INSERT INTO tb_pessoa (nome, telefone, email) VALUES (?, ?, ?)";

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, pessoa.getNome());
            ps.setString(2, pessoa.getTelefone());
            ps.setString(3, pessoa.getEmail());
            ps.execute();
            ps.close();
        } catch (Exception e) {
            throw new RuntimeException("Erro 2:" + e);
        }
    }

    public void Alterar(Pessoa pessoa) {
        String sql = "UPDATE tb_pessoa SET nome = ?, telefone = ?, email = ? WHERE codigo = ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, pessoa.getNome());
            ps.setString(2, pessoa.getTelefone());
            ps.setString(3, pessoa.getEmail());
            ps.setInt(4, pessoa.getCodigo());
            ps.execute();
            ps.close();

        } catch (Exception e) {
            throw new RuntimeException("Erro 3: " + e);
        }
    }

    public void Excluir(int valor) {
        String sql = "DELETE FROM tb_pessoa WHERE codigo = " + valor;
        try {
            st = conn.createStatement();
            st.execute(sql);
            st.close();

        } catch (Exception e) {
            throw new RuntimeException("Erro 4: " + e);
        }
    }

    public ArrayList<Pessoa> ListarTodos() {
        String sql = "SELECT * FROM tb_pessoa";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Pessoa pessoa = new Pessoa();
                pessoa.setCodigo(rs.getInt("codigo"));
                pessoa.setNome(rs.getString("nome"));
                pessoa.setEmail(rs.getString("email"));
                pessoa.setTelefone(rs.getString("telefone"));
                list.add(pessoa);
            }
        
        }catch(Exception e){
            throw new RuntimeException("Erro 5: " + e);
        }
        return list;
    }
    public ArrayList<Pessoa> ListarTodosNome(String valor) {
        String sql = "SELECT * FROM tb_pessoa WHERE nome LIKE '%"+valor+"%' ";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Pessoa pessoa = new Pessoa();
                pessoa.setCodigo(rs.getInt("codigo"));
                pessoa.setNome(rs.getString("nome"));
                pessoa.setEmail(rs.getString("email"));
                pessoa.setTelefone(rs.getString("telefone"));
                list.add(pessoa);
            }
        
        }catch(Exception e){
            throw new RuntimeException("Erro 6: " + e);
        }
        return list;
    }
   
}
