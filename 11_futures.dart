void main() {
  print('Inicio del programa');
  httpGet('http://sitioweb.dominio')
      .then((value) {
        print(value);
      })
      .catchError((err) {
        print('Error: $err');
      });
  print('Fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    //Future pede fallar, se debe controlar la excepcion
    throw 'Error en la peticion http';
    //return 'Respuesta de la peticion http';
  });
}
