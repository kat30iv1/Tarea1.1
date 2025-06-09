/* Ejercicio #1 */
void main(List<String> args){
int a = 0, b = 1, c, n = 15;
  List<int> fibonacci = [a, b];

  for (var i = 2; i < n; i++) {
    c = a + b;
    fibonacci.add(c);
    a = b;
    b = c;
  }

  print("Sucesión de Fibonacci:");
  for (int num in fibonacci) {
    print(num);
  }
}