function encriptar() {
  var numero = parseInt(document.getElementById("numero").value);
  var numeroEncriptado = encriptarNumero(numero);
  document.getElementById("resultado").innerHTML = "Número encriptado: " + numeroEncriptado;
}

function desencriptar() {
  var numeroEncriptado = parseInt(document.getElementById("numeroEncriptado").value);
  var numeroDesencriptado = desencriptarNumero(numeroEncriptado);
  document.getElementById("resultado").innerHTML = "Número desencriptado: " + numeroDesencriptado;
}

function encriptarNumero(numero) {
  var digito1 = Math.floor(numero / 1000);
  var digito2 = Math.floor((numero / 100) % 10);
  var digito3 = Math.floor((numero / 10) % 10);
  var digito4 = numero % 10;

  digito1 = (digito1 + 7) % 10;
  digito2 = (digito2 + 7) % 10;
  digito3 = (digito3 + 7) % 10;
  digito4 = (digito4 + 7) % 10;

  var numeroEncriptado = digito3 * 1000 + digito4 * 100 + digito1 * 10 + digito2;
  return numeroEncriptado;
}

function desencriptarNumero(numeroEncriptado) {
  var digito1 = Math.floor(numeroEncriptado / 1000);
  var digito2 = Math.floor((numeroEncriptado / 100) % 10);
  var digito3 = Math.floor((numeroEncriptado / 10) % 10);
  var digito4 = numeroEncriptado % 10;

  digito1 = (digito1 + 3) % 10;
  digito2 = (digito2 + 3) % 10;
  digito3 = (digito3 + 3) % 10;
  digito4 = (digito4 + 3) % 10;

  var numeroDesencriptado = digito3 * 1000 + digito4 * 100 + digito1 * 10 + digito2;
  return numeroDesencriptado;
}
document.getElementById("resultadoTexto").innerHTML = "";