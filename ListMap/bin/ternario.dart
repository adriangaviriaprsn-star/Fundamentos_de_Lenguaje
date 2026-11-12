void main () {
  //
  //
  //
  //
  //
  //
  //
  //
  //
String Adso = 'Analisis y Desarrollo de Software';
//Utlizar un operador ternario para validar si tiene mas de 15 caracteres convierta a mayusculas, de lo contrario que lo convierta a minusculas
String palabra = Adso.length > 15 ? Adso.toUpperCase() : Adso.toLowerCase();
print(palabra);

//validar que numero es mayor de los 2 ingresados 
int num1 = 125;
int num2 = 30;

if (num1 > num2) {
  print('El número 1 es mayor');
} else if (num1 == num2){
  print('Los números son iguales');
} else {  
  print('El número 2 es mayor');
}

}
//2. Realizar el ejercicio solicitado los datos num 1 y num 2 al usuario 
//3. realizarlo con operadores teenarios 