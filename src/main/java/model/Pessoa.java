package model;

public class Pessoa {

    private Double peso;
    private Double altura;
    private String sexo;

    public Pessoa(Double peso, Double altura, String sexo) {
        this.peso = peso;
        this.altura = altura;
        this.sexo = sexo;
    }

    public Double calculaIMC() {
        return this.peso / (this.altura * this.altura);
    }

}
