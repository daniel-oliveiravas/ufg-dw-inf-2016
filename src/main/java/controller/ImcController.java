package controller;

import model.Pessoa;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/imc")
public class ImcController extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Double peso = toDouble(req, "peso", "0");
        Double altura = toDouble(req, "altura", "0");
        String sexo = valor(req, "sexo", "");

        Pessoa pessoa = new Pessoa(peso, altura, sexo);
        Double resultadoIMC = pessoa.calculaIMC();

        req.setAttribute("resultado", resultadoIMC);
        System.out.println(resultadoIMC);

        req.getRequestDispatcher("imcResultado.jsp").forward(req, resp);
    }

    private String valor(HttpServletRequest req, String param, String padrao) {

        String result = req.getParameter(param);
        if (result == null) {
            result = padrao;
        }
        return result;
    }

    private Double toDouble(HttpServletRequest req, String param, String padrao) {
        return Double.parseDouble(valor(req, param, padrao));
    }
}