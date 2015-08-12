waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","Regras gerais"];
player createDiarySubject ["policerules","Regras policiais"];
player createDiarySubject ["safezones","Safe Zones (Não matar)"];
//player createDiarySubject ["civrules","Regras de civis"];
player createDiarySubject ["illegalitems","Atividades ilegais"];
//player createDiarySubject ["gangrules","Regras de gangues"];
//player createDiarySubject ["terrorrules","Regras Rebeldes"];
player createDiarySubject ["controls","Controls"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Official Change Log",
				"
					The official change log can be found on the BIS forums (search Altis Life RPG)
				"
		]
	];

	player createDiaryRecord["changelog",
		[
			"Custom Change Log",
				"
					This section is meant for people doing their own edits to the mission, DO NOT REMOVE THE ABOVE.
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Exploits",
				"
				Cometer algum dos altos abaixo resultará em banimento. <br/>

				1. Sair da prisão através de qualquer método que não seja o pagamento de fiança ou escapar através do helicóptero. <br/>
				2. Matar-se para sair de roleplay. Saindo de ser tazed, contido, preso, prisão, etc. Se o log mostra foi preso, então você morrer, você será banido. <br/>
				3. Dupar itens e / ou dinheiro. Se alguém lhe envia uma quantidade inalcançável de dinheiro logo no início do jogo, relatar a um administrador imediatamente. Faça isso o mais rápido possível ou um administrador poderá te banir ao ver o dinheiro. <br/>
				4. Usando itens claramente hackeados. Se um hacker entra e gera itens inatingíveis, você pode ser banido por usar referidos itens. Relatar os itens para os administradores imediatamente e ficar longe deles. <br/>
				5. Abusando bugs ou mecânica de jogo para o ganho. Existe uma arma replicante em algum lugar? Relatá-lo imediatamente.<br/><br/>
				"
		]
	];

	player createDiaryRecord["safezones",
		[
			"Safe Zones",
				"
					Explodir veículos, roubar, ou matar nessas áreas é passivel de ban. <br/>

					Cidades com safezone (Kavala e Athira) <br/>
					Todos HQs policiais <br/>
					Postos Rebeldes <br/>
					Loja de doadores <br/>
				"
		]
	];


	player createDiaryRecord ["serverrules",
		[
			"Delitos passiveis de ban",
				"
				Considere este o seu primeiro e único aviso.<br/><br/>

				1. Hacking<br/>
				2. Cheating<br/>
				3. Exploiting (Ver a aba de 'Exploits')<br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Cop Interação",
				"
				Itens desta lista pode resultar em seu afastamento do servidor e / ou proibição, com base no critério administradores. <br/>

				1. Os civis podem ser presos por olhar em mochilas / veículos dos policiais. Fazer isso constantemente irá resultar em seu afastamento do servidor. <br/>
				2. Os civis podem ser presos por policiais no jogo caso estejam perseguindo, a fim de entregar sua posição. <br/>
				3. Os civis que atrapalharem operações policiais sem nenhum motivo aparente poderá ser preso ou banido. <br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Barcos",
				"
				Itens desta lista pode resultar em seu afastamento do servidor e / ou proibição, com base no critério administradores. <br/>

				1. Empurrar barcos repetitivamente sem permissão. <br/>
				2. Empurrando um barco com a intenção de ferir ou matar alguém. <br/>
				3. Atropelar nadadores / mergulhadores propositalmente. <br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Aviação",
				"
				Itens desta lista pode resultar em seu afastamento do servidor e / ou proibição, com base no critério administradores. <br/>

				1. Se jogar propositalmente com um helicóptero em qualquer circunstância. Outros helicópteros, veículos, edifícios. <br/>
				2. vôo abaixo de 150m sobre as safezones constantemente. Uma vez que é ilegal, você será visto pelos policiais como um player hostil, e poderá ser abatido. <br/>
				3. Roubar helicópteros em safezone sem dar tempo para o motorista para travar o veículo. Se o player pousar e ir embora sem bloquear, muito bem, se ele apenas sair e ser roubado sem ter a chance de bloqueá-lo, não, não. <br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Veículos",
				"
				Itens desta lista pode resultar em seu afastamento do servidor e / ou proibição, com base no critério administradores. <br/>

				1. Atirar-se propositalmente na frente dos veículos, a fim de morrer / se machucar. <br/>
				2. jogar seu veículo em outros veículos, a fim de provocar uma explosão. <br/>
				3. Constantemente tentando entrar em veículos que não pertencem a você, a fim de atrapalhar o proprietário do veículo. <br/>
				4. Roubar um veículo apenas para lançá-lo ou destruí-lo de outra forma. <br/>
				5. A compra de vários veículos com a finalidade de fazer qualquer um dos acima. <br/>
				6. A única razão para atirar em um veículo seria para desativá-lo e / ou tiros de advertência em um assalto. você não pode destruir deliberadamente veículos inimigos. <br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Regras de comunicação",
				"
				Itens desta lista pode resultar em seu afastamento do servidor e / ou proibição, com base no critério administradores. <br/>

				1. Side bate-papo não pode ser utilizado para reproduzir música ou de outra forma micspam. <br/>
				2. Spamming qualquer canal de bate-papo vai resultar em seu afastamento. <br/>
				4. Canais de teamspeak são divididos em áreas por uma razão. Cops deve estar nos canais de polícia em todos os momentos. <br/>
				5. Os civis não podem estar em qualquer canais COP no teamspeak, a fim de reunir informações sobre sua localização ou movimentos. Civs pegos fazendo isso serão removidas do canal. As reincidências pode ser expulso ou banido tanto o jogo e teamspeak. <br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatching (RDM)",
				"
				Itens desta lista pode resultar em seu afastamento do servidor e / ou proibição, com base no critério administradores. <br/>

				1. Matar alguém sem causa roleplay. <br/>
				2. Declarar uma rebelião não é um motivo para matar civis sem motivo. <br/>
				3. Policiais e civis só pode começar em um tiroteio se houver razões relacionadas com um crime. <br/>
				4. Se você for morto no fogo cruzado de uma luta, não é RDM. <br/>
				5. Matar alguém em uma tentativa de proteger a si mesmo ou aos outros não é RDMing. <br/>
				6. Matar um jogador sem dar tempo razoável para seguir as exigências é considerado RDM. <br/>

				Estes todos são julgados pelos administradores em uma base caso a caso. <br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"Regras de vida nova",
				"
				A Regra de Vida Nova se aplica a policiais e civis/rebeldes. <br/>

				Itens desta lista pode resultar em seu afastamento do servidor e / ou proibição, com base no critério administradores. <br/>

				1. Se você for morto em operação ou pvp você deve esperar 10 minutos antes de voltar para a cena de sua morte. <br/>
				2. Se você morrer durante roleplay seus crimes do passado são esquecidos, mas você também não pode vingar. <br/>
				3. Se você é morto por rdm, não é uma nova vida. <br/>
				4. Se você der resurgimento manualmente, não é uma nova vida. <br/>
				5. Se você propositadamente se matar para evitar roleplay, não é uma nova vida. <br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Não seja idiota!",
				"
				Causar outros grief, interromper roleplay, a lista continua. <br/>
				Basta não ser um idiota, ok? <br/>
				Esta regra pode ser invocada, a critério do administrador. <br/>
				"
		]
	];

// Police Section
	player createDiaryRecord ["policerules",
		[
			"Negociação de crises (sequestros)",
				"
				Negociação de crise deve ser tratado por um cop online que tenha o posto superior aos demais.
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Reserva federal",
				"
				1. A Reserva Federal é ilegal para os civis, a não ser que lhes tenha sido dada autorização. Se os civis entrarem sem autorização devem ser escoltado para fora do local ou preso se eles persistirem.
				2. Helicópteros voando sobre a reserva federal pode ser convidado a sair, ou serem abatidos se eles se recusarem a sair. <br/>
				2. Se a Reserva Federal está sendo roubada, é incentivado que todos os oficiais disponíveis movam-se para detê-lo. <br/>
				3. Os agentes nas proximidades devem dirigir imediatamente para a Reserva federal para ajudar. Pequenos delitos pode ser descartado durante um assalto. <br/>
				4. A força letal em assaltantes de banco pode ser usado se nenhuma outra alternativa está disponível. Cada opção de taze e prender a pessoa deve ser feito primeiro. <br/>
				5. A polícia pode não disparar cegamente para dentro do prédio. <br/>
				6. A polícia deve evacuar os civis da área durante um assalto. <br/>
				7. Qualquer civil que faz ativamente com tentativa de bloquear a polícia de entrar na reserva pode ser tratado como um cúmplice. <br/>
				8. Os agentes de supervisão podem contratar pessoas ou contratar um grupo de pessoas para trabalhar como guardas de segurança para o banco. Consulte a seção Contratante para obter mais informações. <br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Aviação",
				"
				1. Helicóptero pode pousar dentro dos limites das cidades seguras sem autorização do oficial de mais alto ranking online. (Exceções listadas abaixo.) <br/>
				Kavala: O heliporto do hospital (037.129) ou área de pouso (031.128) <br/>.
				Athira: O campo de esportes (138.185) <br/>.

				2. Os helicópteros não podem pousar em estradas. <br/>
				3. A polícia pode proibir temporariamente o desembarque no mas não pode permanecer fechada por um longo período de tempo. <br/>
				4. Os helicópteros não podem voar abaixo de 150m sobre a cidade sem autorização. <br/>
				5. Os helicópteros não podem pairar sobre a cidade. Cops só podem pairar sobre a cidade se houver uma operação policial ativo acontecendo. <br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Áreas ilegais",
				"
				1. Não entrar em uma área ilegal a menos que seja parte de uma perseguição. <br/>
				2. Se você perseguir alguém em uma área ilegal, pedir reforços. <br/>
				3. Sob nenhuma circunstância é permitido um oficial acampar qualquer área ilegal. <br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Patrulhando",
				"
				1. A polícia pode patrulhar estradas e cidades à procura de veículos abandonados e atividades criminosas. <br/>
				2. Patrulhas pode ser feito a pé dentro de uma cidade, ou em um veículo quando fora. <br/>
				3. As patrulhas não incluem áreas ilegais. <br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Checkpoints",
				"
				Policiais são incentivados a pontos de verificação adicionais em áreas estratégicas para ajudar a combater as atividades ilegais e promover a segurança na estrada. <br/>

				1. Um ponto de verificação deve ser constituído por 3 ou mais funcionários, utilizando dois ou mais veículos. Um ATV não conta como um dos veículos necessários, mas ainda pode ser utilizado. <br/>
				2. Um ponto de verificação não pode ser configurado dentro de 300m de uma área ilegal. Basicamente, você não pode configurar uma em cima de uma área ilegal. <br/>
				3. Pontos de verificação só pode ser configurado em estradas, mas ele não tem que estar em uma encruzilhada. <br/>
				4. Pontos de Verificação não tem que ser marcado no mapa. <br/>


				Procedimento Checkpoint adequada: <br/>
				1. Mandar o motorista parar o veículo a uma distância segura e desligar o motor. <br/>
				2. Pergunte ao condutor e eventuais passageiros se eles têm quaisquer armas. <br/>
				3. Pergunte ao condutor e eventuais passageiros a sair do veículo. Se eles têm armas, não contê-los imediatamente quando eles saem, diga-lhes para abaixar suas armas e deu-lhes uma quantidade razoável de tempo para fazê-lo. <br/>
				4. Pergunte a eles onde eles estão indo. <br/>
				5. Pergunte se eles vão submeter-se a uma abordagem. <br/>
				6. Se eles permitem uma busca, você pode algemá-lo e fazer a abordagem. <br/>
				7. Se eles não submeter-se a uma abordagem, você deve deixá-los ir, a menos que exista causa provável. <br/>
				8. Após a abordagem ser feita, você pode permitir-lhes para re-entrar no seu veículo e seguir em frente. <br/>
				9. Em qualquer caso ilegal encontrado, a pessoa pode ser multado ou preso, dependendo do crime. <br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Veículos",
				"
				1. Os veículos no estacionamento, ou razoavelmente estacionado em outro lugar deve ser deixado no local. <br/>
				2. Os veículos que olhar abandonado, quebrado, sem condutor, pode ser apreendido. <br/>
				3. Barcos deve ser estacionado razoavelmente em terra. <br/>
				4. Qualquer veículo que não se moveu em uma quantidade significativa de tempo pode ser apreendido. <br/>
				5. apreender veículos é uma tarefa essencial para um policial, que ajuda a manter o servidor limpo e menos lag. <br/>
				6. Em caso de dúvida, procure sempre mandar mensagem ao proprietário do veículo antes de apreender. <br/>
				7. lanchas da polícia ou Hunter pode ser usado para ajudar na detenção de criminosos. <br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Excesso de velocidade",
				"
				As seguintes velocidades estão a ser aplicadas pela força policial Altis para a segurança absoluta dos cidadãos de Kavala e todos que viajam para além da cidade. <br/>

				Dentro grandes cidades: <br/>
				Pequenas estradas: 40 kmh <br/>
				Principais rodovias: 50 kmh <br/>
				Fora das grandes cidades: <br/>
				Pequenas estradas: 80 kmh <br/>
				As estradas principais: 110 kmh <br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Protocolo de cidades",
				"
			1. Os funcionários podem patrulhar as principais cidades -. Kavala, Athira, Pyrgos e Sofia <br/>
			2. Os oficiais podem parar naos lojas de carro para certificar-se não há carros que precisam ser apreendidos. <br/>
			3. Diretores não poderão ficar em torno ou demorar no centro da cidade. <br/>
			4. Os agentes podem entrar na cidade em um grande número se ocorrer um ato rebelde. Depois que a área for limpa, eles precisam deixar a cidade novamente. <br/>
			5. A lei marcial não pode ser declarada a qualquer momento. <br/>
			6. Os edifícios Polícia HQ são ilegais para os civis de entrar sem autorização, no entanto, não é ilegal para os civis passar nas proximidades, a menos que eles estejam causando um incômodo. <br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Prender e multar",
				"
				Prisão deve ser feita para os criminosos que são considerados um perigo para si ou para os outros. <br/>

				1. Você não pode prender alguém, se você deu-lhes uma multa e ele pagou. <br/>
				2. Você deve informar o suspeito por que eles estão sendo presos antes de prendê-los. <br/>
				3. Se um civil é procurado, você pode prendê-los. Não matá-los, a menos que a situação está sob o "Uso de Força Letal 'seção. <br/>


				Multar um civil é considerado um aviso para o civil. Se ele quebra uma lei, mas não representam uma ameaça para ninguém, você pode multar civil. <br/>

				1. As multas devem ser um preço razoável. <br/>
				2. Os preços das multas deve ser baseado pelos crimes cometidos. <br/>
				3. A recusa a pagar uma multa é motivo para a prisão. <br/>
				4. Dar uma multa exagerada a um civil por um crime comum, como US $ 100 mil por excesso de velocidade, etc., não é permitido e resultará em sua remoção do departamento de polícia. <br/>

				Deve ser dada uma lista completa de todos os crimes e as punições adequadas para os oficiais durante o treinamento. Em caso de dúvida, ou se você não tiver sido treinado, pergunte a um oficial de ranking mais elevado o que fazer. <br/>

				A lista está disponível no crime.sealteamsloth.com <br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Armas",
				"
				Um policial nunca é permitido fornecer armas a civis. Isto fará você ser removido da coorporação. <br/>

				Armas legais para os civis de transportar com uma licensa de armas: <br/>
				1. P07 <br/>
				2. Rook <br/>
				3. ACP-C2 <br/>
				4. Zubr <br/>
				5. 4-cinco <br/>
				6. PDW2000 <br/>

				Qualquer outra arma (Incluindo Silenciado P07 [considerado uma arma da polícia]) é ilegal. <br/>

				1. Os civis não estão autorizados a ter uma arma em punho dentro dos limites da cidade. <br/>
				2. Os civis podem ter uma arma em punho quando eles não estão na cidade. No entanto, eles devem se submeter a uma abordagem para verificação da licença se for abordado por um oficial e deve ter a arma abaixada (Pressionar Ctrl duas vezes). <br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Uso de força não-letal",
				"
				Neste momento a Taser (P07 Silenced) e taser rifle são as únicas formas de força não-letal. <br/>

				1. Taser deve ser usada para incapacitar os civis que não cumprir ordem, a fim de contê-los. <br/>
				2. Não descarregar o seu Taser, a menos que você pretende incapacitar um civil, descarregando sua arma aleatoriamente irá resultar em sua suspensão. <br/>
				3. Utilize apenas o seu Taser em conformidade com as leis e as regras, não impor a sua vontade aos outros. <br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Raiding/Camping",
				"
				Raiding é definido como um esquadrão de policiais invadindo uma área de alta atividade criminosa, a fim de parar os criminosos em atos ilegais. <br/>

				1. A fim de invadir uma área, a polícia deve ter pelo menos quatro policiais envolvidos, uma das quais deve ser um sargento ou acima. <br/>
				2. Todos os civis em uma área de invasão pode ser contido. Se nada de ilegal é encontrado, você deve deixá-los ir. <br/>
				3. Se itens ilegais são encontrados durante uma busca, você pode proceder à detenção ou multa, como de costume. <br/>
				5. A força letal só é autorizada como descrito em "Uso de Força Letal '. <br/>
				6. Depois que a área é segura, os diretores devem deixar a área. <br/>
				7. Um espaço não pode ser invadido novamente por 20 minutos após uma incursão anterior. <br/>
				8. Se o ataque é um fracasso (Todos os agentes morrer), o temporizador de 20 minutos ainda se aplica a esses agentes. <br/>
				9. reforço pode ser chamado, mas não pode ser constituído de oficiais mortos (ver "Regras de vida nova"). <br/>

				Camping é definida como a estadia prolongada de um oficial em uma área. <br/>

				1. Pontos de verificação não são consideradas camping. Consulte a seção Checkpoint para a definição dos procedimentos de ponto de verificação adequados. <br/>
				2. Camping de áreas ilegais é ficar mais tempo do que o necessário, ou se os oficiais não realizar um ataque, mas continuar a assistir e tomar medidas contra os civis de entrar na área. <br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Cadeia de comando",
				"
				A mais alta classificação oficial de plantão está no comando da força policial fora de admins momento online. O oficial superior deverá seguir as regras e orientações de seu / sua posição, e deve informar o administrador em caso necessita de ser tomada qualquer acção. <br/>

				Cadeia de Polícia de Comando: <br/>
				1. Coronel <br/>
				2. Major <br/>
				3. Tenente <br/>
				4. Sargento <br/>
				5. Soldado <br/>
				6. Cabo <br/>
				7. Recruta <br/>

				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Uso de força letal",
				"
				1. O uso de força letal só é permitido para a proteção de sua vida, outra vida de oficiais, ou uma vida de civis, se e somente se a força não-letal não seria eficaz. <br/>
				2. A descarga de uma arma quando não está sob ameaça ou não está durante exercícios de treinamento não é permitido. Oficiais capturados em violação desta regra será removido do servidor e suspenso do SPD. <br/>
				3. O não cumprimento disciplinar, armas inadequada e procedimento vai ser removidos do servidor e suspenso do SPD. <br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Regras de Teamspeak",
				"
				1. Todos os policiais devem estar em Teamspeak 3 em um canal policial designado. A não ser em Teamspeak durante uma verificação de administração resultará na sua imediata demissão do servidor. <br/>
				2. Por favor, junte Teamspeak ANTES de você aparecer como um policial, se juntar Teamspeak antes mesmo de entrar no servidor. <br/>
				"
		]
	];



// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Regras rebeldes",
				"
				Um rebelde é aquele que nasce na resistência armada contra um governo. Neste caso, seria a polícia.  <br/>
				1. Um rebelde deve primeiro formar um grupo, e em seguida, declarar intenções. <br/>
				2. A resistência não é desculpa RDMing (Veja RDMing em Regras Gerais) <br/>
				3. Resistência roleplay deve ser realizado em mais maneiras do que constantemente roubar o banco ou matar policiais. <br/>
				4. Resistência devem ser coordenadas. <br/>
				5. A razão adequada deve estar por trás de cada ataque. <br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Regras de gangues",
				"
				1. Ser de uma gangue não é ilegal. Somente quando são cometidos crimes ilegais. <br/>
				2. Estar em uma área de gangue não é ilegal. Somente quando participando de atividades ilegais. <br/>
				3. Quadrilhas pode deter e controlar áreas de gangues. Outras gangues pode atacar um grupo de controle para competir pelo controle de uma área de gangue. <br/>
				4. Para declarar guerra a outro grupo, o líder deve anunciá-lo no global e todos os membros da gangue de ambos os bandos devem ser notificados. Para uma guerra de gangues mais longo prazo, a declaração deve ser feita aos administradores <br/>
				5. Quadrilhas não podem matar civis desarmados, a menos que esse civil faça parte de uma gangue rival e a área esteja controlada por sua gangue. <br/>
				6. Não pode matar civis, a menos que eles ofereçam ameaça. <br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Veículos ilegais",
				"
				Um civil no controle dos seguintes veículos proibidos está sujeito às consequências. <br/>

				1. Veículos rebeldes <br/>
				2. Lancha policial <br/>
				3. Hunter <br/>
				4. Veículos policiais <br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Armas ilegais",
				"
				Um civil na posse da seguinte está sujeita às conseqüências, conforme definido na posse ilegal de arma de fogo uma lei. <br/>

				1. MX Series <br/>
				2. Katiba Series <br/>
				3. TRG Series <br/>
				4. Mk.20 Series <br/>
				5. Mk.18 ABR <br/>
				6. SDAR Rifle <br/>
				7. Sting SMG <br/>
				8. P07 silenciados (Taser) <br/>
				9. Zafir <br/>
				10. Rahim <br/>
				11. SPMG <br/>
				12. Navid <br/>
				13. Cyrus <br/>
				14. M320 <br/>
				15. Links <br/>
				16. Quaisquer explosivos <br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Itens ilegais",
				"
				Os seguintes itens são ilegais para possuir: <br/>
				1. Tartaruga <br/>
				2. cocaína <br/>
				3. heroína <br/>
				4. Metanfetamina <br/>
				5. Maconha <br/>
				6. Spiketrip <br/>
				7. Algema <br/>
				8. Chave mestra <br/>
				"
		]
	];


// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
				Y: Abre menu do player<br/>
				U: Trancar e destrancar veículos<br/>
				F: Sirene policial (se for COP)<br/>
				T: Abre mala do veículo<br/>
				Left Shift + R: Algemar (se for COP)<br/>
				Left Shift + G: Knock out / stun (Civ Only, usar para roubar)<br/>
				Left Windows: Interação chave principal que é usado para pegar itens / dinheiro, recolhimento, interagindo com os carros (reparação, etc) e para bobinas para interagir com os civis. Pode ser rebote para uma única chave como H pressionando ESC->-Configurar> Controles de> Personalizada-> Use Acção 10 <br/>
				Left Shift + L: Ativar luz da sirene de COP (se for cop).<br/>
				Left Shift + H: Guardar arma<br/>
				"
		]
	];
