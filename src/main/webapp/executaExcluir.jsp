
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
               PessoaDAO pdao = new PessoaDAO();
               pdao.Excluir(Integer.parseInt(request.getParameter("codigo")));
               response.sendRedirect("index.jsp");
               
           }
           catch(Exception e){
               throw new RuntimeException("Erro 9: " + e);
           }
       
       %>
    </body>
</html>
