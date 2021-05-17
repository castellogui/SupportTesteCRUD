
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "model.Pessoa" %>
<%@page import= "dao.PessoaDAO" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           try{
               Pessoa pessoa = new Pessoa();
               PessoaDAO pdao = new PessoaDAO();
               if(request.getParameter("nome").equals("") || request.getParameter("telefone").equals("") || request.getParameter("email").equals("")){
                   response.sendRedirect("index.jsp");
               }else{
                   pessoa.setNome(request.getParameter("nome"));
                   pessoa.setTelefone(request.getParameter("telefone"));
                   pessoa.setEmail(request.getParameter("email"));
                   pdao.Inserir(pessoa);
                   response.sendRedirect("index.jsp");
               }
           }
           catch(Exception e){
               throw new RuntimeException("Erro 7: " + e);
           }
       
       %>
    </body>
</html>
