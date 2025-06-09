/* Ejercicio #2*/
void main(){
  List<int> lista = [1,2,5,7,6,4,6,7,3,3,4,8,9,6,7,5,4,2,5,6,7,6,2,5];
  List<int> listanueva = lista.toSet().toList();
  print("Lista Actual:");
  print(lista);
  print("Lista Nueva:");
  print(listanueva);
}