void main() {
  //1. funciones no retornan y no reciben valores
void saludar () {
  print ('Saludos a todos los aprendices de ADSO');
}

saludar();
  //2. Funciones que restornan y no reciben valores 
String saludar2 () {
  return 'Hola aprendices de ADSO 34...';
}

saludar2();
print(saludar2());
  //3. Funciones que retornan y reciben valores
String saludar3 (String nombre) {
  return 'Hola aprendiz de ADSO: $nombre!';
  }

print(saludar3('Adrián'));
  //4. Funciones que no retornan y reciben valores 
  void saludar4 (String nombre) {
  print('Bienvenido !!.. $nombre!');
}

saludar4('Adrián Gaviria');

List saludar5 () {
  return ['Hola amigos', 'Adrián', 'Gaviria', 19, true];
}
List resultado = saludar5();
print(resultado);
}

