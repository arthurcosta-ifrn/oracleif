insert into tb_tipo_usuario(tipo_usuario) values ('ADMINISTRADOR'), ('NORMAL');

-- tb_usuario
insert into tb_usuario(id_tipo, nome, senha, status) values (1, 'ORACLEADMIN', 'Ifrn.2022', 'A');

-- tb_categoria
insert into tb_categoria (nome_categoria) values ('CANTADAS'),
                                                 ('CURIOSIDADES SOBRE O IF'),
                                                 ('FATOS ALEATÓRIOS'),
                                                 ('PIADAS');

-- tb_mensagem
insert into
	tb_mensagem (id_categoria, mensagem, referencia)
values
	(1, 'Queria que você fosse meu mouse, pra eu poder passar a mão em você toda hora.', 'https://eufacoprogramas.com/10-cantadas-de-ti-melhores/'),
	(1, 'Você é o Modem que me conecta.', 'https://eufacoprogramas.com/10-cantadas-de-ti-melhores/'),
	(1, 'Posso por meu pen-drive na sua porta USB? Pode ser na frontal ou na traseira, tanto faz.', 'https://eufacoprogramas.com/10-cantadas-de-ti-melhores/'),
	(1, 'Nem a mais potente placa de vídeo iria reproduzir os gráficos da sua beleza.', 'https://eufacoprogramas.com/10-cantadas-de-ti-melhores/'),
	(1, 'Você hackeou o Google? Porque qualquer coisa que eu procuro, sempre te encontro.', 'https://eufacoprogramas.com/10-cantadas-de-ti-melhores/'),
	(1, 'Você deve ser Windows 95, porque você me deixa instável.', 'https://eufacoprogramas.com/10-cantadas-de-ti-melhores/'),
	(1, 'Pode não acreditar, mas quando a vi pela janela, foi amor à primeira "VISTA".', 'https://eufacoprogramas.com/10-cantadas-de-ti-melhores/'),
	(1, 'Posso te chamar de CSS? Porque eu gosto do seu estilo.', 'https://eufacoprogramas.com/10-cantadas-de-ti-melhores/'),
	(1, 'Para tirar você da cabeça, só formatando!', 'https://eufacoprogramas.com/10-cantadas-de-ti-melhores/'),
	(1, '[me != me]. [me += you].', 'https://eufacoprogramas.com/10-cantadas-de-ti-melhores/'),
	(1, 'Gata, você é WIFI? Porque estou sentindo a conexão…', 'https://eufacoprogramas.com/10-cantadas-de-ti-melhores/'),
	(1, 'Gata, você é mais quente que o meu notebook.', 'https://eufacoprogramas.com/10-cantadas-de-ti-melhores/'),
	(1, 'Você me ganhou no "Hello World"', 'https://eufacoprogramas.com/10-cantadas-de-ti-melhores/'),
	(1, 'Gato… Alt V nunca + me Ctrl lei!', 'https://techdicas.net.br/as-melhores-cantadas-de-ti-parte-ii/'),
	(1, 'Gato, perto de você, eu sou como o Internet Explorer. Só de olhar pra mim que eu já travo.', 'https://techdicas.net.br/as-melhores-cantadas-de-ti-parte-ii/'),
	(1, 'Penso mais em você que as páginas indexadas pelo google.', 'https://techdicas.net.br/as-melhores-cantadas-de-ti-parte-ii/'),
	(1, 'Você é o .gif que anima minha vida.', 'https://techdicas.net.br/as-melhores-cantadas-de-ti-parte-ii/'),
	(1, 'Entre tantas variáveis, você é uma constante no meu coração.', 'https://techdicas.net.br/as-melhores-cantadas-de-ti-parte-ii/'),
	(1, 'Você é a chave estrangeira da minha entidade coração.', 'https://techdicas.net.br/as-melhores-cantadas-de-ti-parte-ii/'),
	(1, 'Gata, você não é Windows, mas que vista, hein?', 'https://www.cantadascasa.com/informatica-cantadas.html'),
	(1, 'Gata, você ainda é nova na minha vida, mas já posso te dar acesso root ao meu coração.', 'https://www.cantadascasa.com/informatica-cantadas.html'),
	(1, 'Fui falar "Oi", mas meu corretor ortográfico corrigiu para "Te Amo".', 'https://www.cantadascasa.com/informatica-cantadas.html'),
	(1, 'Gata, vem em mim que hoje estou chmod 777.', 'https://www.cantadascasa.com/informatica-cantadas.html'),
	(1, 'Gata, você não é a fonte do meu PC, mas sem você eu vivo desligado.', 'https://www.cantadascasa.com/informatica-cantadas.html'),
	(1, 'Você é professora de informática? Então abre a sua windows pra mim que eu te achei excelente.', 'https://www.cantadascasa.com/informatica-cantadas.html'),
	(1, 'Já que hoje é dia da informática, que tal a gente fazer um programinha?!', 'https://www.cantadascasa.com/informatica-cantadas.html'),
	(1, 'Gata, vamos brincar de código binário? Você me dá o 0 e eu te ponho o 1.', 'https://www.cantadascasa.com/informatica-cantadas.html');

insert into
	tb_mensagem (id_categoria, mensagem, referencia)
values
	(2, 'O IFRN tem 123 anos de idade.', 'IF ORACLE'),
	(2, 'O curso que mais aparece nos campi integrado ao ensino médio é informática.', 'IF ORACLE'),
	(2, 'O Campus Parnamirim é o único campus que oferta ensino médio integrado à mecatrônica.', 'IF ORACLE'),
    (2, 'Bruno é o nome do professor do Campus Parnamirim que não dá nota 100 no TCC de ninguém.', 'IF ORACLE'),
	(2, 'Apesar das brigas, Álvaro adora a professora Andréa, ambos do campus Parnamirim. Eles foram em Moreno, perto do Rabo da Cachorra, fazer as pazes.', 'IF ORACLE'),
	(2, 'Todo ano há exame de seleção do IFRN, com um edital, e apoio PROITEC aos estudantes de escolas públicas.', 'IF ORACLE'),
	(2, 'O reitor do IFRN atualmente é Arnóbio. A cada 4 anos, os estudantes, professores e técnicos administrativos votam para eleger reitor e diretores.', 'IF ORACLE'),
	(2, 'O Conselho Superior é o órgão de deliberação máxima do IFRN, superior até mesmo ao reitor.', 'IF ORACLE'),
	(2, 'O IFRN possui 23 campi.', 'IF ORACLE'),
	(2, 'Você deve escolher o curso e o turno que irá estudar no momento da inscrição. Cada um possui uma grade curricular de fácil acesso na página no IFRN, assim como sempre é lançada uma lista com as respectivas taxas de entrada.', 'IF ORACLE'),
	(2, 'No IFRN, você encontrará clubes, coletivos, grêmios estudantis, oportunidades de trabalho, pesquisa,e extensão, intercâmbio, de ser atleta e muito mais.', 'IF ORACLE'),
	(2, 'Todo ano, cada campus realiza os jogos internos com inúmeras categorias de esportes. Os melhores vão para o intercampi, e podem até ir competir nacionalmente.', 'IF ORACLE'),
	(2, 'Em uma pesquisa feita em 2019, mais da metade do corpo estudantil do IFRN é de baixa renda.', 'IF ORACLE'),
	(2, 'Cada campus possui o NAPNE e o NEABI, fazendo com que estudantes indígenas, LGBTQIA+, negros, pardos e com deficiência sejam bem vindos.', 'IF ORACLE'),
	(2, 'Cada campus possui setor médico e dentário disponíveis para os estudantes.', 'IF ORACLE'),
	(2, 'O WiFI chamado Eduroam serve para todos os campi de qualquer instituto federal de todo o país.', 'IF ORACLE');

insert into
	tb_mensagem (id_categoria, mensagem, referencia)
values
	(3, 'Cerca de 72 horas de conteúdo são enviadas ao site de vídeos Youtube a cada minuto.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'O monte Everest cresce 4 milímetros por ano.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'A barragem da maior usina hidrelétrica do mundo, a Usina das Três Gargantas, localizada na China, prolongaria a duração do dia em 0,66 microssegundos. Isso, aliás, seria possível se ela operasse em sua capacidade máxima, devido à enorme massa de água que ela comporta.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'Certamente você já viu o fenômeno da Superlua. Durante ela, calcula-se que o diâmetro lunar possa aumentar em até 14%.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'Existe uma lâmpada que está ligada há mais de 113 anos na cidade de Livermore, na Califórnia.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'O cérebro humano é formado, basicamente, por 75% de água.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'O cachorro-quente foi criado na Alemanha do século XV.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'Cangurus, não param de crescer mesmo atingindo a idade adulta. Além disso, outros animais também são assim.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'Acima de tudo, um adulto respira 550 litros de oxigênio puro diariamente.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, '4% da população mundial é canhota.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'Certamente, a maior palavra da língua portuguesa refere-se a uma doença causada pela respiração de cinzas vulcânicas: pneumoultramicroscopicossilicovulcanoconiótico.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'O nome oficial do Brasil é República Federativa do Brasil.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'Acima de tudo, Brasil significa “vermelho como brasa”.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'O Brasil é o quinto maior país do mundo.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'O Brasil é o maior produtor de café do mundo..', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'O Brasil é também o país que mais desmata a natureza em todo o mundo.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, '12 das 30 cidades mais violentas do mundo, estão localizadas no Brasil.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, ' A Floresta Amazônica, certamente, é a responsável pelo Brasil ter a maior biodiversidade do mundo.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'Toda moeda circulante e oficial do Brasil é produzida na Casa da Moeda, no Rio de Janeiro.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'Tocantins, fundado em 1988, é o estado mais novo do Brasil.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'A feijoada é considerada o prato nacional do Brasil. Contudo, sabemos que sua origem é africana.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'Primeiramente, o Brasil é o país que possui a maior comunidade japonesa fora do Japão. Além disso, em São Paulo, moram mais de 600 mil japoneses.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'O calendário da Etiópia, basicamente, é sete anos atrasado em relação a todo o ocidente.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'A avenida mais larga do mundo fica na Argentina.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'Mais de 10% de toda a biodiversidade do mundo é encontrada no continente australiano.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'A Rússia é o maior país do mundo, ocupando cerca de 10% de toda a terra do planeta.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'Na Holanda o número de bicicletas ultrapasse três vezes o número de veículos.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'O menor país do mundo é o Vaticano, com cerca de 800 habitantes oficiais.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/'),
	(3, 'O Sol converte cerca de 600 milhões de toneladas de hidrogênio em hélio a cada segundo.', 'https://segredosdomundo.r7.com/curiosidades-aleatorias/');
																	



insert into
	tb_mensagem (id_categoria, mensagem, referencia)
values 
	(4, 'Sou professora da segunda série do ensino fundamental numa escola de minha cidade. No dia da primeira avaliação de ciências naturais, perguntei aos alunos: – Qual a estrela mais próxima da Terra? Uma aluna, achando-se preparada, respondeu de imediato: – A estrela cadente.', 'https://www.selecoes.com.br/humor/melhores-piadas-de-escola/'),
	(4, 'O pai pergunta à filha: — Filha, você acha que sua professora desconfia que estou fazendo suas lições de casa? — Acho que sim, pai. Ela até disse que você deveria voltar pra escola!', 'https://www.selecoes.com.br/humor/melhores-piadas-de-escola/'),
	(4, 'Voltando da escola, a mãe de Joãozinho pergunta como foi a prova e ele responde: — Como no Polo Norte. — Como assim? — Tudo abaixo de zero!', 'https://www.selecoes.com.br/humor/melhores-piadas-de-escola/'),
	(4, 'Professor: Qual é a velocidade da luz? Aluno: Não sei ao certo, mas de manhã sempre chega rápido demais.', 'https://www.selecoes.com.br/humor/melhores-piadas-de-escola/'),
	(4, 'Professor: Qual é a velocidade da luz? Aluno: Não sei ao certo, mas de manhã sempre chega rápido demais.', 'https://www.selecoes.com.br/humor/melhores-piadas-de-escola/'),
	(4, 'Um aluno pergunta ao professor: — Professor, arroz é com S ou com Z? E o professor responde: — Aqui eu não sei, mas lá em casa é com feijão!.', 'https://www.selecoes.com.br/humor/melhores-piadas-de-escola/'),
	(4, '— Quero ver seu boletim! — Infelizmente não vai dar! — Como não vai dar ? — Eu emprestei pra um amigo… ele queria dar um susto no pai dele!', 'https://www.selecoes.com.br/humor/melhores-piadas-de-escola/'),
	(4, 'Joãozinho pede ajuda a seu avô para encontrar o m.m.c e ele responde — Mas ainda não encontraram?! Desde a minha época procuram esse sujeito!', 'https://www.selecoes.com.br/humor/melhores-piadas-de-escola/'),
	(4, '— Quero ver seu boletim! — Infelizmente não vai dar! — Como não vai dar? — Eu emprestei pra um amigo… ele queria dar um susto no pai dele!', 'https://www.selecoes.com.br/humor/melhores-piadas-de-escola/'),
	(4, 'Joãozinho chega atrasado à escola. Quando ele entra na sala de aula, a professora diz: - De novo atrasado, Joãozinho?
	- Ué, professora! Não é a senhora que diz que nunca é tarde para aprender?', 'https://www.maioresemelhores.com/piadas-de-joaozinho/'),
	(4, '- Mãe, meus amigos estão dizendo que eu sou interesseiro. - Quais amigos, Joãozinho? - Se você me der 10 reais eu te conto.', 'https://www.maioresemelhores.com/piadas-de-joaozinho/'),
	(4, 'A professora pergunta para o Joãozinho: - Joãozinho, por que você não fez a lição de casa? - Porque eu moro em apartamento.', 'https://www.maioresemelhores.com/piadas-de-joaozinho/'),
	(4, 'Joãozinho chegou em casa pulando de alegria. - Mãe! Mãe! Hoje a professora fez uma pergunta pra classe e eu fui o único a levantar a mão! - Mas que boa notícia, filho! E o que foi que ela perguntou? - Quem não fez a lição de casa.', 'https://www.maioresemelhores.com/piadas-de-joaozinho/'),
	(4, 'Joãozinho pergunta para sua mãe: - Mãe, a senhora sabia que vermelho é a cor do amor? - Claro que sim, filho. - Te amo, mãe. Toma aqui meu boletim.', 'https://www.maioresemelhores.com/piadas-de-joaozinho/'),
	(4, 'J- Joãozinho, conjugue o verbo andar. - Eu ando, tu andas, ele anda, nós... - Mais rápido, Joãozinho! - Eu corro, tu corres, ele corre, nós...', 'https://www.maioresemelhores.com/piadas-de-joaozinho/');
