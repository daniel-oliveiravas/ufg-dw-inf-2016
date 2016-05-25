<%@ page import="java.util.DoubleSummaryStatistics" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">
    <link rel="stylesheet" href="css/imc.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
</head>
<body>

<nav>
    <div class="nav-wrapper green lighten-1 row">
        <a href="#" class="col s1 offset-s1 brand-logo">IMC</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="#">Calcular IMC</a></li>
        </ul>
    </div>
</nav>

<div class="row form-div">
    <form class="col s12 offset-s3">
        <div class="row">
            <div class="input-field col s6">
                <input id="peso_id" name="peso" type="number" step="any" class="validate">
                <label class="active" for="peso_id">Peso</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col s6">
                <input id="altura_id" name="altura" type="number" step="any" class="validate">
                <label class="active" for="altura_id">Altura</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <select id="sexo_id" name="sexo">
                    <option selected>Selecione um sexo</option>
                    <option value="1">Masculino</option>
                    <option value="2">Feminino</option>
                </select>
            </div>
        </div>
        <div class="row">
            <button type="submit" class="waves-effect waves-light btn">Calcular IMC</button>

        </div>
    </form>
</div>
<script>
    $('select').material_select();
</script>
<%
    String pesoString = request.getParameter("peso");
    String alturaString = request.getParameter("altura");
    String sexoString = request.getParameter("sexo");


    Double peso = Double.parseDouble(pesoString == null ? "0" : pesoString );
    Double altura = Double.parseDouble(alturaString == null ? "0" : alturaString);

    double resultado = 0;

    if (peso == null || altura == null || sexoString == null) {
        out.print("Resultado: " + resultado);
        return;
    } else {
        resultado = peso / (altura * altura);
        out.print("<div class=>Resultado: " + (Math.round(resultado*100))/100.0 + "</div>");
    }

%>
</body>
</html>