# README

Olá, usarei estte documento para pontuar coisas que fiz na aplicação!

A validação de email, cpf e número de telefone foram feitas a partir de métodos embutidos no ruby on rails e expressões para padronizar uma comparação e limiitar o tamanho de ambor, todas estão em app/models/users.rb

A busca está embutida na index na qual já é aberta junto da execução do servidor, vai conter alguns ultimos testes que realizei quanto a formato aceito e formatação de dados, caso o usuário deseje formatar por conta própria. A busca comporta todos os tipos de dados, como também "partes" de dados, EX: CPF do usuário é 12345678910, a busca pela chave "12345" mostrará a chave CPF, por conter parte da chave buscada.

Os dados estão disponibilizados logo abaixo da table com a pesquisa, em ordem de registro de cada usuário.

Traduzi todos os campos para português para melhor entendimento :D. Pode ser que um ou outro campo apareçam em inglês ainda.

Utilizei também de placeholders com o intruito de também orientar o possível usuário final para o cadastro e busca de usuários ;D
