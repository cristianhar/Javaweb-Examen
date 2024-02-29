<%-- 
    Document   : puntoseis
    Created on : 26/02/2024, 4:57:55 p. m.
    Author     : evo_l
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Formulario de Inscripción</title>
</head>
<body>
    <style>
        .contenedor {
            text-align: center;
            background: skyblue;
            align-items:center;
        }
    </style>

    <div class="contenedor">
        <form method="post">
            <h1>Inscripción al Curso de Análisis de Datos</h1>
            <label>Nombre Completo: <input type="text" name="nombreCompleto"></label><br>
            <label>Correo Electrónico: <input type="email" name="correoElectronico"></label><br>
            <label>Edad: <input type="number" name="edad"></label><br>
            <label>Género:
                <input type="radio" name="genero" value="masculino"> Masculino
                <input type="radio" name="genero" value="femenino"> Femenino
            </label><br>
            <label>Nivel de Experiencia:
                <select name="nivelExperiencia">
                    <option value="principiante">Principiante</option>
                    <option value="intermedio">Intermedio</option>
                    <option value="avanzado">Avanzado</option>
                </select>
            </label><br>
            <br>
            <button type="submit" class="btn btn-primary">Enviar</button>
            <button type="reset" class="btn btn-secondary">Restablecer</button>
        </form>

        <%-- Lógica de Java (solo se ejecuta después de enviar el formulario) --%>
        <%
            if ("POST".equals(request.getMethod())) { // Verifica si el formulario ha sido enviado
                String nombreCompleto = request.getParameter("nombreCompleto");
                String correoElectronico = request.getParameter("correoElectronico");
                int edad = Integer.parseInt(request.getParameter("edad"));
                String genero = request.getParameter("genero");
                String nivelExperiencia = request.getParameter("nivelExperiencia");

                out.println("Nombre Completo: " + nombreCompleto + "<br>");
                out.println("Correo Electrónico: " + correoElectronico + "<br>");
                out.println("Edad: " + edad + "<br>");
                out.println("Género: " + genero + "<br>");
                out.println("Nivel de Experiencia: " + nivelExperiencia + "<br>");
            }
        %>
    </div>
</body>
</html>
