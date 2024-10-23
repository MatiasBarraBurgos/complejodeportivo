<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Contacto - Complejo Deportivo</title>
    <link rel="stylesheet" href="style.css">
    
    <style>
        body {
            background-image: url('images/fondo-deportes.jpg'); 
            display: flex;             /* Habilita flexbox para el body */
            flex-direction: column;    /* Alinea los elementos en columna */
        }
        .contenedor {          
            align-items: center; /* Alinea verticalmente al centro */
            margin-top: 100px; /* Espaciado alrededor del contenedor */
            margin-left: 100px;
            margin-right: 100px;
            flex: 1;
            
        }
        .contenedor_images {          
            display:grid;
            grid-template-columns: repeat(3, 1fr);
            margin-top: 50px; /* Espaciado alrededor del contenedor */               
            justify-items: center;        /* Centra horizontalmente los elementos en las celdas */
            height: auto;
            margin-bottom: 300px;
            gap:0;
        }
        
        .texto{
            flex: 1; /* Permite que cada sección ocupe el mismo espacio */
            display: flex;
            flex-direction: column; /* Coloca el contenido en columna */
            justify-content: center; /* Centra el contenido verticalmente */
            align-items: center; /* Centra el contenido horizontalmente */
            text-align: center; /* Centra el texto horizontalmente */
            font-size: 1.4em;
            background-color: rgba(255, 174, 105, 0.8);
            margin-left: 100px;
            margin-right: 50px;
            padding: 40px; /* Espaciado interno para que el texto no esté pegado al borde */
            border-radius: 25px; /* Esquinas redondeadas (opcional) */
            
        }
        .imagen img {
            max-width: 100%; /* Aumenta el tamaño máximo al 150% del contenedor */
            width: 100%;
            background-color: rgba(255, 174, 105, 0.8);
            padding: 10px; /* Espaciado interno para que el texto no esté pegado al borde */
            border-radius: 100px; /* Esquinas redondeadas (opcional) */        

            flex-direction: column; /* Coloca el contenido en columna */
            justify-content: center; /* Centra el contenido verticalmente */
            align-items: center; /* Centra el contenido horizontalmente */
            
        } 
        
        footer {
        padding: 20px;
        text-align: center;
        margin-top: auto; /* Asegura que el footer esté siempre al final de la página */
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
            <a href="index.jsp">Inicio</a>
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


        <section class="contenedor">
            <div class="texto">
                <h2>Contactanos</h2> <!-- Encabezado sobre el texto -->
            <p> Para cualquier problema o consulta, Puedes comunicarte con nosotros para tener ua través de los siguientes medios:</p>
            </div>      
        </section>
        
         <section class="contenedor_images">    
            <div class="imagen">
                <img src="images/ig_logo.png" alt="logo instagram ulsitos" >               
            </div>
            <div class="imagen">
                <img src="images/correo_logo.png" alt="logo correo ulsitos" >               
            </div>
             <div class="imagen">
                <img src="images/logo_facebook.png" alt="logo facebook ulsitos" >               
            </div>
              
        </section>
             
        
    <footer>
        <p>&copy; 2024 Complejo Deportivo. Todos los derechos reservados.</p>
        <p>Tu lugar para disfrutar del deporte y la diversión.</p>
        <div class="footer-nav">
            <a href="privacy.jsp">Política de Privacidad</a>
            <a href="terms.jsp">Términos y Condiciones</a>
            <a href="contacto.jsp">Contacto</a>
        </div>
    </footer>
</body>
</html>
