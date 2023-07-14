<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Iniciar sesión</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">

    <div class="row justify-content-center align-items-center vh-100">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h1 class="card-title text-center">Iniciar sesión</h1>
                    <form action="AutenticarUsuario" method="post">
                        <div class="mb-3">
                            <label for="username" class="form-label">Usuario:</label>
                            <input type="text" name="username" id="username" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Contraseña:</label>
                            <input type="password" name="password" id="password" class="form-control" required>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">Iniciar sesión</button>
                        </div>
                        <!-- Agrega un bloque para mostrar el mensaje de error -->
                        <% if (request.getAttribute("errorMensaje") != null) { %>
                        <div class="alert alert-danger mt-3">
                            <%= request.getAttribute("errorMensaje") %>
                        </div>
                        <% } %>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"
        integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS"
        crossorigin="anonymous"></script>
</body>

</html>
