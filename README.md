# FATEC_DES_WEB2_2023_Avaliacao2
Prova 2.

Desafio Técnico
Neste cadastro em PHP de alunos que poderão fazer uso do estacionamento da Fatec Araras. Os campos que devem estar cadastrados são:

Nome Completo
Placa do Carro ou Moto
Assim que cadastrados, os vigilantes poderão verificar os registros de entrada e saída (funcionalidade não implementada nesta atividade)

Seu desafio técnico é dar manutenção no sistema contido na pasta portarias. Para isso, recrie o backup do banco de dados (portaria.sql)

1- DashBoard - Área de login/logout (30% da nota)
Com uso de sessões (sessions), criar uma área de login. Permitir encessar sessão (logout). Para realizar login/logout, necessário ter um único login e senha.

Login: fatec

Senha: portaria

Ao acessar index.php via POST, se a superglobal $_POST['nome'] for 'fatec' e a superglobal $_POST['senha'] for 'portaria',

Setar a superglobal $_SESSION['online'] com o valor True
Setar a superglobal $_SESSION['username'] com o valor "Portaria Fatec"
Redirecionar para a página principal.php
2- Verificar Veículos (30% da nota)
Será possível verificar somente em uma sessão ativa. Ao tentar cadastrar em uma sessão desativada, redirecionar para a área de login.

Na primeira página (registros.php), uma caixa de seleção (combobox) com todas as placas cadastradas será apresentada.

Ao selecionar uma placa de clicar no botão Acessar, a página (registros_encontrados.php) deve apresentar todos os registros cadastrados na tabela registro.

Ao acessar a página registros_encontrados.php via GET, deve-se redirecionar para a página registros.php.

3- Cadastrar novas placas (40% da nota)
Em uma sessão ativa, permitir cadastrar na tabela veículos um novo registro, com o nome completo e a placa do veículo.

Ao acessar a página cadastro_placa.php via GET, deve-se redirecionar para a página cadastro.php.

Tecnologias: PHP Estruturado e SGBD MySQL. Para acesso ao SGBD, utilize PDO.
