// $(document).ready(function () {
// 	$('select').material_select();
// 	$('.modal-trigger').leanModal({
//
// 		ready   : function () {
// 			calculadoraImcObject.calcularImc();
// 		},
// 		complete: function () {
// 			calculadoraImcObject.limparValores();
// 		}
//
// 	});
// });
//
// function CalculadoraImc() {
// 	this.peso = 0;
// 	this.altura = 0;
// 	this.sexo = '';
// }
//
// CalculadoraImc.prototype.calcularImc = function () {
// 	this.peso = $('#peso_id').val();
// 	this.altura = $('#altura_id').val();
// 	this.sexo = $('#sexo_id').val();
//
// 	if (this.validaParametrosCalculoIMC()) {
// 		$('#resultadoIMC').html("Parâmetros fornecidos inválidos");
// 		return;
// 	}
//
// 	var IMC = this.peso / (this.altura * this.altura);
//
// 	$('#resultadoIMC').html("O resultado do IMC é: " + IMC.toFixed(2));
//
// };
//
// CalculadoraImc.prototype.limparValores = function () {
// 	$('#peso_id').html('');
// 	$('#altura_id').html('');
// 	$('#sexo_id').html('');
//
// };
//
// CalculadoraImc.prototype.validaParametrosCalculoIMC = function () {
// 	return this.peso == '' || this.altura == '' || this.sexo == '';
// };
//
// var calculadoraImcObject = new CalculadoraImc();