<%-- 
    Document   : stays
    Created on : 01/11/2017, 19:52:19
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ESTADIAS - Parking WebApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Estadias</h2>
        <fieldset>
            <legend>Nova Entrada</legend>
            <form>
                Modelo: <input type="text" name="model"/>
                Cor: <input typ="text" name="color"/>
                Placa: <input type="text" name="plate"/>
                <input type="submit" name="enter" value="Registrar"/>
            </form>
        </fieldset>
        <hr/>
        
        <table border="1">
            <tr>
                <th>Modelo</th>
                <th>Cor</th>
                <th>Placa</th>
                <th>Entrada</th>
                <th>Controle</th>
            </tr>
            <tr>
                <th>Volks Fusca</th>
                <th>Azul Calcinha</th>
                <th>AAA-0001</th>
                <th>2017-10-31 14:00</th>
                <td>
                    <form>
                        <input type="hidden" name="id" value=""/>
                        <input type="submit" name="exit-parking" value="Registrar saida"/>
                    </form> 
                </td>
            </tr>
            
        </table>
        
        <%@include file="WEB-INF/jspf/header.jspf" %>
    </body>
</html>
