class Laptop {
  int id;
  String nome;
  int ram;

  Laptop(this.id, this.nome, this.ram);

  void exibirDetalhes() {
    print('ID: $id');
    print('Nome: $nome');
    print('RAM: ${ram}GB');
  }
}

void main() {
  Laptop notebook1 = Laptop(1, 'Samsung', 16);
  Laptop notebook2 = Laptop(2, 'Dell', 32);
  Laptop notebook3 = Laptop(3, 'Acer', 8);
  notebook1.exibirDetalhes();
  notebook2.exibirDetalhes();
  notebook3.exibirDetalhes();
}
