<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Nosotros - Complejo Deportivo</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            background-image: url('images/fondo-deportes.jpg'); 
            
        }
        .contenedor {
            display: flex;
            align-items: center; /* Alinea verticalmente al centro */
            margin: 30px; /* Espaciado alrededor del contenedor */
        }
        
        .texto, .imagen {
            flex: 1; /* Permite que cada secci�n ocupe el mismo espacio */
            display: flex;
            flex-direction: column; /* Coloca el contenido en columna */
            justify-content: center; /* Centra el contenido verticalmente */
            align-items: center; /* Centra el contenido horizontalmente */
            
            
        }
        .imagen img {
            max-width: 100%; /* Aumenta el tama�o m�ximo al 150% del contenedor */
            height: auto; /* Mantiene la proporci�n de la imagen */
            width: 90%;
            background-color: rgba(255, 174, 105, 0.8);
            padding: 10px; /* Espaciado interno para que el texto no est� pegado al borde */
            border-radius: 150px; /* Esquinas redondeadas (opcional) */
            margin: 10px; /* Espaciado entre las secciones */
            
        } 
        .texto {
            text-align: center; /* Centra el texto horizontalmente */
            font-size: 1.4em;
            background-color: rgba(255, 174, 105, 0.8);
            margin-left: 100px;
            margin-right: 50px;
            padding: 40px; /* Espaciado interno para que el texto no est� pegado al borde */
            border-radius: 25px; /* Esquinas redondeadas (opcional) */
        }
    </style>
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
                <button class="dropbtn">Iniciar Sesi�n</button>
                <div class="dropdown-content">
                    <a href="login.jsp">Iniciar Sesi�n</a>
                    <a href="register.jsp">Registro</a>
                </div>
            </div>  
        </nav>
    </header>

    <section class="contenedor">
        <div class="texto">
            <h2>Sobre Nosotros</h2> <!-- Encabezado sobre el texto -->
        <p>El Complejo Deportivo Ulsitos fue fundado con la misi�n de ofrecer un espacio de esparcimiento 
            y entrenamiento para personas de todas las edades. </p>
        <p>Nos esforzamos en brindar a nuestros clientes unas instalaciones de la mas alta calidad y un 
            entorno seguro para la practica de deportes tales como basquetbol, futbol, padel y tenis.<p>
        </div>
        <div class="imagen">
            <img src="images/logo_ulsitos.png" alt="Logo del Complejo Deportivo">
        </div>
    </section>
    
    <footer>
        <p>&copy; 2024 Complejo Deportivo. Todos los derechos reservados.</p>
        <p>Tu lugar para disfrutar del deporte y la diversi�n.</p>
        <div class="footer-nav">
            <a href="privacy.jsp">Pol�tica de Privacidad</a>
            <a href="terms.jsp">T�rminos y Condiciones</a>
            <a href="contacto.jsp">Contacto</a>
        </div>
        
    </footer>
    
</body>
</html>