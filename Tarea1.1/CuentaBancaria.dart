/* Ejercicio #5*/
class CuentaBancaria {
  String titular;
  double saldo;

  CuentaBancaria(this.titular, [this.saldo = 0]);

  void depositar(double monto) {
    if (monto <= 0) {
      print("El monto a depositar debe ser mayor que cero.");
      return;
    }
    saldo += monto;
    print("Depósito exitoso. Nuevo saldo: \$${saldo.toStringAsFixed(2)}");
  }
  void retirar(double monto) {
    if (monto <= 0) {
      print("El monto a retirar debe ser mayor que cero.");
    } else if (monto > saldo) {
      print("Fondos insuficientes. Saldo actual: \$${saldo.toStringAsFixed(2)}");
    } else {
      saldo -= monto;
      print("Retiro exitoso. Nuevo saldo: \$${saldo.toStringAsFixed(2)}");
    }
  }
  void consultarSaldo() {
    print("Saldo de $titular: \$${saldo.toStringAsFixed(2)}");
  }
}
void main() {
  CuentaBancaria cuenta = CuentaBancaria("Antonia Pineda", 500);

  cuenta.consultarSaldo();
  cuenta.depositar(250);
  cuenta.retirar(100);
  cuenta.retirar(1000);
  cuenta.consultarSaldo();
}