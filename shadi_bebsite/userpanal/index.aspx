<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Personal Shape - Creative Designer</title>
  <link href="../css/templatemo-personal-style.css" rel="stylesheet" />
</head>
<body>
  <!-- Navigation -->
  <nav id="navbar">
    <div class="nav-container">
      <div class="logo">Welcome</div>
      <ul class="nav-links">
        <li><a href="#home">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#portfolio">Portfolio</a></li>
          <li><a href="login.aspx">Login</a></li>
        <li><a href="profillogin.aspx"><button>Register</button></a></li>
      </ul>
      <div class="mobile-menu-toggle" id="mobileMenuToggle">
        <div class="hamburger"></div>
        <div class="hamburger"></div>
        <div class="hamburger"></div>
      </div>
    </div>
  </nav>

  <!-- Mobile Menu -->
  <div class="mobile-menu" id="mobileMenu">
    <ul class="mobile-nav-links">
      <li><a href="#home">Home</a></li>
      <li><a href="#about">About</a></li>
      <li><a href="#portfolio">Portfolio</a></li>
      <li><a href="#contact">Contact</a></li>
    </ul>
  </div>

  <!-- Hero Section -->
  <section id="home" class="hero">
   
    <div class="hero-content">
      <h1>WELCOME TO OUR WEDDING HUB</h1>
      <p class="subtitle">With You, forever feels like Just The Beginning</p>
      <a href="profileview.aspx" class="cta-button">VIEW PROFILE</a>
    </div>
    <div class="scroll-indicator" onclick="document.getElementById('about').scrollIntoView()"></div>
  </section>

  <script src="templatemo-personal-javascripts.js"></script>
</body>
</html>
