User.create!([
  {email: "wiremaze@wiremaze.com", password: "password", role: "entity", active: true},
  {email: "nasa@nasa.com", password: "password", role: "entity", active: true},
  {email: "vinhais@vinhais.com", password: "password", role: "entity", active: true},
  {email: "candidato@candidato.com", password: "password", role: "candidate", active: true},
  {email: "candidato2@candidato.com", password: "password", role: "candidate", active: true},
  {email: "candidato3@candidato.com", password: "password", role: "candidate", active: true},
  {email: "backoffice@backoffice.com", password: "password", role: "backoffice", active: true}
])
Candidate.create!([
  {name: "Candidato 1", description: "Software Developer", industry: "Informática", employed: true, grade: "Secundário", qualification: "Nível V", experience: "2 anos de experiência", address: "Morada de candidato 1", phone: "+3519218512", fax: 3512248948, user_id: 4, postal_code: 4405, location: "Vila Nova de Gaia", id_card: "142141224abc", dob: "1986-10-24 00:00:00", website: "www.candidato1.com"},
  {name: "Candidato 2", description: "Profissional de Marketing", industry: "Marketing", employed: true, grade: "Mestrado", qualification: "Mestrado em Marketing", experience: "10 anos de experiência", address: "Morada candidato 2", phone: "+351924545", fax: 351224545, user_id: 5, postal_code: 4421, location: "Maia", id_card: "15312412abcd", dob: "1986-10-24 00:00:00", website: "www.candidato2.com"},
  {name: "Candidato 3", description: "<p>Software Developer</p>", industry: "Informática", employed: true, grade: "Secundário", qualification: "<p>N&iacute;vel 5</p>", experience: "<p>17 anos de experi&ecirc;ncia</p>", address: "<p>Morada candidato 3</p>", phone: "+3519115151", fax: 351224545, user_id: 6, postal_code: 4884, location: "Porto", id_card: "1251331abcd", dob: "1986-10-24 00:00:00", website: "www.candidato3.com"}
])
Entity.create!([
  {name: "Wiremaze", description: "Mais do que desenvolver aplicações, ou criar bases de dados, simplificamos a vida aos nossos clientes, ajudando-os a mudar vidas!\r\nMais de 125 autarquias confiam na nossa experiência, o que nos torna líderes de mercado em soluções de eGovernment em Portugal.", industry: "Web Design", address: "Rua Lionesa, 446, Edifício C5", phone: "(+351) 228 328 813", fax: 0, website: "www.wiremaze.com", user_id: 1, postal_code: 4465, location: "Leça do Balio", tax_number: 55515151},
  {name: "Nasa", description: "The National Aeronautics and Space Administration is America’s civil space program and the global leader in space exploration. ", industry: "Cyber Security", address: "Somewhere in Houston", phone: "+5551800", fax: 5551112, website: "www.nasa.gov", user_id: 2, postal_code: 8888, location: "Washington, D.C.", tax_number: 88484887},
  {name: "Vinhais Software House", description: "Empresa de Software", industry: "Web Design", address: "Rua em Vinhais, 19 17º", phone: "+351917441561", fax: 351225849845, website: "www.vinhais.com.pt", user_id: 3, postal_code: 2556, location: "Bragança", tax_number: 5517485145}
])
JobOffer.create!([
  {name: "Go expert", description: "<p>Procura-se Software Developer com 19 anos de experi&ecirc;ncia em Golang</p>", date: "2022-05-01 00:00:00", industry: "Web Design", contract: "Full-time", salary: 3000.0, entities_id: 1, active: false, location: nil},
  {name: "Piloto para nave espacial", description: "<p>Procura-se piloto/comandante para nave espacial.</p>", date: "2022-11-01 00:00:00", industry: "Cyber Security", contract: "Parcial", salary: 3000.0, entities_id: 2, active: true, location: nil},
  {name: "Designer Gráfico", description: "<p>Procura-se Designer Gr&aacute;fico com 10 anos de experi&ecirc;ncia.</p>", date: "2022-08-01 00:00:00", industry: "Web Design", contract: "Temporário", salary: 2000.0, entities_id: 3, active: true, location: nil},
  {name: "Software Developer", description: "<p>Procura-se Software Developer com 19 anos de experi&ecirc;ncia em Ruby e React</p>", date: "2022-06-01 00:00:00", industry: "Web Design", contract: "Full-time", salary: 3000.0, entities_id: 1, active: true, location: nil}
])
News.create!([
  {title: "A.I. ‘aniquila’ humanos", date: "2023-12-29 16:52:00", description: "<p>Entre 18 e 21 de abril, os bots da OpenAI estiveram dispon&iacute;veis para que equipas de todo o mundo pudessem testar a capacidade do sistema. Segundo a publica&ccedil;&atilde;o VentureBeat, foram necess&aacute;rios mais de 400 jogos at&eacute; que os humanos conseguissem alcan&ccedil;ar a sua primeira vit&oacute;ria frente ao sistema de intelig&ecirc;ncia artificial.</p>", summary: "<p>Sistema desenvolvido pela OpenAI e especializada no jogo de estrat&eacute;gia em tempo real DOTA 2 conseguiu uma taxa de vit&oacute;rias de 99,4%.</p>", active: true, highlight: true},
  {title: "Cápsula do tempo encontrada", date: "2025-10-29 16:53:00", description: "<p>A descoberta de uma c&aacute;psula do tempo na base de uma est&aacute;tua do General Robert Lee, revelada segunda-feira pelo Governador de Virg&iacute;nia, reavivou as esperan&ccedil;as de descoberta de uma foto de Abraham Lincoln ansiosamente aguardada por colecionadores.</p>\r\n<p>Assim que foi derrubada, os especialistas iniciaram a procura de uma c&aacute;psula do tempo ali colocada em 1887, que se acreditava conter rel&iacute;quias da guerra civil, como bot&otilde;es, balas, moedas dos Estados confederados, uma b&iacute;blia e, acima de tudo, uma foto de Abraham Lincoln no seu caix&atilde;o.<br /><br />A foto, vista como um 'clich&eacute;', tem sido apresentada como uma bomba hist&oacute;rica capaz de bater recordes no mercado de colecionadores.<br /><br />Uma primeira caixa foi retirada da base da est&aacute;tua e, depois, aberta com cuidado, mas continha apenas tr&ecirc;s livros e um envelope de pano com uma fotografia, todos danificados pela &aacute;gua, al&eacute;m de uma moeda de origem desconhecida.</p>", summary: "<p>C&aacute;psula do tempo reaviva esperan&ccedil;a de encontrar foto hist&oacute;rica de Abraham Lincoln</p>", active: true, highlight: true},
  {title: "The Matrix Resurrections", date: "2021-12-31 18:30:00", description: "<p>Since the release of The Matrix Resurrections in theaters and on HBO Max, the critical and fan reception has been mixed. Despite this, WB wants to keep the franchise going with a fifth movie and they want Lana Wachowski to return as confirmed by the studio&rsquo;s CEO Ann Sarnoff.</p>\r\n<p>In a recent interview with Collider, Resurrections producer James McTeigue admits that WB had plans to assign a different director. McTeigue has worked on all the Matrix films and stated that the &ldquo;money making capability&rdquo; of a fourth Matrix film meant there was &ldquo;always talk.&rdquo; However, when Lana Wachowski jumped at the chance to direct, the studio quickly said yes, it just made sense to have the original director on board.</p>", summary: "<p>The Matrix Resurrections stars Keanu Reeves, Carrie-Ann Moss, Yahya Abdul-Mateen II, Priyanka Chopra Jonas, Jessica Henwick, Neil Patrick Harris, and Jonathan Groff.</p>", active: true, highlight: true}
])