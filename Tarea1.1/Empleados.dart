/* Ejercicio #3*/
class Empleado{
  String nombre;
  String puesto;
  double salario;
  Empleado(this.nombre, this.puesto, this.salario);
}
double calculototal(List<Empleado> empleados){
  double total = 0;
  for (var emp in empleados){
    total += emp.salario;
  }
  return total;
}
double calculopromedio(List<Empleado>empleados){
  if(empleados.isEmpty) return 0;
  return calculototal(empleados)/empleados.length;
}
void main(){
  List<Empleado> empleados=[ Empleado("Ana", "Gerente", 2500.0), Empleado("Luis", "Analista", 1800.0), Empleado("Marta", "Desarollador", 2200.0), Empleado("Carlos", "Soporte", 1600.0),];
  print("Salario total: \$${calculototal(empleados)}");
  print("Salario total: \$${calculopromedio(empleados)}");
}
