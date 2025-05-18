//Future<void> main async
void main() async {
  print('Inicio del programa');

  //ccontrolamos los posibles errores ccon try catch
  try {
    final value = await httpGet('http://sitioweb.dominio');
    print(value);
  } catch (err) {
    print('Tenemos un error: $err');
  }

  print('Fin del programa');
}

// cuando el metodo es async siempre retorna un Future...
Future<String> httpGet(String url) async {
  //cuando se usa async se debe usar await
  await Future.delayed(const Duration(seconds: 1));
  //error personalizado
  return 'Tenemos un valor de la peticion http';
}
