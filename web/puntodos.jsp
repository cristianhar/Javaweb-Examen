<%-- 
    Document   : newjsp
    Created on : 26/02/2024, 4:35:11 p. m.
    Author     : DESKTOP
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
                <h1>Salario</h1>
                <label>Ingrese las horas extra: <input name="horasExtra" type="text"></label><br><br>
                <label>Ingrese Salario: <input name="salario" type="text"></label>
                <br>
                <button type="submit" class="btn btn-primary">Calcular</button>
            </form>
            
            <%-- Lógica de Java (solo se ejecuta después de enviar el formulario) --%>
            <%
                if ("POST".equals(request.getMethod())) { // Verifica si el formulario ha sido enviado
                    // Definimos las variables a utilizar
                    int horasExtra = 0;
                    int salario = 0;
                    int valorhora = 7065;
                    int SalarioTotal;
                    
                    //Se crean variables tipo string para recibir el valor enviado por el usuario
                    String horasExtraStr = request.getParameter("horasExtra");
                    String salarioStr = request.getParameter("salario");

                    // Se realiza un if para validar que el usuario ingrese un valor diferente a null y no sea vacio  y se convierte a entero
                    if (horasExtraStr != null && !horasExtraStr.isEmpty()) {
                        horasExtra = Integer.parseInt(horasExtraStr);
                    }

                    // Se realiza un if para validar que el usuario ingrese un valor diferente a null y no sea vacio  y se convierte a entero
                    if (salarioStr != null && !salarioStr.isEmpty()) {
                        salario = Integer.parseInt(salarioStr);
                    } else {
                        out.print("El salario ingresado es nulo o está vacío. Por favor, ingrese un valor válido");
                    }

                    SalarioTotal = salario + (valorhora * horasExtra); // Se realiza la operación

                    out.println("El salario total es: " + SalarioTotal); // Se muestra el resultado
                }
            %>
        </div>
    </body>
</html>
