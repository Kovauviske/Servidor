waitUntil {!isNull player && player == player};
if(player diarySubjectExists "Regras")exitwith{};

player createDiarySubject ["EASY","Contato"];
player createDiarySubject ["Regrasdoservidor","Regras Gerais"];
player createDiarySubject ["Regraspolicia","Regras Gerais 2"];
player createDiarySubject ["zonasegura","Safe Zones"];
player createDiarySubject ["areailegal","Áreas Ilegas"];
player createDiarySubject ["zonasemlei","Zona sem Leis"];
player createDiarySubject ["farms","PREÇOS DE LICENÇAS"];
player createDiarySubject ["controles","Controles Básicos"];
player createDiarySubject ["money","Ressarcimentos"];
player createDiarySubject ["credito","Agradecimentos"];
player createDiarySubject ["update","Changelogs"];

	player createDiaryRecord ["credito",
		[
			"Agradecimentos, Créditos e Dedicatórias",
				"
				<br/>
				Agradecimentos:<br/>
				* Aos DEVs<br/>
				* Agradecimento Especial aos Doadores e aos nossos Admins<br/>
				que ajudam a manter o servidor aberto.<br/>
				<br/>
				"
		]
	];

	player createDiaryRecord ["Regrasdoservidor",
		[
			"Regras BÁSICAS de comportamento",
				"
				1. Leia as regras e faça um bom roleplay.<br/>
				2. Se comporte nas Safe Zones.<br/>
				3. Não campere respawn.<br/>
				4. Não faça nunca kamikaze com veículos ou helis.<br/>
				5. Jamais atropele players.<br/>
				6. Respeito antes de tudo, não aceitamos insultos.<br/>
				7. Não faça random kill.<br/>
				8. Aguarde 15 minutos para voltar a uma operação.<br/>
				9. Ao chamar o SAMU aguarde a chegada do mesmo e caso<br/>
				for revivido em operação é obrigatório abandonar o lugar<br/>
				acompanhado do médico.<br/>
				10. Você NÃO pode matar alguem que acaba de ser revivido<br/>
				pelo SAMU.<br/>
				11. Reporte qualquer problema para os Admins.<br/>
				12. O jogador que cause um problema deverá ressarcir o<br/>
				contrário.<br/>
				13. Políciais usem ônibus apenas em casos extremos,<br/>
				quando você precisar ir á um outro local muito rápido,<br/>
				quando haver reserva, etc.<br/>
				"
		]
	];

	player createDiaryRecord ["Regrasdoservidor",
		[
			"MOTIVOS PARA BAN!",
				"
				Os itens abaixo são considerados abuso de bugs. Agindo <br/>
				em um dos termos abaixo, implicará em BANIMENTO.<br/><br/>
				1. Suicidar-se para fugir do roleplay. Deslogar quando<br/>
				estiver sendo abordado pela polícia, preso, etc.<br/>
				2. Duplicar itens e/ou dinheiro. ATENÇÃO: Se alguém lhe<br/>
				enviar, sem razão aparente dinheiro, ou lhe oferecer<br/>
				veículo ou ainda vantagem, avise ao ADM. Ficar calado,<br/>
				tirando proveito de possível Hack resultará em BANIMENTO<br/>
				PERMANENTE.<br/>
				3. Usar qualquer item spawnado por hack.<br/>
				4. Utilizar de bugs ou da mecânica do jogo. Encontrou<br/>
				uma arma dupada? Avise ao administrador imediatamente.<br/>
				NÃO FAÇA USO DE ITENS DUPLICADOS.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regrasdoservidor",
		[
			"Hack / Cheater e bug.",
				"
				Bans, Considere este seu primeiro e útimo aviso.<br/><br/>
				1. Utilizar hack.<br/>
				2. Utilizar qualquer método de cheat.<br/>
				3. Fazer uso de bugs.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regrasdoservidor",
		[
			"Regras de Comunicação civil/rebelde",
				"
				Os Itens nesta lista podem resultar em ban temporário<br/>
				ou permanente, baseado no julgamento do Adm.<br/><br/>
				1. Não use o sidechat para reproduzir MÚSICAS.<br/>
				2. Spam no sidechannel pode resultar em ban.<br/>
				3. Quando for contactar a polícia, dê DETALHES sobre<br/>
				o crime o que esta acontecendo e o lugar. Tente não<br/>
				floodar o canal da polícia.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regrasdoservidor",
		[
			"Random Deathmatching (RDM)",
				"
				Os Itens nesta lista podem resultar em ban temporário<br/>
				ou permanente, baseado no julgamento do Adm.<br/><br/>
				1. IMPORTANTE: A forma de anunciar assalto é escrevendo<br/>
				no canal de comunicação direta. Portanto você deve<br/>
				estar perto do outro player.<br/>
				2. Não pode matar civil sem anunciar.<br/>
				3. No caso de terrorismo declarado em alguma cidade,<br/>
				é permitido matar a todos, desde que dado o devido<br/>
				tempo para evacuação.<br/>
				4. Matar alguém para se proteger ou proteger os outros,<br/>
				não é considerado Random Kill.<br/>
				5. No Roleplay, atirar no outro jogador sem dar tempo<br/>
				que ele faça o que você pediu, é considerado random kill.<br/>
				6. Civil que se encontrar no meio de um PvP e for<br/>
				morto por engano não é considerado Random Kill.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regrasdoservidor",
		[
			"Assaltos / Roubos de veículos / Rim",
				"
				1. Tenha em conta a regra anterior, não chegue atirando,<br/>
				anuncie as suas intenções.<br/>
				2. Use o bom senso, o player se rendeu? É necessário<br/>
				matá-lo? Role-play por favor!.<br/>
				3. Se você roubou um veículo ou heli, peça um resgate<br/>
				para a gangue ou proprietário por um valor razoável,<br/>
				caso ele não se interesse em recuperá-lo ou não cheguem<br/>
				a um acordo você decide o final que vai dar a ele.<br/>
				4. Não roube um veículo ou heli pelo simples fato de<br/>
				destruí-lo, isso é anti-roleplay.<br/>
				5. Jamais faça nada disto em uma safe zone.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regrasdoservidor",
		[
			"SAMU",
				"
				1. Se você chamar o SAMU aguarde até a chegada do mesmo.<br/>
				2. Proibido matar ou roubar SAMU, incluído os veículos,<br/>
				passivo de BAN.<br/>
				3. Obrigatório acompanhar o SAMU após ser revivido em<br/>
				combate.<br/>
				4. Tenha em mente que, ao chamar o SAMU, seu tempo<br/>
				de respawn será de 8 minutos, ou seja, dará tempo<br/>
				de sobra para o SAMU lhe reviver.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regrasdoservidor",
		[
			"RESERVA FEDERAL",
				"
				IMPORTANTE: Para assaltar a Reserva será necessário ter<br/>
				NO MÍNIMO 5 COPS ONLINE, SENDO 2 DE PATENTE MAIS ALTA<br/>
				QUE SOLDADO (EXEMPLO SARGENTO).<br/><br/>
				1. Entrar na Reserva Federal é proibido, exceto para<br/>
				pessoas previamente autorizadas.<br/>
				2. Helicópteros sobrevoando a Reserva podem ser abatidos.<br/>
				3. Se a Reserva estiver sendo roubada, é encorajado<br/>
				aos policiais que se dirijam até a mesma para evitar o<br/>
				assalto.<br/>
				4. Oficiais mais próximos devem se dirigir o quanto<br/>
				antes a Reserva. Crimes menores devem ser deixados<br/>
				de lado.<br/>
				5. Força letal pode ser utilizada, embora seja preferível<br/>
				prender o jogador.<br/>
				6. Todos os civis próximos devem ser evacuados.<br/>
				7. Qualquer civil que esteja tentando bloquear ou<br/>
				atrapalhar a polícia, será tratado como hostil.<br/>
				8. A polícia atacará com máxima força. Toda a polícia<br/>
				do server será redirecionada para Reserva e faremos<br/>
				blitz por todas as ruas, qualquer um perto da reserva<br/>
				será parado e revistado se não quiser parar será<br/>
				Morto ou Preso.<br/>
				9. Todas as Aeronaves próximas a Reserva serão abatidas<br/>
				sem aviso!.<br/>
				10. Rebeldes Poderão atacar com força máxima.<br/>
				11. É totalmente proibido atropelar.<br/>
				12. Veículos blindados e armados são permitidos.<br/>
				13. Lembre-se que reserva é chance de morte, território<br/>
				perigoso e de máxima segurança, se você tomar a decisão<br/>
				de participar de um assalto a mesma saiba que será a<br/>
				Guerra então sem choro. É chance de roubar e ganhar<br/>
				uma grana isso não é WASTELAND.<br/>
				14. Morreu? Aguarde 15 minutos para voltar.<br/>
				15. Aguardar o intervalo de no mínimo 40 min. entre<br/>
				o fim de uma reserva e início da próximo ação.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regrasdoservidor",
		[
			"Regras Rebeldes",
				"
				1. Ser um rebelde não te permite fazer random kill<br/>
				fora da zona sem lei. Leia a regra do Random kill com<br/>
				atenção.<br/>
				2. Morreu durante o PvP? Aguarde 15 minutos para<br/>
				voltar. Somente a policia pode voltar sempre e<br/>
				quando tiver 3 ou menos cops online.<br/>
				3. Um rebelde DEVE fazer o roleplay, e não somente<br/>
				matar polícia e roubar a Reserva.<br/>
				4. Se você for abordado por um policial com arma<br/>
				rebelde, a arma será apreendida e você será multado,<br/>
				lembre que a regra vale também para safe zone.<br/>
				5. Cada ataque rebelde deve ter uma razão. NÃO<br/>
				FAÇA TERRORISMO A TOA. ALTIS LIFE NÃO É WASTELAND!.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regrasdoservidor",
		[
			"Regras Gangues",
				"
				1. Estar numa gangue não é ilegal.<br/>
				2. Estar em uma área de gangue não é ilegal.<br/>
				3. Gangs podem tomar o controle de áreas de gangue, e<br/>
				podem entrar em conflito com outras gangues pelo<br/>
				território.<br/>
				4. Para declarar guerra contra outra gangue, os	líderes<br/>
				devem estar	de acordo.<br/>
				5. Gangues não podem matar civis desarmados.<br/>
				6. No caso de gangue com cidade na Zona sem lei,<br/>
				se você estiver sendo perseguido ou em PvP, você NÃO<br/>
				PODE fugir paraa sua cidade nem para o Vip ou<br/>
				Safe Zone,nesse caso a Polícia pode seguir com a<br/>
				perseguição.<br/>
				7. Proibido matar players que estejam dentro da cidade<br/>
				protegida de sua Gangue.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regrasdoservidor",
		[
			"Botes/Barcos",
				"
				Os Itens nesta lista podem resultar em ban temporário ou permanente,<br/>
				baseado no julgamento do Adm.<br/><br/>
				1. Empurrar barcos sem permissão.<br/>
				2. Empurrar os barcos para machucar ou matar alguém,<br/>
				semelhante ao atropelamento.<br/>
				3. Trollar nadadores ou mergulhadores com o barco.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regrasdoservidor",
		[
			"Aviacao/Helis",
				"
				Os Itens nesta lista podem resultar em ban temporário ou permanente,<br/>
				baseado no julgamento do Adm.<br/><br/>
				1. Propositadamente jogar o helicóptero contra qualquer coisa,<br/>
				incluindo outros helicópteros ou casas/edifícios. Proibido<br/>
				Kamikaze.<br/>
				2. Voar ABAIXO DE 150 metros acima das cidades principais.<br/>
				Uma vez já é ilegal, fazer com frequência vai gerar<br/>
				banimento. Respeite o aviso da Polícia.<br/>
				3. Roubar helicópteros sem dar tempo ao piloto para trancá-lo.<br/>
				Se o piloto pousar e sair de perto sem trancar OK, se ele tão<br/>
				somente sair da aeronave, e você entrar em seguida é<br/>
				anti-roleplay. Jogue certo, evite BAN!.<br/>
				4. Helicópteros não podem pousar nas safe zones sem<br/>
				autorização	policial.<br/>
				5. Helicópteros não podem pousar nas ruas.<br/>
				6. A polícia pode proibir pousos e decolagens.<br/>
				7. Helicópteros não podem voar abaixo de 150 metros sobre<br/>
				as cidades principais.<br/>
				8. Helicópteros não podem rodear cidades principais, tampouco<br/>
				ficar de auto houver sobre as mesmas.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regrasdoservidor",
		[
			"Veiculos",
				"
				Os Itens nesta lista podem resultar em ban temporário ou<br/>
				permanente, baseado no julgamento do Adm.<br/><br/>
				1. Atropelar pessoas. Acidentes acontecem, mas estamos de<br/>
				olho!.<br/>
				2. Se jogar na frente dos veículos para tentar suicidar-se.<br/>
				3. Bater em outros veículos propositadamente para causar<br/>
				explosões.<br/>
				4. Constantemente tentar entrar em veículos sem dar tempo<br/>
				do proprietário trancá-lo. Mesmo esquema do Helicóptero.<br/>
				Cuidado com o BANHAMMER.<br/>
				5. Roubar um veículo (qualquer um) para bater em algum<br/>
				objeto ou destruí-lo.<br/>
				6. Comprar vários veículos, spawnar vários veículos,<br/>
				simplesmente para trollar e explodir tudo.<br/>
				7. A única razão plausível para atirar num veículo é<br/>
				para desativá-lo ou dar tiros de aviso. Não se deve<br/>
				destruir veículos de maneira deliberada.<br/>
				8. Veículos no estacionamento, ou estacionados de maneira<br/>
				CORRETA e sem atrapalhar, devem ser deixados onde estão.<br/>
				9. Veículos abandonados ou quebrados, podem ser<br/>
				apreendidos.<br/>
				10. Apreender veículos é trabalho da polícia. (Mas a<br/>
				polícia não atende chamados de IMPOUND do jogador. PM não<br/>
				é guincho) Ajuda o servidor a ficar mais leve. Veículos<br/>
				abandonados não voltam para a garagem!.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["zonasegura",
		[
			"Safezones",
				"
				Matar, utilizando qualquer método, nessas áreas, resultará em<br/>
				banimento. São áreas protegidas de qualquer tipo de crime,<br/>
				jogue corretamente e lembre disso para evitar BAN.<br/><br/>
				Em qualquer HQ da Polícia (Postos policias nao sao considerados como HQ POLICIAL).<br/>
				HQ Rebeldes.<br/>
				Loja de doador.<br/>
				Cidades: Kavala e Athira.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["areailegal",
		[
			"Áreas Ilegais",
				"
				1. Policiais evitarão patrulhar em áreas ilegais para ajudar<br/>
				no role play, exceto em processadores e traficantes<br/>
				de drogas.<br/>
				2. Se o policial estiver perseguindo um jogador, a entrada é<br/>
				permitida.<br/>
				3. A regra do Random kill não vale também para estas áreas,<br/>
				se o player tiver em uma area ilegal pode chegar matando.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["zonasemlei",
		[
			"Zona sem leis",
				"
				1. Zonas sem lei são territórios perigosos e podem ocorrer<br/>
				random kill. Se você decidir entrar já sabe.<br/>
				2. Caso a polícia ordene ao player parar ou iniciar uma<br/>
				perseguição é totalmente proibido se dirigir a uma cidade<br/>
				de Gangue na fuga. Lembrandoque em perseguição a Polícia<br/>
				pode seguir o player em qualquer lugar.<br/>
				3. A entrada na cidade de Gangues é restrita aos membros da<br/>
				mesma (será morte instantânea para outros players).<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regraspolicia",
		[
			"Regras da Polícia",
				"
				Todos os policiais são obrigados a usar o TS durante o jogo<br/>
				e devem permanecer nas salas específicas para Cop.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regraspolicia",
		[
			"Patrulhas",
				"
				1. Policiais devem patrulhar e manter a ordem em Altis.<br/>
				2. Patrulhas podem ser feitas a pé ou em veículos não<br/>
				blindado.<br/>
				3. Patrulha com veículo blindado é permitida somente no caso<br/>
				de assalto a Reserva Federal, Banco do Brasil ou Terrorismo<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regraspolicia",
		[
			"Interação Policial",
				"
				1. Civis podem ser presos por olhar/futricar nas mochilas de<br/>
				policiais e ou veículos. Fazer isso com freqüência, pode<br/>
				resultar em ban.<br/>
				2. Civis podem ser kickados para permitir a entrada de mais<br/>
				policiais.<br/>
				3. Seguir ou assediar policiais por muito tempo pode resultar<br/>
				em ban.<br/>
				4. Impedir os policiais de fazer o próprio serviço pode<br/>
				gerar a prisão. Fazer isso com frequência pode resultar<br/>
				em ban.<br/>
				5. Um policial pode abordar qualquer player ou veículo para<br/>
				realizar um registro. Siga as instruções do policial e faça um<br/>
				bom role-play.<br/>
				6. Abusos de qualquer parte devem ser reportadas para<br/>
				um Admin.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regraspolicia",
		[
			"Protocolo COP nas Cidades",
				"
				1. Os oficiais podem patrulhar em todas as cidades, exceto<br/>
				Zona sem lei e Loja Vip.<br/>
				2. A polícia pode/deve vasculhar as cidades procurando<br/>
				bandidos.<br/>
				3. siga as instruções do policial caso você seja abordado.<br/>
				4. O BOPE - sim, a bala vai comer - pode ser chamado para<br/>
				conter tumultos. São oficiais treinados e com armamento<br/>
				pesado.<br/>
				5. Lei marcial pode ser declarada por um oficial, quem decidir<br/>
				ficar na área esta sujeito ao pvp.<br/>
				6. Os quartéis policiais são feitos para polícia. Não é permitida<br/>
				a entrada de nenhum outro jogador.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regraspolicia",
		[
			"Prender e Multar",
				"
				1. O policial pode multar ao invés de prender. Se o jogador<br/>
				pagar a multa, não pode ser preso.<br/>
				2. O policial deve sempre informar o motivo da prisão ou<br/>
				multa.<br/>
				3. A policia deve usar arma não letal, exceto mediante<br/>
				autorização superior, ou caso o risco seja demasiadamente<br/>
				alto para o policial.<br/>
				4. Multas devem ser utilizadas com razoabilidade. Deve-se<br/>
				observar a situação financeira do multado.<br/>
				5. A multa deve se basear no delito.<br/>
				6. A recusa em pagar a multa pode resultar em prisão.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regraspolicia",
		[
			"Cadeia de comando:",
				"
				A patente mais alta online lidera a polícia.<br/><br/>
				1. B.O.P.E<br/>
				2. Coronel<br/>
				3. Capitão<br/>
				4. Tenente<br/>
				5. Sargento<br/>
				6. Cabo<br/>
				7. Soldado<br/>
				8. Recruta<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regraspolicia",
		[
			"Uso de Arma Letal",
				"
				1. O uso de força letal só é permitido para proteger a própria<br/>
				vida ou a vida de outros. Policiais estão proibidos de matar<br/>
				ou atirar sem motivo.<br/>
				2. Disparos aleatórios não são permitidos.<br/>
				3. Desobedecer as regras pode resultar em suspensão.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regraspolicia",
		[
			"Uso de Arma Não Letal",
				"
				O Teaser é a única arma não letal.<br/><br/>
				1. Taser deve ser utilizado para apreender civis. Proibido<br/>
				o uso entre policiai em operação.<br/>
				2. Atirar com o teaser aleatoriamente resultará em suspensão<br/>
				do policial.<br/>
				3. Utilize o teaser com moderação, principalmente em<br/>
				Safe Zone, onde deve ser evitado.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regraspolicia",
		[
			"USO DE ARMAS - CIVIS",
				"
				1. Civis não podem andar com a arma em punho em cidades.<br/>
				Guarde ela nas costas (Shift+H).<br/>
				2. Civis podem andar com as armas em punho fora das<br/>
				cidades. Todavia, devem possuir licença, e andar com<br/>
				a arma abaixada.<br/>
				3. Comunique a Polícia imediatamente caso você tenha<br/>
				matado algum player com arma legal em para se defender<br/>
				de um assalto.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regraspolicia",
		[
			"Armas Legais/Ilegais ",
				"
				Player com licença de arma e arma adquirida na Loja de<br/>
				civil (exemplo: Katiba/MXC) são legais.<br/>
				Todas as pistolas são legais.<br/>
				Caso você seja abordado com uma arma considerada rebelde<br/>
				ou ilegal, ela será apreendido e você será multado. Armas<br/>
				adquiridas na loja Vip estão baixo as mesmas regras que<br/>
				todas as demais.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Regraspolicia",
		[
			"USO DE VEÍCULOS BLINDADOS/REBELDES",
				"
				São os veículos proibidos (podem ser presos) para os civis:<br/><br/>
				1. Helicópteros rebeldes.<br/>
				2. Veículos blindados e/ou armados.<br/>
				3. Qualquer carro policial.<br/>
				4. Offroad armada.<br/>
				Os blindados e armados podem ser usados somente em<br/>
				grandes operações declaradas, devem ser avisadas e<br/>
				ser realizadas fora da Zona sem lei.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["farms",
		[
			"PREÇOS DE LICENÇAS",
				"
				1. Carteira de Motorista - R$: 5.000<br/>
				2. Licença de Barco - R$: 10.000<br/>
				3. Licença de Piloto - R$: 100.000<br/>
				4. Porte de Armas - R$: 100.000<br/>
				5. Licença de Mergulho - R$: 10.000<br/>
				6. Licença Rebelde - R$: 700.000
				7. Processador de Petroleo - R$: 50.000<br/>
				8. Processador de Heroina - R$: 60.000<br/>
				9. Processador de Maconha - R$: 50.000<br/>
				10. Processador de Diamante - R$: 50.000<br/>
				11. Processador de Sal - R$: 30.000<br/>
				12. Processador de Cocaina - R$: 120.000<br/>
				13. Processador de Areia - R$: 20.000<br/>
				14. Processador de Cobre - R$: 15.000<br/>
				15. Processador de Cimento - R$: 15.000<br/>
				16. Processador de Uranio - R$: 500.000<br/><br/>
				"
		]
	];

// Controls Section

	player createDiaryRecord ["controles",
		[
			"Controles",
				"
				Y: Abrir menu do PLAYER.<br/>
				U: Tranca e destranca Veículos/Casas.<br/>
				Shift Esquerdo + F: Sirene (Polícia e SAMU).<br/>
				M: Acessa o Mapa.<br/>
				T: Porta malas do veículo.<br/>
				Shift esquerdo + F: Segunda Sirene (Polícia).<br/>
				Shift esquerdo + V: knockout.<br/>
				Shift esquerdo + R: Algemar.<br/>
				Shift esquerdo + G: Render-se.<br/>
				Shift esquerdo + H: Guardar arma.<br/>
				Shift esquerdo + O: Algemar (para Civil).<br/>
				Shift esquerdo + barra de espaço: Pular.<br/><br/>
				'': usar a Picareta.
				A tecla de interação voltou a ser o Botão Windows do<br/>
				Teclado.<br/>
				Olhando para o Player: Reviver (Medico/Cop) | Abre o<br/>
				menu de interação em veiculos/players, etc.<br/>
				Olhando para Casas: Abre menu de Opções/Compras.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["EASY",
		[
			"Teamspeak",
				"
				Utilize nossa teamspeak para se comunicar com seus amigos<br/>
				- TS: teamspeak.ftialtislife.com.br  <br/><br/>
				"
		]
	];

	player createDiaryRecord ["EASY",
		[
			"Website/Forums",
				"
				Forum: http://ftialtislife.forumeiros.com<br/><br/>
				"
		]
	];


	player createDiaryRecord ["EASY",
		[
			"Doadores.",
				"
				As doacoes são para manter o servidor.<br/>
				As doacoes sao seguras atravez do Gerencianet, Boleto<br/>
				e Deposito Bancario.<br/>
				Ser doador lhe concede vantagens como Armas mais baratas,<br/>
				armas exclusivas, veículos exclusivos e mais baratos,<br/>
				dinheiro extra no jogo e recursos adicionais (Acesso para<br/>
				loja de doadores).<br/>
				Nosso servidor tem 3 niveis de doadores , solicite<br/>
				informações junto a um admin no teamspeak.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["update",
		[

		]
	];

	player createDiaryRecord ["update",
		[

		]
	];

	player createDiaryRecord ["money",
		[
			"REGRAS PARA RESSARCIMENTOS!",
				"
				Procedimento para solicitar ressarcimento<br/><br/>
				Aviso: Jamais compre casas com porta branca, pois<br/>
				não salvam os itens permanentemente, compre somente<br/>
				com portas azuis.<br/><br/>
				O server somente se responsabiliza pelo ressarcimento<br/>
				quando a perda é causada pela queda ou problemas com o<br/>
				servidor. Outros casos daremos apoio para resolver e a<br/>
				prioridade é que o player causador pague a vítima.<br/><br/>
				Primeiramente procure uma Sala para players<br/>
				resolver tretas, onde as pessoas envolvidas devem<br/>
				conversar e tentar esclarecer e resolver. Caso não<br/>
				seja possível um acordo contate um Admin.<br/><br/>
				"
		]
	];