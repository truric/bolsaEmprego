User.create!([
  {email: "wiremaze@wiremaze.com", encrypted_password: "$2a$12$hjYZ1KYzkc6rFh9KsEEE.exrae2GT9I7T7HB0uyCIe2l.f/akNSPy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, role: "entity"},
  {email: "nasa@nasa.com", encrypted_password: "$2a$12$PznebebMaLwgN1HA6jfYFerr4EzzQy0KRv4K3DUaCW46uqhdn0Izu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, role: "entity"},
  {email: "backoffice@backoffice.com", encrypted_password: "$2a$12$0OK56pCVCVedcJitj40mkOm6kRk3Y3X4ymPPOW421XUgwe.JwMDBm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, role: "backoffice"},
  {email: "candidato@candidato.com", encrypted_password: "$2a$12$wa2T55Cc1Bj00BLQ6OhoKerz7S8aQ3P7VEIMzxo0J.8/e0g6DIQ/i", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, role: "candidate"},
  {email: "candidato2@candidato.com", encrypted_password: "$2a$12$omxLqMDFLAvczDX9mQT7S.vXkiVRcy8g6wI.sKaPIYX2/doL1xaQq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, role: "candidate"},
  {email: "candidato3@candidato.com", encrypted_password: "$2a$12$B3T89MmnDWgZArzxwQj2eeJKhGEGDQ/0/DkH8tYsvODylasSiD3By", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, role: "candidate"},
  {email: "abel@restaurante.pt", encrypted_password: "$2a$12$3NVjC1glDWPkm4g20.gZJeBKTHNDwddNfFS2axk0TvFNKUZZszhpS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, role: "entity"}
])
Candidate.create!([
  {name: "Candidato 1", description: "Software Dev.", industry: "Informática", employed: true, grade: "Mestrado", qualification: "Mestrado em Psicologia", experience: "19 anos de experiência", address: "morada candidato 1", phone: "+35191919", fax: "+351222", user_id: 4, postal_code: "4405-888", location: "VNG", id_card: "12354abcd", dob: "1986-10-24 00:00:00", website: "www.candidato1.com", active: nil},
  {name: "Candidato 2", description: "Senior de Marketing", industry: "Marketing", employed: true, grade: "Doutoramento", qualification: "Doutoramento em Marketing", experience: "10 anos de experiência", address: "morada candidato 2", phone: "+3519295959", fax: "+35122711888", user_id: 5, postal_code: "4440-545", location: "Porto", id_card: "132323abc", dob: "1986-10-24 00:00:00", website: "www.candidato2.com", active: nil},
  {name: "Candidato 3", description: "Designer Gráfico", industry: "Informática", employed: true, grade: "Secundário", qualification: "Nível 5 em Photoshop e Blender", experience: "3 anos de experiência", address: "morada candidato 3", phone: "+351952929", fax: "+351221212", user_id: 6, postal_code: "4445-787", location: "Maia", id_card: "153242abc", dob: "1986-10-24 00:00:00", website: "www.candidato3.com", active: nil}
])
Entity.create!([
  {name: "Wiremaze", description: "Mais do que desenvolver aplicações, ou criar bases de dados, simplificamos a vida aos nossos clientes, ajudando-os a mudar vidas!\r\nMais de 125 autarquias confiam na nossa experiência, o que nos torna líderes de mercado em soluções de eGovernment em Portugal.", industry: "Web Design", address: "Rua Lionesa, 446, Edifício C5", phone: "(+351) 228 328 813", fax: "(+351) 228 328 823", website: "www.wiremaze.com", user_id: 1, postal_code: "4465-671", location: "Leça do Balio", tax_number: 505331187, active: nil},
  {name: "Nasa", description: "<p>A National Aeronautics and Space Administration ou Administra&ccedil;&atilde;o Nacional da Aeron&aacute;utica e Espa&ccedil;o &eacute; uma ag&ecirc;ncia do Governo Federal dos Estados Unidos respons&aacute;vel pela pesquisa e desenvolvimento de tecnologias e programas de explora&ccedil;&atilde;o espacial.</p>", industry: "Cyber Security", address: "<p>Somewhere in Washington</p>", phone: "(+202)358-0001", fax: "(+202)358-4338", website: "www.nasa.gov", user_id: 2, postal_code: "", location: "Washington, D.C.", tax_number: 1800555212, active: nil},
  {name: "Abel", description: "Caaaaaarne", industry: "Cyber Security", address: "morada entidade 3", phone: "+35122715545", fax: "+3512248545", website: "www.oabel.pt", user_id: 7, postal_code: "4405-487", location: "Bragança", tax_number: 55515151, active: nil}
])
JobOffer.create!([
  {name: "Software Developer", description: "<p>Procura-se Software Developer com 19 anos de experi&ecirc;ncia em Ruby e React</p>", date: "2022-09-01 00:00:00", industry: "Web Design", contract: "Full-time", salary: "3000-3500", entities_id: 1, active: true, location: nil},
  {name: "Designer Gráfico", description: "<p>Procura-se Designer Gr&aacute;fico com 5 anos de experi&ecirc;ncia em paint</p>", date: "2022-03-01 00:00:00", industry: "Web Design", contract: "Parcial", salary: "1000-1500", entities_id: 1, active: true, location: nil},
  {name: "Piloto para nave espacial", description: "<p>Procura-se piloto/comandante para nave espacial</p>", date: "2022-12-01 00:00:00", industry: "Cyber Security", contract: "Temporário", salary: "3000-3500", entities_id: 2, active: true, location: nil}
])
News.create!([
  {title: "A.I. ‘aniquila’ humanos", date: "2022-05-11 16:26:00", description: "<p>Neste momento s&atilde;o poucos os humanos que conseguem vencer o sistema OpenAI Five no jogo DOTA 2 &ndash; e dentro de alguns dias podem at&eacute; j&aacute; nem existir. Depois de ter derrotado as melhores equipas profissionais a n&iacute;vel global, a ferramenta de intelig&ecirc;ncia artificial aceitou desafios de &lsquo;meros mortais&rsquo; e o resultado n&atilde;o podia ser mais esclarecedor: 7.215 vit&oacute;rias para as m&aacute;quinas, 42 para os humanos.</p>", summary: "<p>Intelig&ecirc;ncia artificial &lsquo;aniquila&rsquo; humanos e ganha 7.215 jogos em apenas tr&ecirc;s dias.</p>\r\n<p>Sistema desenvolvido pela OpenAI e especializada no jogo de estrat&eacute;gia em tempo real DOTA 2 conseguiu uma taxa de vit&oacute;rias de 99,4%.</p>", active: true, highlight: true}
])
