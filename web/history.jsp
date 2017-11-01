<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HISTORICO - Parking WebApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        
        <h2>Historico</h2>
        <fieldset>
            <legend>Filtro</legend>
            <form>
                Placa: <input type="text" name="plate"/>
                Data: <input type="date" name="date"/>
                <input type="submit" name="filter" value="Filtrar"/>
                <input type="submit" name="clear" value="Limpar filtro"/>
            </form>
        </fieldset>
        <hr/>
        <table border="1">
            <tr>
                <th>Modelo</th>
                <th>Cor</th>
                <th>Placa</th>
                <th>Entrada</th>
                <th>Saida</th>
                <th>Preço</th>
            </tr>
            <tr>
                <td>Volks Fusca</td>
                <td>Azul Calcinha</td>
                <td>AAA-0001</td>
                <td>2017-10-31 14:00</td>
                <td>2017-10-31 15:00</td>
                <td>R$ 5,00</td>
            </tr>
        </table>
    </body>
</html>
