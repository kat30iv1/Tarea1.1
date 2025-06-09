/* Ejercicio #4*/
class Libro {
  String titulo;
  String autor;
  int anioPublicacion;
  Libro(this.titulo, this.autor, this.anioPublicacion);
  //@override
  String toString(){
    return '"$titulo" por $autor ($anioPublicacion)';

  }
}
class Biblioteca {
  List<Libro> libros = [];
  void agregarLibro(Libro libro) {
    libros.add(libro);
    print('Libro agregado: ${libro.titulo}');
  }
  void eliminarLibro(String titulo) {
    libros.removeWhere((libro) => libro.titulo.toLowerCase() == titulo.toLowerCase());
    print('Libro eliminado (si existía): $titulo');
  }
  List<Libro> buscarPorAutor(String autor) {
    return libros.where((libro) => libro.autor.toLowerCase() == autor.toLowerCase()).toList();
  }
  List<Libro> listarPorAnio() {
    List<Libro> copia = List.from(libros);
    copia.sort((a, b) => a.anioPublicacion.compareTo(b.anioPublicacion));
    return copia;
  }
}
void main() {
  Biblioteca biblioteca = Biblioteca();
  biblioteca.agregarLibro(Libro("Cien años de soledad", "Gabriel García Márquez", 1967));
  biblioteca.agregarLibro(Libro("1984", "George Orwell", 1949));
  biblioteca.agregarLibro(Libro("El amor en los tiempos del cólera", "Gabriel García Márquez", 1985));
  biblioteca.agregarLibro(Libro("Fahrenheit 451", "Ray Bradbury", 1953));
  print("\nLibros de Gabriel García Márquez:");
  for (var libro in biblioteca.buscarPorAutor("Gabriel García Márquez")) {
    print(libro);
  }
  print("\nTodos los libros ordenados por año:");
  for (var libro in biblioteca.listarPorAnio()) {
    print(libro);
  }
  biblioteca.eliminarLibro("1984");
  print("\nLista actual de libros:");
  for (var libro in biblioteca.libros) {
    print(libro);
  }
}
