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
        <%@include file="WEB-INF/jspd/header.jspf" %>
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
        <%@include file="WEB-INF/jspd/header.jspf" %>
    </body>
</html>
