<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Arriendo de Canchas - Complejo Deportivo</title>
    <link rel="stylesheet" href="style.css">
    <style>
        html, body {
            margin: 0;
            padding: 0;
            height: 100%;
        }

        body {
            display: flex;
            flex-direction: column;
        }
         body {
            background-image: url('images/fondo-deportes.jpg'); 
            
        }
        .contenedor {
            display: flex;
            align-items: center; /* Alinea verticalmente al centro */
            margin: 30px; /* Espaciado alrededor del contenedor */
        }
        /* Estilo adicional para la sección de reservas */
        .reservas {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 50px;
    background-image: url('images/fondo-deportes.jpg'); /* Reemplaza con la ruta de tu imagen */
    background-size: cover; /* Ajustar la imagen para cubrir todo el contenedor */
    background-position: center; /* Centrar la imagen */
    background-repeat: no-repeat; /* Evitar que se repita */
    color: #fff; /* Cambiar el color del texto a blanco para que sea legible */
}


        .deporte {
            margin: 20px 0;
            background-color: #fff;
            border: 1px solid #ff7f00; /* Borde naranja */
            border-radius: 10px;
            padding: 20px;
            width: 300px;
            text-align: center;
        }

        .canchas {
            display: none; /* Oculto por defecto */
            margin-top: 15px;
        }

        .deporte-header {
            cursor: pointer;
            color: #ff7f00; /* Color naranja */
            font-weight: bold;
        }

        .circulo {
            display: inline-block;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            margin: 5px;
            cursor: pointer;
            overflow: hidden; /* Para ocultar partes de la imagen que sobresalen */
            position: relative; /* Para el número */
        }

        .circulo img {
            width: 100%;
            height: 100%;
            object-fit: cover; /* Ajustar la imagen para que cubra el círculo */
            transition: transform 0.3s ease; /* Transición suave para el hover */
        }

        .circulo:hover img {
            transform: scale(1.1); /* Ampliar la imagen al pasar el mouse */
        }

        .circulo .numero {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white; /* Color del número */
            font-weight: bold;
        }

        .reservar-form {
            display: none; /* Oculto por defecto */
            margin-top: 10px;
            color: black;
            text-align: left; /* Alinear texto a la izquierda */
        }

        .reservar-form h3 {
            margin-bottom: 10px;
        }

        .reservar-form label {
            display: block; /* Hacer etiquetas de bloque */
            margin-bottom: 5px;
            color: orangered;
        }

        .reservar-form input {
            width: 100%; /* Ancho completo */
            padding: 8px; /* Espaciado interno */
            margin-bottom: 10px; /* Espaciado entre campos */
            border: 1px solid #ccc; /* Borde gris */
            border-radius: 5px; /* Esquinas redondeadas */
        }

        .reservar-form button {
            background-color: #ff7f00; /* Botón naranja */
            color: white; /* Texto blanco */
            border: none; /* Sin borde */
            padding: 10px; /* Espaciado interno */
            border-radius: 5px; /* Esquinas redondeadas */
            cursor: pointer; /* Cambiar cursor al pasar */
        }

        .reservar-form button:hover {
            background-color: #cc6600; /* Color más oscuro al pasar */
        }
       .texto {
    text-align: center; /* Centra el texto horizontalmente */
    font-size: 1.4em;
    background-color: rgba(255, 174, 105, 0.8);
    margin: 0 auto; /* Centra el contenedor */
    padding: 40px; /* Espaciado interno para que el texto no esté pegado al borde */
    border-radius: 25px; /* Esquinas redondeadas (opcional) */
    max-width: 800px; /* Limita el ancho máximo del contenedor */
    color: black; 
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

    <section class="reservas">
        <div class="texto">
            <h2>Reserva tu espacio deportivo</h2> <!-- Encabezado sobre el texto -->
        </div>

        <!-- Sección para el fútbol -->
        <div class="deporte">
            <div class="deporte-header" onclick="toggleCanchas('futbol')">Fútbol</div>
            <div class="canchas" id="futbol">
                <div class="circulo" onclick="toggleReserva('reservaFutbol1')">
                    <img src="images/fut.png" alt="Pelota de Fútbol">
                    <div class="numero">C1</div>
                </div>
                <div class="circulo" onclick="toggleReserva('reservaFutbol2')">
                    <img src="images/fut.png" alt="Pelota de Fútbol">
                    <div class="numero">C2</div>
                </div>
                <div class="circulo" onclick="toggleReserva('reservaFutbol3')">
                    <img src="images/fut.png" alt="Pelota de Fútbol">
                    <div class="numero">C3</div>
                </div>
                <div class="circulo" onclick="toggleReserva('reservaFutbol4')">
                    <img src="images/fut.png" alt="Pelota de Fútbol">
                    <div class="numero">C4</div>
                </div>
                <div class="circulo" onclick="toggleReserva('reservaFutbol5')">
                    <img src="images/fut.png" alt="Pelota de Fútbol">
                    <div class="numero">C5</div>
                </div>
            </div>
            <div class="reservar-form" id="reservaFutbol1">
                <h3>Reserva C1</h3>
                <form action="reservation.jsp" method="post">
                    <label for="date">Fecha:</label>
                    <input type="date" id="date" name="date" required>
                    <label for="name">Nombre:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="email">Correo Electrónico:</label>
                    <input type="email" id="email" name="email" required>
                    <button type="submit">Reservar</button>
                </form>
            </div>
            <div class="reservar-form" id="reservaFutbol2">
                <h3>Reserva C2</h3>
                <form action="reservation.jsp" method="post">
                    <label for="date">Fecha:</label>
                    <input type="date" id="date" name="date" required>
                    <label for="name">Nombre:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="email">Correo Electrónico:</label>
                    <input type="email" id="email" name="email" required>
                    <button type="submit">Reservar</button>
                </form>
            </div>
            <div class="reservar-form" id="reservaFutbol3">
                <h3>Reserva C3</h3>
                <form action="reservation.jsp" method="post">
                    <label for="date">Fecha:</label>
                    <input type="date" id="date" name="date" required>
                    <label for="name">Nombre:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="email">Correo Electrónico:</label>
                    <input type="email" id="email" name="email" required>
                    <button type="submit">Reservar</button>
                </form>
            </div>
            <div class="reservar-form" id="reservaFutbol4">
                <h3>Reserva C4</h3>
                <form action="reservation.jsp" method="post">
                    <label for="date">Fecha:</label>
                    <input type="date" id="date" name="date" required>
                    <label for="name">Nombre:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="email">Correo Electrónico:</label>
                    <input type="email" id="email" name="email" required>
                    <button type="submit">Reservar</button>
                </form>
            </div>
            <div class="reservar-form" id="reservaFutbol5">
                <h3>Reserva C5</h3>
                <form action="reservation.jsp" method="post">
                    <label for="date">Fecha:</label>
                    <input type="date" id="date" name="date" required>
                    <label for="name">Nombre:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="email">Correo Electrónico:</label>
                    <input type="email" id="email" name="email" required>
                    <button type="submit">Reservar</button>
                </form>
            </div>
        </div>

        <!-- Sección para el tenis -->
        <div class="deporte">
            <div class="deporte-header" onclick="toggleCanchas('tenis')">Tenis</div>
            <div class="canchas" id="tenis">
                <div class="circulo" onclick="toggleReserva('reservaTenis1')">
                    <img src="images/tenis.png" alt="Pelota de Tenis">
                    <div class="numero">C1</div>
                </div>
                <div class="circulo" onclick="toggleReserva('reservaTenis2')">
                    <img src="images/tenis.png" alt="Pelota de Tenis">
                    <div class="numero">C2</div>
                </div>
            </div>
            <div class="reservar-form" id="reservaTenis1">
                <h3>Reserva C1</h3>
                <form action="reservation.jsp" method="post">
                    <label for="date">Fecha:</label>
                    <input type="date" id="date" name="date" required>
                    <label for="name">Nombre:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="email">Correo Electrónico:</label>
                    <input type="email" id="email" name="email" required>
                    <button type="submit">Reservar</button>
                </form>
            </div>
            <div class="reservar-form" id="reservaTenis2">
                <h3>Reserva C2</h3>
                <form action="reservation.jsp" method="post">
                    <label for="date">Fecha:</label>
                    <input type="date" id="date" name="date" required>
                    <label for="name">Nombre:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="email">Correo Electrónico:</label>
                    <input type="email" id="email" name="email" required>
                    <button type="submit">Reservar</button>
                </form>
            </div>
        </div>

        <!-- Sección para el baloncesto -->
        <div class="deporte">
            <div class="deporte-header" onclick="toggleCanchas('baloncesto')">Baloncesto</div>
            <div class="canchas" id="baloncesto">
                <div class="circulo" onclick="toggleReserva('reservaBaloncesto1')">
                    <img src="images/basket.png" alt="Pelota de Baloncesto">
                    <div class="numero">C1</div>
                </div>
                <div class="circulo" onclick="toggleReserva('reservaBaloncesto2')">
                    <img src="images/basket.png" alt="Pelota de Baloncesto">
                    <div class="numero">C2</div>
                </div>
            </div>
            <div class="reservar-form" id="reservaBaloncesto1">
                <h3>Reserva C1</h3>
                <form action="reservation.jsp" method="post">
                    <label for="date">Fecha:</label>
                    <input type="date" id="date" name="date" required>
                    <label for="name">Nombre:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="email">Correo Electrónico:</label>
                    <input type="email" id="email" name="email" required>
                    <button type="submit">Reservar</button>
                </form>
            </div>
            <div class="reservar-form" id="reservaBaloncesto2">
                <h3>Reserva C2</h3>
                <form action="reservation.jsp" method="post">
                    <label for="date">Fecha:</label>
                    <input type="date" id="date" name="date" required>
                    <label for="name">Nombre:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="email">Correo Electrónico:</label>
                    <input type="email" id="email" name="email" required>
                    <button type="submit">Reservar</button>
                </form>
            </div>
        </div>

        <!-- Sección para el pádel -->
        <div class="deporte">
            <div class="deporte-header" onclick="toggleCanchas('padel')">Pádel</div>
            <div class="canchas" id="padel">
                <div class="circulo" onclick="toggleReserva('reservaPadel1')">
                    <img src="images/padel.png" alt="Pelota de Pádel">
                    <div class="numero">C1</div>
                </div>
                <div class="circulo" onclick="toggleReserva('reservaPadel2')">
                    <img src="images/padel.png" alt="Pelota de Pádel">
                    <div class="numero">C2</div>
                </div>
                <div class="circulo" onclick="toggleReserva('reservaPadel3')">
                    <img src="images/padel.png" alt="Pelota de Pádel">
                    <div class="numero">C3</div>
                </div>
            </div>
            <div class="reservar-form" id="reservaPadel1">
                <h3>Reserva C1</h3>
                <form action="reservation.jsp" method="post">
                    <label for="date">Fecha:</label>
                    <input type="date" id="date" name="date" required>
                    <label for="name">Nombre:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="email">Correo Electrónico:</label>
                    <input type="email" id="email" name="email" required>
                    <button type="submit">Reservar</button>
                </form>
            </div>
            <div class="reservar-form" id="reservaPadel2">
                <h3>Reserva C2</h3>
                <form action="reservation.jsp" method="post">
                    <label for="date">Fecha:</label>
                    <input type="date" id="date" name="date" required>
                    <label for="name">Nombre:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="email">Correo Electrónico:</label>
                    <input type="email" id="email" name="email" required>
                    <button type="submit">Reservar</button>
                </form>
            </div>
            <div class="reservar-form" id="reservaPadel3">
                <h3>Reserva C3</h3>
                <form action="reservation.jsp" method="post">
                    <label for="date">Fecha:</label>
                    <input type="date" id="date" name="date" required>
                    <label for="name">Nombre:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="email">Correo Electrónico:</label>
                    <input type="email" id="email" name="email" required>
                    <button type="submit">Reservar</button>
                </form>
            </div>
        </div>
    </section>

    <footer>
        <p>&copy; 2024 Complejo Deportivo. Todos los derechos reservados.</p>
        <p>Tu lugar para disfrutar del deporte y la diversión.</p>
        <div class="footer-nav">
            <a href="privacy.jsp">Política de Privacidad</a>
            <a href="terms.jsp">Términos y Condiciones</a>
            <a href="contacto.jsp">Contacto</a>
    </footer>

    <script>
        function toggleCanchas(deporte) {
            const canchas = document.getElementById(deporte);
            canchas.style.display = (canchas.style.display === 'block') ? 'none' : 'block';
        }

        function toggleReserva(reservaId) {
            const reservaForm = document.getElementById(reservaId);
            const visibleForms = document.querySelectorAll('.reservar-form:not([id="' + reservaId + '"])');

            // Oculta otros formularios si están visibles
            visibleForms.forEach(form => {
                form.style.display = 'none';
            });

            // Alterna la visibilidad del formulario seleccionado
            reservaForm.style.display = (reservaForm.style.display === 'block') ? 'none' : 'block';
        }
    </script>
</body>
</html>
