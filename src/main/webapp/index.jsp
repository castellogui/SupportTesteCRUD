
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Pessoa"%>
<%@page import="dao.PessoaDAO"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Support Teste CRUD</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <style>
            h1{
                margin: 15px 0px 0px 15px;    
            }

            .pesquisa{
                margin: 0px 5% 0px 5%;
            }
        </style>
    </head>
    <body>
        <h1 class="display-3">Support Teste CRUD</h1>
        <hr>
        <form action="index.jsp" method="post">
            <div class="pesquisa">
                <label>Nome: </label>
                <div class="input-group">
                    <input type="text" name="nome" class="form-control" placeholder="Pesquisar por nome">
                    <div class="input-group-append" id="button-addon4">
                        <button class="btn btn-outline-secondary" type="submit">Pesquisar</button>
                        <button class="btn btn-outline-secondary" type="button" onclick="window.location.href = 'inserir.jsp'">Cadastrar Pessoas</button>
                    </div>
                </div>
                <small class="form-text text-muted">Digite acima o nome da pessoa que deseja encontrar.</small>
            </div>

        </form>
        <hr>


        <%
            try {
                out.print("<table class='table table-hover'>");
                out.print("<thead class='thead-light'>");
                out.print("<tr>");
                out.print("<th>#</th><th>Nome</th><th>Telefone</th><th>Email</th><th>Editar</th><th>Excluir</th>");
                out.print("</thead>");
                PessoaDAO pdao = new PessoaDAO();
                if (request.getParameter("nome") == "" || request.getParameter("nome") == null) {
                    ArrayList<Pessoa> lista = pdao.ListarTodos();
                    for (int num = 0; num < lista.size(); num++) {
                        out.print("<tbody>");
                        out.print("<tr>");
                        out.print("<td>" + lista.get(num).getCodigo() + "</td>");
                        out.print("<td>" + lista.get(num).getNome() + "</td>");
                        out.print("<td>" + lista.get(num).getTelefone() + "</td>");
                        out.print("<td>" + lista.get(num).getEmail() + "</td>");
                        out.print("<td><a href='alterar.jsp?codigo=" + lista.get(num).getCodigo() + "&nome=" + lista.get(num).getNome() + "&telefone=" + lista.get(num).getTelefone() + "&email=" + lista.get(num).getEmail() + "'>[X]</a></td>");
                        out.print("<td><a href='excluir.jsp?codigo=" + lista.get(num).getCodigo() + "&nome=" + lista.get(num).getNome() + "&telefone=" + lista.get(num).getTelefone() + "&email=" + lista.get(num).getEmail() + "'>[X]</a></td>");
                        out.print("</tr>");
                        out.print("</tbody>");
                    }
                } else {
                    ArrayList<Pessoa> lista = pdao.ListarTodosNome(request.getParameter("nome"));
                    for (int num = 0; num < lista.size(); num++) {
                        out.print("<tbody>");
                        out.print("<tr>");
                        out.print("<td>" + lista.get(num).getCodigo() + "</td>");
                        out.print("<td>" + lista.get(num).getNome() + "</td>");
                        out.print("<td>" + lista.get(num).getTelefone() + "</td>");
                        out.print("<td>" + lista.get(num).getEmail() + "</td>");
                        out.print("<td><a href='alterar.jsp?codigo=" + lista.get(num).getCodigo() + "&nome=" + lista.get(num).getNome() + "&telefone=" + lista.get(num).getTelefone() + "&email=" + lista.get(num).getEmail() + "'>[X]</a></td>");
                        out.print("<td><a href='excluir.jsp?codigo=" + lista.get(num).getCodigo() + "&nome=" + lista.get(num).getNome() + "&telefone=" + lista.get(num).getTelefone() + "&email=" + lista.get(num).getEmail() + "'>[X]</a></td>");
                        out.print("</tr>");
                        out.print("</tbody>");
                    }
                }

                out.print("</tr>");
                out.print("</table>");

            } catch (Exception e) {
                throw new RuntimeException("Erro 10: " + e);
            }

        %>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
