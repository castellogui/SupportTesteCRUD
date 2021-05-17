# SupportTesteCRUD

## Olá Equipe Support! <img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="25px">

Este é o repositório que criei para que pudessem visualizar/baixar os arquivos do projeto que solicitaram para vaga (Nº196329) de estágio pelo NUBE!

Realizei o projeto em JSP, juntamente com MySQL como banco de dados relacional, criei um CRUD simples de informações pessoais. Utilizei o framework Bootstrap no front-end para deixar um pouco mais organizado.
Também deixei o script para criação do banco e da tabela utilizada juntamente na pasta src/main do projeto.

Disponibilizarei também uma cópia do projeto compactado hospedado no MediaFire no seguinte link: <a href="https://www.mediafire.com/file/hyn2b0efcxwhjgh/SupportTesteCRUD.rar/file#">Clique Aqui</a>

No fim desse repositório, descreverei também o funcionamento do projeto.

Desde já agradeço,

Guilherme Castello.

## 💻 Funcionamento
Os passos e imagens abaixo descrevem cada ação do projeto.
#### 1. Pesquisa Geral
<img src="https://www.imagemhost.com.br/images/2021/05/17/1.-pesquisa-geral.jpg" alt="1.-pesquisa-geral.jpg" border="0" />
Nessa imagem, ao clicar no botão Pesquisar, o usuário pode visualizar todas as pessoas cadastradas. Também é possível cadastrar diretamente uma nova pessoa ao clicar no botão Cadastrar Pessoa. Caso já tenha algum item cadastrado, também é possível editar, ou excluir o item, ao clicar no [X], em seus respectivos campos.


#### 2. Cadastrar Pessoa
<img src="https://www.imagemhost.com.br/images/2021/05/17/2.-cadastrar.jpg" alt="2.-cadastrar.jpg" border="0" />
Neste passo, os campos para preenchimento das informações aparecem, possibilitando o usuário cadastrar uma nova pessoa. (Utilizei uma pessoa teste para realizar as imagens)

#### 3. Visualizar Cadastro e Campo de Edição
<img src="https://www.imagemhost.com.br/images/2021/05/17/3.-clicar-editar.jpg" alt="3.-clicar-editar.jpg" border="0" />
Na imagem acima, é possível identificar o novo item cadastrado e também é indicado o campo onde será chamado o formulário de edição.

#### 4. Editar Pessoa
<img src="https://www.imagemhost.com.br/images/2021/05/17/4.-editar.jpg" alt="4.-editar.jpg" border="0"></a>
Neste campo, o usuário pode realizar a edição das informações da pessoa selecionada, com excessão do campo código. Este campo não deve ser alterado para que não haja nenhum conflito com o banco de dados, já que esta coluna está definida como auto_increment. O campo estar definido como apenas leitura também possibilita visualizar a ordem em que as pessoas foram adicionadas ou removidas com mais fidelidade.

#### 5. Visualizar Edição e Campo 
<img src="https://www.imagemhost.com.br/images/2021/05/17/5.-clicar-excluir.jpg" alt="5.-clicar-excluir.jpg" border="0"></a>
Neste passo, é possível identificar o item editado e também é indicado o campo onde será chamado o formulário de exclusão.

#### 6. Excluir Pessoa
<img src="https://www.imagemhost.com.br/images/2021/05/17/6.-excluir.jpg" alt="6.-excluir.jpg" border="0"></a>
Nesta etapa, o usuário pode apenas visualizar as informações que serão excluídas. Este formulário é utilizado como uma confirmação, para que não haja exclusões de maneira errônea.

#### 7. Visualização de Exclusão
<img src="https://www.imagemhost.com.br/images/2021/05/17/7.-pesquisa-excluido.jpg" alt="7.-pesquisa-excluido.jpg" border="0" />
Na última imagem, é possível visualizar que o item que usei de exemplo para demonstração do funcionamento, foi excluído com sucesso. Desta forma, o processo de funcionamento é finalizado, com as funcionalidades CRUD completas! 
