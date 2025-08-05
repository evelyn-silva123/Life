<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Plataforma que conecta jovens empreendedores a oportunidades de trabalho local - Jardinagem, consertos, aulas e mais">
  <title>Life's Work | Conectando Talentos Locais</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <style>
    :root {
      --navy: #001f3f;
      --gold: #D4AF37;
      --light-gold: #f5e6c2;
      --light-gray: #f8f9fa;
      --medium-gray: #e9ecef;
      --dark-gray: #495057;
      --text: #212529;
      --transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.1);
    }
    
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Poppins', sans-serif;
      background: var(--light-gray);
      color: var(--text);
      line-height: 1.7;
      overflow-x: hidden;
    }

    /* ========== HEADER ========== */
    header {
      background: linear-gradient(135deg, var(--navy) 0%, #002b57 100%);
      padding: 1.5rem 2rem;
      text-align: center;
      color: white;
      position: relative;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    }

    .header-content {
      max-width: 1200px;
      margin: 0 auto;
      display: flex;
      flex-direction: column;
      align-items: center;
      position: relative;
      z-index: 2;
    }

    .logo-container {
      margin-bottom: 1.5rem;
      animation: float 6s ease-in-out infinite;
    }

    .logo-bubble {
      display: inline-flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      background: var(--gold);
      padding: 1.2rem 2.5rem;
      border-radius: 50px;
      box-shadow: 0 8px 20px rgba(212, 175, 55, 0.3);
      text-align: center;
      transform-style: preserve-3d;
      transition: var(--transition);
    }

    .logo-bubble:hover {
      transform: translateY(-5px) scale(1.03);
      box-shadow: 0 12px 25px rgba(212, 175, 55, 0.4);
    }

    .logo-work {
      font-size: 2.2rem;
      font-weight: 800;
      color: var(--navy);
      line-height: 1;
      letter-spacing: 1px;
    }

    .logo-subtitle {
      font-size: 1rem;
      color: var(--navy);
      font-weight: 600;
      margin-top: 0.5rem;
    }

    header h1 {
      margin: 1rem 0;
      font-size: 2.8rem;
      font-weight: 700;
      background: linear-gradient(to right, white 45%, var(--light-gold) 55%);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
      line-height: 1.2;
    }

    header p {
      font-size: 1.3rem;
      max-width: 800px;
      margin: 0 auto 2rem;
      color: rgba(255, 255, 255, 0.9);
    }

    .gold-accent {
      color: var(--gold);
      font-weight: 800;
    }

    /* ========== NAV ========== */
    nav {
      background: white;
      padding: 1.2rem 0;
      text-align: center;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
      position: sticky;
      top: 0;
      z-index: 100;
      backdrop-filter: blur(5px);
      background-color: rgba(255, 255, 255, 0.9);
    }

    nav a {
      margin: 0 1.2rem;
      color: var(--navy);
      text-decoration: none;
      font-weight: 600;
      font-size: 1.1rem;
      transition: var(--transition);
      padding: 0.6rem 1.2rem;
      border-radius: 50px;
      position: relative;
    }

    nav a:hover {
      color: var(--gold);
    }

    nav a::after {
      content: '';
      position: absolute;
      width: 0;
      height: 3px;
      background: var(--gold);
      bottom: 0;
      left: 50%;
      transform: translateX(-50%);
      transition: var(--transition);
    }

    nav a:hover::after {
      width: 60%;
    }

    /* ========== HERO ========== */
    .hero {
      background: linear-gradient(rgba(0, 31, 63, 0.85), rgba(0, 31, 63, 0.9)), 
                  url('https://images.unsplash.com/photo-1522071820081-009f0129c71c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');
      background-size: cover;
      background-position: center;
      background-attachment: fixed;
      color: white;
      padding: 8rem 2rem;
      text-align: center;
      position: relative;
      overflow: hidden;
    }

    .hero::before {
      content: '';
      position: absolute;
      bottom: -50px;
      left: 0;
      width: 100%;
      height: 100px;
      background: var(--light-gray);
      clip-path: polygon(0 70%, 100% 0, 100% 100%, 0% 100%);
      z-index: 1;
    }

    .hero-content {
      max-width: 900px;
      margin: 0 auto;
      position: relative;
      z-index: 2;
      transform: translateY(20px);
      opacity: 0;
      animation: fadeUp 1s forwards 0.3s;
    }

    .hero h1 {
      font-size: 3.5rem;
      margin-bottom: 1.5rem;
      line-height: 1.2;
      text-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
    }

    .hero p {
      font-size: 1.4rem;
      max-width: 700px;
      margin: 0 auto 3rem;
      color: rgba(255, 255, 255, 0.9);
    }

    /* ========== SECTIONS ========== */
    section {
      padding: 6rem 2rem;
      max-width: 1200px;
      margin: auto;
      position: relative;
    }

    .section-header {
      text-align: center;
      margin-bottom: 4rem;
    }

    .section-header h2 {
      color: var(--navy);
      font-size: 2.8rem;
      margin-bottom: 1.5rem;
      position: relative;
      display: inline-block;
    }

    .section-header h2::after {
      content: '';
      position: absolute;
      width: 80px;
      height: 4px;
      background: var(--gold);
      bottom: -15px;
      left: 50%;
      transform: translateX(-50%);
      border-radius: 2px;
    }

    .section-header p {
      color: var(--dark-gray);
      max-width: 700px;
      margin: 0 auto;
      font-size: 1.2rem;
    }

    /* ========== CARDS ========== */
    .card-container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 2rem;
      margin-top: 3rem;
    }

    .card {
      background: white;
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
      transition: var(--transition);
      transform: translateY(30px);
      opacity: 0;
      animation: fadeUp 0.8s forwards;
      animation-delay: calc(var(--delay) * 0.1s);
    }

    .card:nth-child(1) { --delay: 1; }
    .card:nth-child(2) { --delay: 2; }
    .card:nth-child(3) { --delay: 3; }

    .card:hover {
      transform: translateY(-10px) !important;
      box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
    }

    .card-content {
      padding: 2.5rem;
    }

    .card h3 {
      color: var(--navy);
      margin-top: 0;
      font-size: 1.6rem;
      margin-bottom: 1.5rem;
      position: relative;
      padding-bottom: 1rem;
    }

    .card h3::after {
      content: '';
      position: absolute;
      width: 40px;
      height: 3px;
      background: var(--gold);
      bottom: 0;
      left: 0;
    }

    .icon {
      font-size: 3rem;
      color: var(--gold);
      margin-bottom: 1.5rem;
    }

    /* ========== FEATURES ========== */
    .features {
      background: var(--medium-gray);
      padding: 6rem 2rem;
    }

    .feature-container {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 4rem;
      align-items: center;
    }

    .feature-image {
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 15px 40px rgba(0, 0, 0, 0.1);
      transform: rotate(-3deg);
      transition: var(--transition);
    }

    .feature-image:hover {
      transform: rotate(0) scale(1.02);
    }

    .feature-image img {
      width: 100%;
      height: auto;
      display: block;
    }

    .feature-content {
      padding-left: 2rem;
    }

    .feature-content h3 {
      font-size: 2.2rem;
      color: var(--navy);
      margin-bottom: 1.5rem;
    }

    .feature-content ul {
      list-style: none;
      margin-top: 2rem;
    }

    .feature-content li {
      margin-bottom: 1.2rem;
      position: relative;
      padding-left: 2.5rem;
    }

    .feature-content li::before {
      content: '\f00c';
      font-family: 'Font Awesome 6 Free';
      font-weight: 900;
      color: var(--gold);
      position: absolute;
      left: 0;
      top: 0;
    }

    /* ========== TESTIMONIALS ========== */
    .testimonials {
      background: var(--navy);
      color: white;
      padding: 6rem 2rem;
      text-align: center;
    }

    .testimonials .section-header h2 {
      color: white;
    }

    .testimonials .section-header h2::after {
      background: var(--gold);
    }

    .testimonial-container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 2rem;
      margin-top: 4rem;
    }

    .testimonial {
      background: rgba(255, 255, 255, 0.1);
      backdrop-filter: blur(10px);
      padding: 2.5rem;
      border-radius: 12px;
      transition: var(--transition);
    }

    .testimonial:hover {
      transform: translateY(-10px);
      background: rgba(255, 255, 255, 0.15);
    }

    .testimonial img {
      width: 80px;
      height: 80px;
      border-radius: 50%;
      object-fit: cover;
      margin: 0 auto 1.5rem;
      border: 3px solid var(--gold);
    }

    .testimonial p {
      font-style: italic;
      margin-bottom: 1.5rem;
    }

    .testimonial h4 {
      color: var(--gold);
      margin-bottom: 0.5rem;
    }

    .testimonial span {
      font-size: 0.9rem;
      opacity: 0.8;
    }

    /* ========== CONTACT ========== */
    .contact {
      background: var(--medium-gray);
    }

    .contact-info {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 2rem;
      margin-top: 4rem;
    }

    .contact-item {
      display: flex;
      align-items: center;
      gap: 1.5rem;
      background: white;
      padding: 2rem;
      border-radius: 12px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
      transition: var(--transition);
    }

    .contact-item:hover {
      transform: translateY(-5px);
    }

    .contact-icon {
      font-size: 2rem;
      color: var(--gold);
      min-width: 50px;
      text-align: center;
    }

    .contact-text h3 {
      margin: 0 0 0.5rem 0;
      color: var(--navy);
    }

    .contact-text p {
      margin: 0;
      color: var(--dark-gray);
    }

    .contact-form {
      background: white;
      padding: 3rem;
      border-radius: 12px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
      margin-top: 4rem;
    }

    .form-group {
      margin-bottom: 1.5rem;
    }

    .form-group label {
      display: block;
      margin-bottom: 0.5rem;
      color: var(--navy);
      font-weight: 600;
    }

    .form-group input,
    .form-group textarea,
    .form-group select {
      width: 100%;
      padding: 1rem;
      border: 1px solid #ddd;
      border-radius: 8px;
      font-family: 'Poppins', sans-serif;
      transition: var(--transition);
    }

    .form-group input:focus,
    .form-group textarea:focus,
    .form-group select:focus {
      outline: none;
      border-color: var(--gold);
      box-shadow: 0 0 0 3px rgba(212, 175, 55, 0.2);
    }

    /* ========== CTA ========== */
    .cta {
      background: linear-gradient(135deg, var(--navy) 0%, #002b57 100%);
      color: white;
      text-align: center;
      padding: 6rem 2rem;
      position: relative;
      overflow: hidden;
    }

    .cta::before {
      content: '';
      position: absolute;
      top: -50px;
      left: 0;
      width: 100%;
      height: 100px;
      background: var(--light-gray);
      clip-path: polygon(0 0, 100% 0, 100% 30%, 0 100%);
      z-index: 1;
    }

    .cta-content {
      max-width: 800px;
      margin: 0 auto;
      position: relative;
      z-index: 2;
    }

    .cta h2 {
      font-size: 2.8rem;
      margin-bottom: 1.5rem;
    }

    .cta p {
      font-size: 1.3rem;
      max-width: 600px;
      margin: 0 auto 3rem;
      opacity: 0.9;
    }

    /* ========== BUTTONS ========== */
    .btn {
      display: inline-block;
      background: var(--gold);
      color: var(--navy);
      padding: 1rem 2.5rem;
      border-radius: 50px;
      text-decoration: none;
      font-weight: 600;
      transition: var(--transition);
      border: none;
      cursor: pointer;
      margin-top: 1rem;
      box-shadow: 0 5px 15px rgba(212, 175, 55, 0.3);
      position: relative;
      overflow: hidden;
    }

    .btn:hover {
      background: #d8b43d;
      transform: translateY(-3px);
      box-shadow: 0 8px 20px rgba(212, 175, 55, 0.4);
    }

    .btn-outline {
      background: transparent;
      color: white;
      border: 2px solid var(--gold);
      box-shadow: none;
      margin-left: 1rem;
    }

    .btn-outline:hover {
      background: rgba(212, 175, 55, 0.1);
    }

    .btn-group {
      display: flex;
      justify-content: center;
      gap: 1rem;
      flex-wrap: wrap;
    }

    /* ========== FOOTER ========== */
    footer {
      background: var(--navy);
      color: white;
      padding: 5rem 2rem 2rem;
    }

    .footer-content {
      max-width: 1200px;
      margin: 0 auto;
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 3rem;
      text-align: left;
    }

    .footer-column h3 {
      color: var(--gold);
      margin-top: 0;
      font-size: 1.5rem;
      margin-bottom: 1.5rem;
      position: relative;
      padding-bottom: 1rem;
    }

    .footer-column h3::after {
      content: '';
      position: absolute;
      width: 40px;
      height: 3px;
      background: var(--gold);
      bottom: 0;
      left: 0;
    }

    .footer-links {
      list-style: none;
    }

    .footer-links li {
      margin-bottom: 1rem;
    }

    .footer-links a {
      color: rgba(255, 255, 255, 0.8);
      text-decoration: none;
      transition: var(--transition);
      display: block;
    }

    .footer-links a:hover {
      color: var(--gold);
      transform: translateX(5px);
    }

    .social-links {
      display: flex;
      gap: 1.5rem;
      margin-top: 1.5rem;
    }

    .social-links a {
      color: white;
      font-size: 1.5rem;
      transition: var(--transition);
    }

    .social-links a:hover {
      color: var(--gold);
      transform: translateY(-3px);
    }

    .copyright {
      margin-top: 4rem;
      padding-top: 2rem;
      border-top: 1px solid rgba(255, 255, 255, 0.1);
      text-align: center;
      opacity: 0.7;
    }

    /* ========== ANIMATIONS ========== */
    @keyframes fadeUp {
      from {
        opacity: 0;
        transform: translateY(30px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @keyframes float {
      0% {
        transform: translateY(0);
      }
      50% {
        transform: translateY(-10px);
      }
      100% {
        transform: translateY(0);
      }
    }

    /* ========== RESPONSIVE ========== */
    @media (max-width: 992px) {
      .feature-container {
        grid-template-columns: 1fr;
      }
      
      .feature-image {
        max-width: 600px;
        margin: 0 auto;
      }
      
      .feature-content {
        padding-left: 0;
        text-align: center;
      }
      
      .feature-content ul {
        text-align: left;
      }
    }

    @media (max-width: 768px) {
      header h1 {
        font-size: 2.2rem;
      }
      
      .hero h1 {
        font-size: 2.5rem;
      }
      
      .section-header h2 {
        font-size: 2.2rem;
      }
      
      .btn-group {
        flex-direction: column;
        align-items: center;
      }
      
      .btn-outline {
        margin-left: 0;
        margin-top: 1rem;
      }
    }

    @media (max-width: 576px) {
      nav a {
        display: block;
        margin: 0.5rem 0;
      }
      
      header h1 {
        font-size: 1.8rem;
      }
      
      .hero h1 {
        font-size: 2rem;
      }
      
      .hero p {
        font-size: 1.1rem;
      }
      
      .section-header h2 {
        font-size: 1.8rem;
      }
      
      .logo-bubble {
        padding: 1rem 2rem;
      }
      
      .logo-work {
        font-size: 1.8rem;
      }
      
      .logo-subtitle {
        font-size: 0.9rem;
      }
    }
  </style>
</head>
<body>

  <!-- ========== HEADER ========== -->
  <header>
    <div class="header-content">
      <div class="logo-container">
        <div class="logo-bubble">
          <span class="logo-work">WORK</span>
          <span class="logo-subtitle">TRABALHO PARA A VIDA</span>
        </div>
      </div>
      <h1>Conectando <span class="gold-accent">Talentos Locais</span> a Oportunidades</h1>
      <p>Trabalho para a vida que transforma comunidades e empodera jovens empreendedores</p>
    </div>
  </header>

  <!-- ========== NAV ========== -->
  <nav>
    <a href="#sobre"><i class="fas fa-info-circle"></i> Sobre</a>
    <a href="#problema"><i class="fas fa-exclamation-triangle"></i> O Problema</a>
    <a href="#solucao"><i class="fas fa-lightbulb"></i> Solução</a>
    <a href="#plataforma"><i class="fas fa-laptop-code"></i> Plataforma</a>
    <a href="#contato"><i class="fas fa-envelope"></i> Contato</a>
  </nav>

  <!-- ========== HERO ========== -->
  <section class="hero">
    <div class="hero-content">
      <h1>Empoderando Jovens Empreendedores</h1>
      <p>Revolucionando o mercado de trabalho informal com tecnologia e inclusão social</p>
      <div class="btn-group">
        <a href="#plataforma" class="btn">Ver Demonstração</a>
        <a href="#contato" class="btn btn-outline">Cadastre-se</a>
      </div>
    </div>
  </section>

  <!-- ========== SOBRE ========== -->
  <section id="sobre">
    <div class="section-header">
      <h2>Sobre o Projeto</h2>
      <p>Nosso objetivo é criar pontes entre talentos e necessidades, transformando a economia local e gerando oportunidades reais.</p>
    </div>
    
    <div class="card-container">
      <div class="card">
        <div class="card-content">
          <div class="icon">
            <i class="fas fa-handshake"></i>
          </div>
          <h3>Missão</h3>
          <p>Facilitar o acesso ao trabalho digno para jovens e autônomos, promovendo conexões significativas dentro das comunidades através de tecnologia acessível.</p>
        </div>
      </div>
      
      <div class="card">
        <div class="card-content">
          <div class="icon">
            <i class="fas fa-eye"></i>
          </div>
          <h3>Visão</h3>
          <p>Ser referência nacional em conexão de serviços informais até 2027, impactando positivamente a vida de mais de 50.000 jovens em todo o Brasil.</p>
        </div>
      </div>
      
      <div class="card">
        <div class="card-content">
          <div class="icon">
            <i class="fas fa-heart"></i>
          </div>
          <h3>Valores</h3>
          <p>Inclusão social, transparência, empoderamento jovem, desenvolvimento comunitário e inovação tecnológica acessível.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- ========== PROBLEMA ========== -->
  <section id="problema" class="features">
    <div class="section-header">
      <h2>O Problema</h2>
      <p>Entendemos os desafios enfrentados por jovens talentosos em encontrar oportunidades dignas de trabalho.</p>
    </div>
    
    <div class="feature-container">
      <div class="feature-image">
        <img src="https://images.unsplash.com/photo-1521791055366-0d553872125f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="Jovem procurando emprego">
      </div>
      
      <div class="feature-content">
        <h3>Desafios do Mercado Informal</h3>
        <p>Segundo dados do IBGE, mais de 40% dos jovens entre 18-24 anos estão desempregados ou no mercado informal, enfrentando:</p>
        
        <ul>
          <li>Dificuldade de acesso ao primeiro emprego</li>
          <li>Falta de visibilidade para seus serviços</li>
          <li>Relações trabalhistas inseguras</li>
          <li>Dificuldade em precificar seus serviços</li>
          <li>Falta de rede de contatos profissionais</li>
        </ul>
      </div>
    </div>
  </section>

  <!-- ========== SOLUÇÃO ========== -->
  <section id="solucao">
    <div class="section-header">
      <h2>Nossa Solução</h2>
      <p>Uma plataforma digital completa que resolve esses problemas de forma simples e eficaz.</p>
    </div>
    
    <div class="card-container">
      <div class="card">
        <div class="card-content">
          <div class="icon">
            <i class="fas fa-mobile-alt"></i>
          </div>
          <h3>Plataforma Digital</h3>
          <p>Interface intuitiva onde prestadores criam perfis completos com portfólio, áreas de atuação e avaliações, enquanto clientes encontram serviços por localização e especialidade.</p>
        </div>
      </div>
      
      <div class="card">
        <div class="card-content">
          <div class="icon">
            <i class="fas fa-shield-alt"></i>
          </div>
          <h3>Segurança Integrada</h3>
          <p>Sistema de verificação de identidade, avaliações transparentes e histórico de serviços prestados, garantindo confiança para ambas as partes.</p>
        </div>
      </div>
      
      <div class="card">
        <div class="card-content">
          <div class="icon">
            <i class="fas fa-graduation-cap"></i>
          </div>
          <h3>Capacitação</h3>
          <p>Cursos online gratuitos sobre empreendedorismo, precificação de serviços, atendimento ao cliente e gestão financeira básica.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- ========== PLATAFORMA ========== -->
  <section id="plataforma" class="features" style="background: var(--medium-gray);">
    <div class="section-header">
      <h2>Conheça a Plataforma</h2>
      <p>Veja como nossa solução funciona na prática</p>
    </div>
    
    <div class="feature-container">
      <div class="feature-content">
        <h3>Como Funciona?</h3>
        <p>Nosso sistema foi desenvolvido pensando na simplicidade para usuários de todos os níveis tecnológicos:</p>
        
        <ul>
          <li><strong>Cadastro Simples:</strong> Em menos de 5 minutos você está pronto para oferecer ou contratar serviços</li>
          <li><strong>Busca Inteligente:</strong> Filtre por localização, tipo de serviço, avaliações e preço</li>
          <li><strong>Chat Integrado:</strong> Comunicação direta e segura entre prestadores e clientes</li>
          <li><strong>Pagamento Seguro:</strong> Opções de pagamento via PIX, cartão ou dinheiro</li>
          <li><strong>App Mobile:</strong> Disponível para Android e iOS (em desenvolvimento)</li>
        </ul>
        
        <a href="#" class="btn" style="margin-top: 2rem;">Ver Demonstração Interativa</a>
      </div>
      
      <div class="feature-image">
        <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="Mockup da plataforma Life's Work">
      </div>
    </div>
  </section>

  <!-- ========== DEPOIMENTOS ========== -->
  <section class="testimonials">
    <div class="section-header">
      <h2>Quem Usa, Aprova</h2>
      <p>Veja o que estão falando sobre a Life's Work</p>
    </div>
    
    <div class="testimonial-container">
      <div class="testimonial">
        <img src="https://randomuser.me/api/portraits/women/32.jpg" alt="Depoimento de Ana">
        <p>"Consegui meu primeiro cliente de jardinagem no mesmo dia que me cadastrei! A plataforma é super fácil de usar."</p>
        <h4>Ana Silva</h4>
        <span>Jardinagem - São Paulo</span>
      </div>
      
      <div class="testimonial">
        <img src="https://randomuser.me/api/portraits/men/75.jpg" alt="Depoimento de Carlos">
        <p>"Como estudante, o Life's Work me permite conciliar meus horários e ganhar uma renda extra com aulas particulares."</p>
        <h4>Carlos Oliveira</h4>
        <span>Reforço Escolar - Rio de Janeiro</span>
      </div>
      
      <div class="testimonial">
        <img src="https://randomuser.me/api/portraits/women/63.jpg" alt="Depoimento de Mariana">
        <p>"Finalmente encontrei pessoas confiáveis para pequenos reparos em casa. O sistema de avaliações é ótimo!"</p>
        <h4>Mariana Costa</h4>
        <span>Cliente - Belo Horizonte</span>
      </div>
    </div>
  </section>

  <!-- ========== CONTATO ========== -->
  <section id="contato" class="contact">
    <div class="section-header">
      <h2>Fale Conosco</h2>
      <p>Estamos sempre abertos para parcerias, sugestões e dúvidas.</p>
    </div>
    
    <div class="contact-info">
      <div class="contact-item">
        <div class="contact-icon">
          <i class="fas fa-envelope"></i>
        </div>
        <div class="contact-text">
          <h3>Email</h3>
          <p>contato@lifeswork.com</p>
        </div>
      </div>
      
      <div class="contact-item">
        <div class="contact-icon">
          <i class="fas fa-phone-alt"></i>
        </div>
        <div class="contact-text">
          <h3>Telefone</h3>
          <p>(11) 98765-4321</p>
        </div>
      </div>
      
      <div class="contact-item">
        <div class="contact-icon">
          <i class="fab fa-instagram"></i>
        </div>
        <div class="contact-text">
          <h3>Instagram</h3>
          <p>@lifeswork_oficial</p>
        </div>
      </div>
      
      <div class="contact-item">
        <div class="contact-icon">
          <i class="fas fa-map-marker-alt"></i>
        </div>
        <div class="contact-text">
          <h3>Endereço</h3>
          <p>Av. Paulista, 1000 - São Paulo/SP</p>
        </div>
      </div>
    </div>
    
    <div class="contact-form">
      <h3 style="color: var(--navy); margin-bottom: 2rem;">Mande sua mensagem</h3>
      <form>
        <div class="form-group">
          <label for="name">Nome</label>
          <input type="text" id="name" placeholder="Seu nome completo">
        </div>
        
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" placeholder="seu@email.com">
        </div>
        
        <div class="form-group">
          <label for="subject">Assunto</label>
          <select id="subject">
            <option value="">Selecione...</option>
            <option value="duvida">Dúvida</option>
            <option value="parceria">Parceria</option>
            <option value="sugestao">Sugestão</option>
            <option value="outro">Outro</option>
          </select>
        </div>
        
        <div class="form-group">
          <label for="message">Mensagem</label>
          <textarea id="message" rows="5" placeholder="Escreva sua mensagem aqui..."></textarea>
        </div>
        
        <button type="submit" class="btn">Enviar Mensagem</button>
      </form>
    </div>
  </section>
