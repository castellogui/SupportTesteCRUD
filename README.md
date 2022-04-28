# SupportTesteCRUD

## Olá, Equipe Support! <img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="25px">

Este é o repositório que criei para que pudessem visualizar/baixar os arquivos do projeto que solicitaram para vaga de estágio em desenvolvimento!

Realizei o projeto em JSP, juntamente com MySQL como banco de dados relacional, criei um CRUD simples de informações pessoais. Utilizei o framework Bootstrap no front-end para deixar um pouco mais organizado e com um layout confortável e familiar.
Os testes do projeto foram feitos através de um servidor local TomCat, executado através da própria IDE.
Também deixei o script para criação do banco e da tabela utilizada juntamente na pasta src/main do projeto.

Disponibilizarei também uma cópia do projeto compactado hospedado no MediaFire no seguinte link: <a href="https://www.mediafire.com/file/hyn2b0efcxwhjgh/SupportTesteCRUD.rar/file#">Clique Aqui</a>

No fim desse repositório, descreverei também o funcionamento do projeto.

Desde já agradeço,

Guilherme Castello.

## 💻 Funcionamento
Os passos e imagens abaixo descrevem cada ação do projeto.
#### 1. Pesquisa Geral
![image](https://user-images.githubusercontent.com/78494604/165803678-44cde6ed-4ba7-455b-9ef4-cc28bf57269b.png)

Nessa imagem, ao clicar no botão Pesquisar, o usuário pode visualizar todas as pessoas cadastradas. Também é possível cadastrar diretamente uma nova pessoa ao clicar no botão Cadastrar Pessoa. Caso já tenha algum item cadastrado, também é possível editar, ou excluir o item, ao clicar no [X], em seus respectivos campos.


#### 2. Cadastrar Pessoa
![image](https://user-images.githubusercontent.com/78494604/165803927-c24c8048-cb1d-4a78-a66f-e0cdf36456ab.png)

Neste passo, os campos para preenchimento das informações aparecem, possibilitando o usuário cadastrar uma nova pessoa. (Utilizei uma pessoa teste para realizar as imagens)

#### 3. Visualizar Cadastro e Campo de Edição
![image](https://user-images.githubusercontent.com/78494604/165804252-d2d8adc2-e494-4b20-b41f-085af833f50f.png)

Na imagem acima, é possível identificar o novo item cadastrado e também é indicado o campo onde será chamado o formulário de edição.

#### 4. Editar Pessoa
![image](https://user-images.githubusercontent.com/78494604/165804423-109bdd20-d0c6-478f-bae5-3be0fefa254b.png)

Neste campo, o usuário pode realizar a edição das informações da pessoa selecionada, com excessão do campo código. Este campo não deve ser alterado para que não haja nenhum conflito com o banco de dados, já que esta coluna está definida como auto_increment. O campo estar definido como apenas leitura também possibilita visualizar a ordem em que as pessoas foram adicionadas ou removidas com mais fidelidade.

#### 5. Visualizar Edição e Campo 
![image](https://user-images.githubusercontent.com/78494604/165804745-4a71d976-ce47-41fa-a79a-5f06c604df02.png)

Neste passo, é possível identificar o item editado e também é indicado o campo onde será chamado o formulário de exclusão.

#### 6. Excluir Pessoa
![image](https://user-images.githubusercontent.com/78494604/165804920-0f8e9a69-4247-4db7-977b-73df3695f112.png)

Nesta etapa, o usuário pode apenas visualizar as informações que serão excluídas. Este formulário é utilizado como uma confirmação, para que não haja exclusões de maneira errônea.

#### 7. Visualização de Exclusão
![image](https://user-images.githubusercontent.com/78494604/165804997-d31f2155-48d1-4df7-9876-d7d1fb12b1f4.png)

Na última imagem, é possível visualizar que o item que usei de exemplo para demonstração do funcionamento, foi excluído com sucesso. Desta forma, o processo de funcionamento é finalizado, com as funcionalidades CRUD completas! 
