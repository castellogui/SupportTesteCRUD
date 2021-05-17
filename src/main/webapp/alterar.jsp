<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Pessoa</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <style>
            h1{
                margin: 15px 0px 0px 15px;    
            }
            .form{
                margin: 0px 30% 0px 30%;
            }
        </style>
    </head>
    <body>
        <h1 class="display-3">Support Teste CRUD</h1>
        <hr>
        <form action="executaAlterar.jsp" method="post" class="form">
            <label>Codigo: </label>
            <input type="text" name = "codigo" class="form-control" readonly="readonly" value="<%=request.getParameter("codigo")%>"/><br/>

            <label>Nome:</label>
            <input type="text" name = "nome" class="form-control" value="<%=request.getParameter("nome")%>"/><br/>

            <label>Telefone:</label>
            <input type="text" name = "telefone" class="form-control" value="<%=request.getParameter("telefone")%>"/><br/>

            <label>Email</label>
            <input type="text" name = "email" class="form-control" value="<%=request.getParameter("email")%>"/><br/>

            <button type="submit" class="btn btn-outline-secondary">Alterar</button>
            <button class="btn btn-outline-secondary" type="button" onclick="window.location.href = 'index.jsp'">Voltar</button>        
        </form>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
