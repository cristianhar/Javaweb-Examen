<%-- 
    Document   : puntocinco
    Created on : 26/02/2024, 4:51:52 p. m.
    Author     : evo_l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Formulario de Solicitud</title>
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
            <h1>Formulario de Solicitud</h1>
            <label>Código de Empleado: <input type="text" name="codigoEmpleado"></label><br>
            <label>Sexo:
                <input type="radio" name="sexo" value="masculino"> Masculino
                <input type="radio" name="sexo" value="femenino"> Femenino
            </label><br>
            <label>Servicio Solicitado:
                <input type="radio" name="servicio" value="software"> Software
                <input type="radio" name="servicio" value="hardware"> Hardware
            </label><br>
            <label>Departamento:
                <select name="departamento">
                    <option value="ventas">Ventas</option>
                    <option value="compras">Compras</option>
                    <option value="recursosHumanos">Recursos Humanos</option>
                </select>
            </label><br>
            <label>Descripción: <textarea name="descripcion" rows="4" cols="50"></textarea></label><br>
            <br>
            <button type="submit" class="btn btn-primary">Enviar</button>
            <button type="reset" class="btn btn-secondary">Restablecer</button>
        </form>

        <%-- Lógica de Java (solo se ejecuta después de enviar el formulario) --%>
        <%
            if ("POST".equals(request.getMethod())) { // Verifica si el formulario ha sido enviado
                String codigoEmpleado = request.getParameter("codigoEmpleado");
                String sexo = request.getParameter("sexo");
                String servicio = request.getParameter("servicio");
                String departamento = request.getParameter("departamento");
                String descripcion = request.getParameter("descripcion");

                out.println("Código de Empleado: " + codigoEmpleado + "<br>");
                out.println("Sexo: " + sexo + "<br>");
                out.println("Servicio Solicitado: " + servicio + "<br>");
                out.println("Departamento: " + departamento + "<br>");
                out.println("Descripción: " + descripcion + "<br>");
            }
        %>
    </div>
</body>
</html>
