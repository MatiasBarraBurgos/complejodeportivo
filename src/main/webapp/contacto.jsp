<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Contacto - Complejo Deportivo</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <div class="logo-container" onclick="window.location.href='index.html'">
            <img src="images/logo_ulsitos.png" alt="Logo" class="logo">
            <h1>Complejo Deportivo</h1>
        </div>
       <nav>
            <a href="index.html">Inicio</a>
            <a href="nosotros.jsp">Nosotros</a>
            <a href="arriendo.jsp">Arriendo de Canchas</a>
            <a href="contacto.jsp">Contacto</a>
            <div class="dropdown">
                <button class="dropbtn">Iniciar Sesión</button>
                <div class="dropdown-content">
                    <a href="login.jsp">Iniciar Sesión</a>
                    <a href="register.jsp">Registro</a>
                </div>
            </div>  
        </nav>
    </header>
    <section class="contact">
        <h2>Contacto</h2>
        <form action="send_message.jsp" method="post">
            <label for="name">Nombre:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="email">Correo Electrónico:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="message">Mensaje:</label>
            <textarea id="message" name="message" required></textarea>
            
            <button type="submit">Enviar</button>
        </form>
    </section>
</body>
</html>
