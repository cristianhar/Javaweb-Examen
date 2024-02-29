<%-- 
    Document   : puntocuatro
    Created on : 26/02/2024, 4:51:40 p. m.
    Author     : evo_l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Selección de Lenguaje de Programación</title>
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
            <h1>Selecciona un Lenguaje de Programación</h1>
            <label><input type="radio" name="lenguaje" value="java"> Java</label>
            <label><input type="radio" name="lenguaje" value="python"> Python</label>
            <label><input type="radio" name="lenguaje" value="javascript"> JavaScript</label>
            <br>
            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>

        <%-- Lógica de Java (solo se ejecuta después de enviar el formulario) --%>
        <%
            if ("POST".equals(request.getMethod())) { // Verifica si el formulario ha sido enviado
                String selectedLanguage = request.getParameter("lenguaje");
                // Se realiza un if para validar que el usuario ingrese un valor diferente a null y no este vacio
                if (selectedLanguage != null && !selectedLanguage.isEmpty()) {
                    out.println("Has seleccionado el lenguaje de programación: " + selectedLanguage);
                } else {
                    out.println("Por favor, selecciona un lenguaje de programación antes de enviar el formulario.");
                }
            }
        %>
    </div>
</body>
</html>
