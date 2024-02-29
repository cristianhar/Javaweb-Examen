<%-- 
    Document   : puntotres
    Created on : 26/02/2024, 4:48:07 p. m.
    Author     : evo_l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Selección de Color</title>
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
            <h1>Selecciona un Color</h1>
            <label><input type="radio" name="color" value="azul"> Azul</label>
            <label><input type="radio" name="color" value="amarillo"> Amarillo</label>
            <label><input type="radio" name="color" value="rojo"> Rojo</label>
            <br>
            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>

        <%-- Lógica de Java (solo se ejecuta después de enviar el formulario) --%>
        <%
            if ("POST".equals(request.getMethod())) { // Verifica si el formulario ha sido enviado
                String selectedColor = request.getParameter("color");
                
                
                // Verifica que el selector sea diferente a null y no este vacio
                if (selectedColor != null && !selectedColor.isEmpty()) {
                    out.println("Has seleccionado el color: " + selectedColor);
                } else {
                    out.println("Por favor, selecciona un color antes de enviar el formulario.");
                }
            }
        %>
    </div>
</body>
</html>
