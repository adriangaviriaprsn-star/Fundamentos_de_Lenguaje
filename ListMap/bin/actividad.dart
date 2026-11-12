// ACTIVIDAD DE CONOCIMIENTO: Fundamentos del lenguaje Dart

// 1. Hola Mundo
void punto1() {
  print('Hola Mundo');
}

// 2. Variables
void punto2() {
  String nombre = 'Adrián';
  int edad = 19;
  print('Nombre: $nombre');
  print('Edad: $edad');
}

// 3. var y final
// var: se puede cambiar después. final: se asigna una sola vez.
void punto3() {
  var ciudad = 'Popayán';
  print(ciudad);
  ciudad = 'Cali';
  print(ciudad);

  final pais = 'Colombia';
  print(pais);
}

// 4. Números y Strings
void punto4() {
  double altura = 1.78;
  String citaFavorita = 'La disciplina es el puente entre metas y logros.';
  print('Altura: $altura m');
  print('Cita favorita: "$citaFavorita"');
}

// 5. Booleanos y Condicionales
void punto5() {
  bool esMayorDeEdad = true;
  if (esMayorDeEdad) {
    print('Eres mayor de edad. Puedes sacar la cédula.');
  } else {
    print('Eres menor de edad.');
  }
}

// 6. Listas
void punto6() {
  List<String> amigos = ['Andres', 'Adrián', 'Mariana'];
  for (int i = 0; i < amigos.length; i++) {
    print(amigos[i]);
  }
}

// 7. Sets (no permiten elementos repetidos)
void punto7() {
  Set<String> ciudades = {'Popayán', 'Cali', 'Bogotá'};
  print('Inicial: $ciudades');

  ciudades.add('Medellín');
  print('Después de agregar Medellín: $ciudades');

  ciudades.add('Cali');
  print('Después de agregar Cali otra vez: $ciudades');

  ciudades.remove('Bogotá');
  print('Después de eliminar Bogotá: $ciudades');
}

// 8. Mapas
void punto8() {
  Map<String, String> capitales = {
    'Colombia': 'Bogotá',
    'Perú': 'Lima',
    'Argentina': 'Buenos Aires',
    'México': 'Ciudad de México',
  };
  print('La capital de Colombia es ${capitales['Colombia']}');
}

// 9. Operadores Aritméticos
void punto9() {
  int a = 15;
  int b = 6;
  int suma = a + b;
  int resta = a - b;
  int multiplicacion = a * b;
  double division = a / b;
  print('Suma: $suma');
  print('Resta: $resta');
  print('Multiplicación: $multiplicacion');
  print('División: $division');
}

// 10. Operadores de Comparación
void punto10() {
  int x = 12;
  int y = 9;
  bool iguales = x == y;
  bool xMayor = x > y;
  bool diferentes = x != y;
  print('¿x es igual a y? $iguales');
  print('¿x es mayor que y? $xMayor');
  print('¿x es diferente de y? $diferentes');
}

// 11. Funciones
int sumar(int a, int b) {
  return a + b;
}

void punto11() {
  int resultado = sumar(9, 12);
  print('El resultado de la suma es: $resultado');
}

// 12. Records (requiere Dart 3.0 o superior)
void punto12() {
  ({String titulo, String autor, int anio}) libro = (
    titulo: 'Cien años de soledad',
    autor: 'Gabriel García Márquez',
    anio: 1967,
  );
  print('Título: ${libro.titulo}');
  print('Autor: ${libro.autor}');
  print('Año de publicación: ${libro.anio}');
}

// 13. Análisis de una palabra
void punto13() {
  String palabra = 'programacion';
  print('Longitud: ${palabra.length}');
  print('Primer carácter: ${palabra[0]}');
  print('Últimos 3 caracteres: ${palabra.substring(palabra.length - 3)}');
  String resultado = palabra.length > 5 ? palabra.toUpperCase() : palabra;
  print('Resultado: $resultado');
}

// 14. Lista de notas
void punto14() {
  List<double> notas = [3.5, 4.0, 2.8, 4.5, 3.2];
  print('Notas: $notas');

  double suma = 0;
  for (double nota in notas) {
    suma += nota;
  }
  double promedio = suma / notas.length;
  print('Promedio: ${promedio.toStringAsFixed(2)}');

  if (promedio >= 3.0) {
    print('El aprendiz APRUEBA.');
  } else {
    print('El aprendiz NO aprueba.');
  }
}

// 15. Lista dinámica de información mixta
void punto15() {
  List<dynamic> datos = [
    'Adrián',
    19,
    true,
    [10, 20, 30],
  ];
  for (var elemento in datos) {
    print(elemento);
  }
}

// 16. Información personal con Map
void punto16() {
  Map<String, dynamic> persona = {
    'identificacion': '1061000000',
    'nombre': 'Adrián',
    'edad': 19,
    'estatura': 1.78,
  };
  print('Edad: ${persona['edad']}');
  print('Estatura: ${persona['estatura']} m');
}

// 17. Función que retorna un Map
Map<String, num> analizarLista(List<num> numeros) {
  num mayor = numeros[0];
  num menor = numeros[0];
  for (num n in numeros) {
    if (n > mayor) mayor = n;
    if (n < menor) menor = n;
  }
  return {
    'cantidad': numeros.length,
    'mayor': mayor,
    'menor': menor,
  };
}

void punto17() {
  List<num> lista = [14, 3, 27, 9, 51, 8];
  Map<String, num> resultado = analizarLista(lista);
  print(resultado);
  print('Cantidad: ${resultado['cantidad']}');
  print('Mayor: ${resultado['mayor']}');
  print('Menor: ${resultado['menor']}');
}

// 18. Clase CuentaBancaria
class CuentaBancaria {
  double _saldo;
  CuentaBancaria(this._saldo);
  void depositar(double monto) {
    if (monto <= 0) {
      print('Error: el monto a depositar debe ser positivo.');
      return;
    }
    _saldo += monto;
    print('Depósito de \$$monto realizado.');
  }

  void retirar(double monto) {
    if (monto <= 0) {
      print('Error: no se pueden retirar montos negativos o en cero.');
      return;
    }
    if (monto > _saldo) {
      print('Error: saldo insuficiente.');
      return;
    }
    _saldo -= monto;
    print('Retiro de \$$monto realizado.');
  }
  double consultarSaldo() {
    return _saldo;
  }
}

void punto18() {
  CuentaBancaria cuenta = CuentaBancaria(100000);
  print('Saldo inicial: \$${cuenta.consultarSaldo()}');
  cuenta.depositar(50000);
  cuenta.depositar(25000);
  cuenta.retirar(30000);
  cuenta.retirar(-500);
  print('Saldo final: \$${cuenta.consultarSaldo()}');
}


// PARTE 6: Ejemplos de investigación

// 20. Operadores avanzados:
void punto20() {
  String? apodo;
  print(apodo ?? 'Sin apodo');
  apodo ??= 'Adrián';
  print(apodo);

  List<int> numeros = []
    ..add(1)
    ..add(2)
    ..add(3); // cascada ..
  print(numeros);

  print(17 / 5); // 3.4
  print(17 ~/ 5); // 3 (división entera)
}

// 21. Extensiones
extension StringUtil on String {
  String capitalizar() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  bool get esCorreo => contains('@') && contains('.');
}

void punto21() {
  print('popayán'.capitalizar()); // Popayán
  print('adrián@correo.com'.esCorreo); // true
}

// 22. Null Safety
void punto22() {
  String nombre = 'Adrián'; // no puede ser null
  String? apodo; // puede ser null

  print(nombre.length);
  print(apodo?.length); // null, sin error
  print(apodo ?? 'Sin apodo');
}

// 23. Futuros y Asincronía
Future<String> obtenerUsuario() async {
  print('Buscando usuario...');
  await Future.delayed(Duration(seconds: 2)); // simula una consulta lenta
  return 'Adrián';
}

Future<void> punto23() async {
  String usuario = await obtenerUsuario();
  print('Usuario encontrado: $usuario');
}

// ---------- main ----------
void titulo(String texto) {
  print('\n===== $texto =====');
}


Future<void> main() async {
  titulo('Punto 1');
  punto1();
  titulo('Punto 2');
  punto2();
  titulo('Punto 3');
  punto3();
  titulo('Punto 4');
  punto4();
  titulo('Punto 5');
  punto5();
  titulo('Punto 6');
  punto6();
  titulo('Punto 7');
  punto7();
  titulo('Punto 8');
  punto8();
  titulo('Punto 9');
  punto9();
  titulo('Punto 10');
  punto10();
  titulo('Punto 11');
  punto11();
  titulo('Punto 12');
  punto12();
  titulo('Punto 13');
  punto13();
  titulo('Punto 14');
  punto14();
  titulo('Punto 15');
  punto15();
  titulo('Punto 16');
  punto16();
  titulo('Punto 17');
  punto17();
  titulo('Punto 18');
  punto18();
  titulo('Punto 20');
  punto20();
  titulo('Punto 21');
  punto21();
  titulo('Punto 22');
  punto22();
  titulo('Punto 23');
  await punto23();
}