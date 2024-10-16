<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio - Complejo Deportivo Ulsitos</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
   <header>
    <div class="logo-container">
        <img src="images/logo_ulsitos.png" alt="Logo del Complejo Deportivo" class="logo">
        <h1>Complejo Deportivo</h1>
    </div>
    <nav>
        <a href="index.jsp">Inicio</a>
        <a href="nosotros.jsp">Nosotros</a>
        <a href="arriendo.jsp">Arriendo de Canchas</a>
        <a href="contacto.jsp">Contacto</a>
        <div class="dropdown">
            <button class="dropbtn">
                <c:choose>
                    <c:when test="${not empty sessionScope.username}">
                        Cerrar Sesión
                    </c:when>
                    <c:otherwise>
                        Entrar
                    </c:otherwise>
                </c:choose>
            </button>
            <div class="dropdown-content">
                <c:choose>
                    <c:when test="${not empty sessionScope.username}">
                        <a href="logout.jsp">Cerrar Sesión</a>
                    </c:when>
                    <c:otherwise>
                        <a href="login.jsp">Iniciar Sesión</a>
                        <a href="register.jsp">Registro</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </nav>
</header>

<section class="home">
    <h2>Bienvenido al Complejo Deportivo Ulsitos</h2>
    <p>
        <c:choose>
            <c:when test="${not empty sessionScope.username}">
                ¡Bienvenido(a), ${sessionScope.username}!
            </c:when>
            <c:otherwise>
                <!-- Aquí puedes añadir un mensaje para los usuarios no registrados si lo deseas -->
            </c:otherwise>
        </c:choose>
    </p>
    <p>Disfruta de nuestras instalaciones deportivas de primer nivel. Reserva tu espacio, participa en eventos, y disfruta de un ambiente sano y deportivo.</p>
</section>

<section class="carousel">
    <div class="carousel-container">
        <img src="images/imagen1.jpg" alt="Imagen 1" class="carousel-image active">
        <img src="images/imagen2.jpg" alt="Imagen 2" class="carousel-image">
        <img src="images/imagen3.jpg" alt="Imagen 3" class="carousel-image">
        <img src="images/imagen4.jpg" alt="Imagen 4" class="carousel-image">
    </div>
    <button class="carousel-button prev" onclick="moveSlide(-1)">&#10094;</button>
    <button class="carousel-button next" onclick="moveSlide(1)">&#10095;</button>
    <div class="carousel-indicators">
        <span class="indicator active" onclick="currentSlide(0)"></span>
        <span class="indicator" onclick="currentSlide(1)"></span>
        <span class="indicator" onclick="currentSlide(2)"></span>
        <span class="indicator" onclick="currentSlide(3)"></span>
    </div>
</section>

<section class="servicios">
    <div class="servicio">
        <img src="images/icon-canchas.png" alt="Icono de Canchas" class="icon">
        <h2>Arriendo de Canchas</h2>
        <p>Futbol, Tenis, Basquetbol, Padel.</p>
        <p>Sistema de reservas que incluye accesorios si lo necesitas.</p>
        <button onclick="window.location.href='arriendo.jsp'" class="btn-reservar">Reservar y Pagar</button>
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

<script>
    let currentSlideIndex = 0;

    function moveSlide(direction) {
        const slides = document.querySelectorAll('.carousel-image');
        const indicators = document.querySelectorAll('.indicator');
        slides[currentSlideIndex].classList.remove('active');
        indicators[currentSlideIndex].classList.remove('active');
        currentSlideIndex = (currentSlideIndex + direction + slides.length) % slides.length;
        slides[currentSlideIndex].classList.add('active');
        indicators[currentSlideIndex].classList.add('active');
    }

    function currentSlide(index) {
        const slides = document.querySelectorAll('.carousel-image');
        const indicators = document.querySelectorAll('.indicator');
        slides[currentSlideIndex].classList.remove('active');
        indicators[currentSlideIndex].classList.remove('active');
        currentSlideIndex = index;
        slides[currentSlideIndex].classList.add('active');
        indicators[currentSlideIndex].classList.add('active');
    }

    setInterval(() => {
        moveSlide(1);
    }, 5000);
</script>
</body>
</html>
