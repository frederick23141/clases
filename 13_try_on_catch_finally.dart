//Future<void> main async
void main() async {
  print('Inicio del programa');

  //ccontrolamos los posibles errores ccon try catch
  try {
    final value = await httpGet('http://sitioweb.dominio');
    print('Exito: $value');
    //on escucha que tipo de error se presento.
  } on Exception catch (err) {
    print('Tenemos una excepcion : $err');
  } catch (err) {
    print('Tenemos un error: $err');
  } finally {
    //finally se usa para que pase lo que pase. se haga lo del  bloque del finally
    print('Fin del try catch');
  }

  print('Fin del programa');
}

// cuando el metodo es async siempre retorna un Future...
Future<String> httpGet(String url) async {
  //cuando se usa async se debe usar await
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay parametros');

  //error personalizado
  //return 'Tenemos un valor de la peticion http';
}
