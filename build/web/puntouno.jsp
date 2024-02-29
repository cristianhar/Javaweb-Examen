<%-- 
    Document   : puntouno
    Created on : 26/02/2024, 4:43:56 p. m.
    Author     : evo_l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                <h1>Promedio de Notas</h1>
                <label>Ingrese nota1: <input name="nota1" type="text"></label><br>
                <label>Ingrese nota2: <input name="nota2" type="text"></label><br>
                <label>Ingrese nota3: <input name="nota3" type="text"></label><br>
                <button type="submit" class="btn btn-primary">Calcular Promedio</button>
            </form>

            <%-- Lógica de Java (solo se ejecuta después de enviar el formulario) --%>
            <%
                if ("POST".equals(request.getMethod())) { // Verifica si el formulario ha sido enviado
                    // Definimos las variables a utilizar
                    int nota1 = 0;
                    int nota2 = 0;
                    int nota3 = 0;
                    double promedio;
                    // se crea unas variables para recibir en string ya que el texto envia string
                    String nota1Str = request.getParameter("nota1");
                    String nota2Str = request.getParameter("nota2");
                    String nota3Str = request.getParameter("nota3");

                    // Se realiza un if para verificar que el usuario ingrese un valor y se convierte a entero
                    if (nota1Str != null && !nota1Str.isEmpty()) {
                        nota1 = Integer.parseInt(nota1Str);
                    }

                    // Se realiza un if para verificar que el usuario ingrese un valor y se convierte a entero
                    if (nota2Str != null && !nota2Str.isEmpty()) {
                        nota2 = Integer.parseInt(nota2Str);
                    }

                    // Se realiza un if para verificar que el usuario ingrese un valor y se convierte a entero
                    if (nota3Str != null && !nota3Str.isEmpty()) {
                        nota3 = Integer.parseInt(nota3Str);
                    }

                    promedio = (nota1 + nota2 + nota3) / 3.0; // Se realiza la operación

                    out.println("El promedio de las notas es: " + promedio); // Se muestra el resultado
                }
            %>
        </div>
    </body>
</html>
