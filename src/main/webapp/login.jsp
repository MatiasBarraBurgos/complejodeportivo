<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Iniciar Sesión</title>
    <!-- CSS de Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- JS de Bootstrap y sus dependencias (jQuery y Popper.js) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            background-image: url('images/fondo-deportes.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            background-repeat: no-repeat;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background-color: white; /* Fondo blanco */
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            border: 1px solid #ddd; /* Borde similar al anterior */
        }

        .form-title {
            font-size: 2rem; /* Tamaño grande para el título */
            font-weight: bold;
            margin-bottom: 1.5rem;
            text-align: center; /* Centrado */
            color: #333; /* Color del texto */
        }

        .error-message {
            color: red; /* Color para el mensaje de error */
            text-align: center; /* Centrado */
            margin-bottom: 1rem; /* Espacio debajo del mensaje */
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center mt-4">
            <div class="col-md-6">
                <form action="login" method="post" class="form-container">
                    <!-- Texto del título dentro del recuadro -->
                    <h2 class="form-title">Iniciar Sesión</h2>
                    
                    <!-- Mostrar mensaje de error si existe -->
                    <%
                        String errorMessage = (String) session.getAttribute("errorMessage");
                        if (errorMessage != null) {
                    %>
                    <div class="error-message"><%= errorMessage %></div>
                    <%
                        session.removeAttribute("errorMessage"); // Limpiar el mensaje después de mostrarlo
                        }
                    %>
                    
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" id="email" name="email" class="form-control" placeholder="Ingresa tu email" required>
                    </div>
                    <div class="mb-3">
                        <label for="contrasena" class="form-label">Contraseña</label>
                        <input type="password" id="contrasena" name="contrasena" class="form-control" placeholder="Ingresa tu contraseña" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Iniciar Sesión</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
