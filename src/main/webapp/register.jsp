<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Usuario</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
    <style>
        body, html {
            height: 100%;
            margin: 0;
        }

        body {
           background-image: url('images/fondo-deportes.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .card {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            padding: 20px;
        }

        h2 {
            color: #333;
        }
    </style>
</head>

<body>

<div class="container">
    <div class="col-md-8">
        <div class="card shadow">
            <h2 class="text-center mb-4">Registrar Usuario</h2>
            <div id="errorMessage" class="alert alert-danger" style="display: none;"></div>
            <div id="successMessage" class="alert alert-success" style="display: none;"></div>
            
            <div class="card-body">
                <form id="registerForm" action="registerAction.jsp" method="post">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label">RUT</label>
                            <input type="text" name="rut_persona" class="form-control" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Nombre</label>
                            <input type="text" name="nombre" class="form-control" required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Apellido</label>
                            <input type="text" name="apellido" class="form-control" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Dirección</label>
                            <input type="text" name="direccion" class="form-control" required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Comuna</label>
                            <input type="text" name="comuna" class="form-control" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Región</label>
                            <input type="text" name="region" class="form-control" required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Email</label>
                            <input type="email" name="email" class="form-control" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Teléfono</label>
                            <input type="text" name="telefono" class="form-control" required>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Contraseña</label>
                        <input type="password" name="contrasena" class="form-control" required>
                    </div>

                    <button type="submit" class="btn btn-primary mt-3">Registrarse</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    document.getElementById('registerForm').onsubmit = async function (e) {
        e.preventDefault();
        const formData = new FormData(this);

        const urlParams = new URLSearchParams(formData);

        const response = await fetch('registerAction.jsp', {
            method: 'POST',
            body: urlParams,
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        });

        const result = await response.json();

        if (result.status === "success") {
            document.getElementById('successMessage').textContent = result.message;
            document.getElementById('successMessage').style.display = 'block';
            document.getElementById('errorMessage').style.display = 'none';

            setTimeout(() => {
                window.location.href = 'login.jsp';
            }, 2000);
        } else {
            document.getElementById('errorMessage').textContent = result.message;
            document.getElementById('errorMessage').style.display = 'block';
            document.getElementById('successMessage').style.display = 'none';
        }
    };
</script>

</body>
</html>
