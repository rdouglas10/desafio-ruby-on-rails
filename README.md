# Desafio programação - para vaga desenvolvedor Ruby on Rails

Link de acesso ao projeto hospedado no heroku: https://tranquil-badlands-43500.herokuapp.com/

Link do repositório github: https://github.com/rdouglas10/desafio-ruby-on-rails

# Implementação
* Foi implementada uma atividade que tem por finalidade, receber um arquivo.txt (CNAE) que contém as informações 
referente as operações realizadas por alguns logistas, e normalizar as informações de acordo com o respectivo tipo de cada informação.
Para tal foi utilizado como padrão o arquivo [arquivo CNAB](https://github.com/ByCodersTec/desafio-ruby-on-rails/blob/master/CNAB.txt) especificado no link.
* Após o envio do arquivo, é feita aleitura dos dados, a normalização e inserção no banco de dados.
* Os usuários podem visualizar suas informações (extrato), que são exibidos por meio de uma listagem, que são exibidas assim que o arquivo é carregado.
* As informações podem ser filtradas por loja, para que seja possível obter valores seus respectivos totalizadores.

# Versões utilizadas
* Ruby 2.5
* Rails 6.0.3.2
* Postgres 9.6.2

# Gems utilizadas
* rubocop
* simplecov
* rspec-rails

# Base de dados
* Para essa feature, foram criadas apenas duas tabelas: homes (que contém os dados das operações realizadas) e transactions (que contém os valores referência para efetuar a interpretação dos dados).


**Table Homes**


| Campos  | Tipos 
| ------------- | --------
|   id  | Inicio 
| Tipo  | varchar 
| Sinal | varchar 
| Data  | varchar  
| Valor | float 
| CPF   | varchar 
| Cartão| varchar
| Hora  | varchar 
| Dono  | varchar
| Loja  | varchar
| created_at  | timestamp
| update_at   | timestamp

**Table Transactions**

| Campos  | Tipos 
| ------------- | -------- 
| Id        | varchar
| Tipo      | varchar
| Descricao | varchar 
| Natureza  | varchar  
| Sinal     | float 
| created_at  | timestamp
| update_at   | timestamp

# Para instação
1 - Faça o clone desta aplicação (clicando to botão acima);

2 - Certifique-se que as versões que está utilizando estão compativéis com o especificado anteriormente.

3 - Execute o comando rails db:migrate para que as migrations sejam executadas.

4 - Após essa ação, com a criação da base de dados, copie os dados contidos no arquivo "/db/script/inserts-transactions.txt" localizados na raiz da aplicação,
e execute-os para que a tabela transactions (criada através das migrations) seja populada com os dados referência para a normalização.

5 - Tendo feito isso, basta somente executara a aplicação: rails server.



**That's all folks!**
