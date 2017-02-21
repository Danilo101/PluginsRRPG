# fichaRPGmeister
+ Alterar campo de luz para ficar de acordo com o usado pelos tokens do rrpg.
+ Permitir jogar token no scene a partir de imagem do personagem e companheiros.  
+ Campo de ataques 2.0 (usando recordlist + datascope).

Versao 19
- Corrigido bug nos testes de resistencia dos companheiros.
- Barra de cargas de itens atualizada. Pegando emprestado codigo da Lista de NPCs da Mia.


7 de Dezembro de 2016
Versao 18
- Corrigido BUG na soma da iniciativa. 
- Campo de Equipamento/Corpo alterado para melhor representar armadura. 
- Corrigido BUG que permitia jogadores alterarem as anotações do mestre. 
ATENCAO: Proxima versao vai exigir RRPG7.0 (SDK3.3)

17 de Novembro de 2016
Versão 17 
 - Corrigido BUG nas rolagens automaticas dos companheiros. 
 - Corrigido BUG nas rolagens de pericias quando o personagem possui meia graduação. 
 - Corrigido BUG que acontecia quando se tentava fazer um teste com personagem sem nome. O sistema alerta de maneira educada para se nomear o personagem. 
 - Criado text box editavel apenas por mestre para evitar que fiquem apagando minhas malditas anotacoes. Serio pessoal, se o mestre por algo na sua ficha: NAO APAGUE.
 - Espaco para bonus temporarios de CA trocado por pericias. 
 - Otimizações de codigo. 

3 de Setembro de 2016
Versao 16
 - Ajustes no layout para telas maiores e menores que 1366*768.
 - Rolagem de teste de falha arcana. 
 - Pequenos ajustes nos textos.
 - Multiplos companheiros permitidos. 
 - IMPORTANTE: Essa versao nao eh compativel com o companheiro da versao antiga. Tire um print e/ou copie as informacoes antes de atualizar para essa versao. 
 - Aba Geral melhor comprimida para caber na tela. 
 - Aba Magias reorganizada para caber melhor na tela. Organizacao dos circulos de magia mudada. 

30 de Junho de 2016
Versao 15
 - Pequenos ajustes no layout. 
 - Nova aba para detalhes de companheiros animais, montarias, familiares ou outras criaturas. Parceiro ainda devem usar uma ficha separada preferencialmente. Se voce cre que seu companheiro precisa de mais espaco para a ficha use uma ficha a parte.
 - Ficha exibe quantidade de paginas no grimorio que suas magias devem ocupar.
 - possivel fazer testes de conjurador da ficha.

26 de Junho de 2016
Versao 14
 - Ajustes menores.
 - Texto "Dedo ii" corrigido para "Dedo II"
 - Corrigido erro na soma do bonus de agarrar.
 - Ajuste nas Pericias geradas pelo botao "P".
 - Resolvido problema onde o valor dos PVs totais e temporarios era o mesmo.
 - Ao rolar DVs seu PV máximo eh automaticamente setado para a media. 
 - Espaco adicionado as magias para anotar coisas como escolas probidas, focos e etc. 
 - Se a CA oculta estiver vazia o jogo nao vai exibir a soma dos danos. 

1 de Junho de 2016
Versao 13
 - Texto errado corrigido. 
 - Botao para abrir o tutorial da ficha. 
 - Tamanho da ficha diminuido em ~73%. 
	Nota: A muito tempo que eu vinha trocando codigos por versoes mais eficientes, e retirando coisas desnecessarias. Mas aparentemente o compilador do rdk coloca no plugin tudo da pasta do projeto. Sendo algo que está sendo usado ou nao. Entao enquanto eu nao apagasse os codigos antigos eles iam continuar sendo colocados no plugin (e ocupando espaco desnecessario). 

31 de Maio de 2016
Versao 12
 - Ajustes menores no layout da ficha. 
 - Botao "D"efault mudado para "P"adrao.
 - Adicionado botao "O"rganizar, que organiza as pericias em ordem alfAbetica e poe as pericias sem nome pro final.
 - Atributos chave da ficha aceitam agora combinacoes de letras maiusculas e minusculas (i.e. Des, dEs, des, DES e etc.).
 - CA oculta. Com o aperto de um botao o mestre (e apenas usuarios com +Mestre) exibe campos para por valores de CA para os inimigos. Assim a ficha consegue exibir a soma dos danos, apos as rolagens de ataque. 
 - Espaco para marcar itens consumiveis. Como pocoes, varinhas, e outros itens com cargas. Ao se clicar em dados, ele rola os dados (se houver algum), para exibir quanto de dano (ou cura) gera. E exibe a CD do teste (se houver alguma). Tirando tambem uma carga do item. 
 - NOTA: A partir de agora nao planejo adicionar novas coisas a ficha por um bom tempo. Apenas corrigir pequenos bugs. 

29 de Maio de 2016
Versao 11
 - Minor Bug fixes.
 - Bug ao modificar os usos de Equipamentos resolvidos. 
 - Bug ao carregar ficha resolvido (provavelmente).
 - XP para o proximo nivel agora sera exibida formatada. 
 - Nova opcoes para magias aprimoradas de circulo 10 a 19.
 - Novas opcoes para magias epicas. 
 - Apagar magias agora possui uma caixa de confirmacao. 
 - Mudanca do esquema de cores da ficha. 
 - Aba habilidades: Talentos aumentados de 14 pra 20, outros aumentados de 14 pra 20, caracteristicas de classe aumentadas de 7 para 10.
 - Plano nativo mudado para aba descricao.
 - IMPORTANTE: Aba "Magias Old" foi deletada. Se precisar recuperar dados reverta para a versao 10.

9 de Maio de 2016
Versao 10
 - Otimizacoes de codigo. 
 - Minor Bug fixes.
 - Major bug fix: Mochila nao estava aparecendo. Precisei atualizar e lancar nova versao de emergencia. 
 - Botao que rola PVs aleatorio, assim como exibe o valor maximo daquela rolagem e o medio (que deve ser usado na mesa).
 - Botao com campo para add XP. Ponha a quantia, aperte "add" e ele já adiciona a seu total de XP. Aceita ate valores formatados (i.e. 1.000XP).

9 de Maio de 2016
Versao 09
 - Otimizacoes de codigo. 
 - Minor Bug fixes. 
 - Pagina de Inventario reajustada. 
	IMPORTANTE: Equipamentos na pagina de inventario foram APAGADOS. Para recupera-los faca downgrade para a versao 8;
 - Nova pagina de magias, com capacidade de instanciar abas e armazenar tipos diversos de magia (Signos e Magias convencionais).
	IMPORTANTE: Transfira suas magias da aba "Magias old" para "Magias". Eventualmente essa aba antiga sera apagada. 
	BUG CONHECIDO: Enquanto voce nao escolher no primeiro combo box se seu tipo de magia e signo ou magia convencional ele exibe ambas interfaces uma por cima da outra. 

5 de Maio de 2016
Versao 08
 - XP atual agora aceita valores formatados (com pontos e XP). 
 - Soma de pericias considera o dobro de custo para pericias que nao sao de classe. 
	* A nao ser que o personagem tenha pego pericias que nao sao de classe e depois transformado elas em pericias de classe com alguma segunda o terceira classe o total deve refletir sua quantidade de pontos de pericia. 
 - Campos numericos ignoram entradas nao numericas. 
 - Minor Bug Fixes. 
 * IMPORTANTE: Na proxima versao todos equipamentos (os 12 slots) na pagina de inventario nao estarao mais disponiveis. Essa e uma versao de migracao. Se voce for para a versao 09 e nao estiver feito isso faca o downgrade para a versao 8 e o faca, e depois atualize novamente. 

4 de Maio de 2016
Versao 07
 - 20 Espacos para ataques. 
 - Nova aba para Equipamentos (Espaco para nome, efeito, cargas e preco de itens).
 - Antiga aba para Equipamentos virou Inventario.
 - Equipamentos com cargas exibem quando sao utilizados (no chat ativo). 
 - Soma de Graduacoes de pericias. 

1 de Maio de 2016
Versao 06: 
 - Otimizacoes do codigo. 
 - Remocao do bug de nil exception nos atributos (novamente). 
 - Dano separado para golpes criticos. 
 - Uso automatico de municoes/cargas de varinha. 
 - Considerar buffs nas rolagens. 
 - Botao de Dano e Dano Critico adicionado. 

30 de Abril de 2016
Versao 05:
 - Atalho TAB concertado.
 - Botoes para rolagem na mesa criados. 
	* Eles rolam os dados no chat ativo.
	* Essa atualizacao vai apagar o que estiver no ataque do personagem. 
 * IMPORTANTE: Fazendo update para essa versao vai deixar indisponivel qualquer valor colocado em seus ataques. 

24 de Abril de 2016
Versao 04:
 - Adicionado botao de acesso ao change log.
 - Mudada as cores da ficha e o tema. 
 - Espaco para o Posto do Personagem adicionado.
 - Cargas automaticamente calculadas (Tudo que ja estava em carga sera perdido).
 - Alcance de visao do personagem automaticamente calculado. 

21 de Abril de 2016
Versao 03:
 - Correcao do botao "R" para "D" as pericias. 
 - Ajuste no funcionamento do botao "D"efault (nao estava colocando con. arcano).
 - Ajuste de campos de armas que estavam muito grandes (categoria, obs, municao).

20 de Abril de 2016
Versao 02:
 - Correcao de bug na atualizacao dos modificadores de atributos.
 - Troca da posicao de outros e mochila.
 - Ajustes nas imagens de background. 

19 de Abril de 2016
Versao 01 Lancada. 

Versoes Antigas:
https://www.dropbox.com/sh/ed9umrwlz98l7x3/AABBeLsudoGNalLtcMr8cppFa?dl=0


Futuras Versoes (por aba): 

GERAL
3 Setar o valor das barrinhas e do avatar atraves da ficha. 

TALENTOS
5 Instanciar (Talvez no futuro, agora está funfando legal, nao tem nenhum personagem que precise de mais de 35 espacos para habilidades de classe, raca e talentos).

MAGIA
? Adicionar novos tipos de magia.  

CREDITOS/OPCOES
* Bloquear rolagens na mesa?
* Bloquear rolagens fora da mesa?
* Exibir alteracoes das barrinhas na mesa?
* Exportar/Importar Ficha de html/json
* Tema: Plano de fundo de acordo com plano do origem do personagem (estetico apenas, entao baixa prioridade)
* Exibir contorno dos Slots usados

CODE
* Melhorar o codigo pra ficar eficiente em aparelhos android. 

BUGS CONHECIDOS: 
* Atributo das CD e Usos adicionais nao ta indo automatico quando o atributo eh alterado.
* Valores gastos em equipamentos para os companheiros nao estao somando automaticamente. 
