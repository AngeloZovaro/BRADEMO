class Animal {
  int id;
  String nome;
  String cor;
  Animal(this.id, this.nome, this.cor);
}

class Cat extends Animal {
  String som;
  Cat(int id, String nome, String cor, this.som) : super(id, nome, cor);

  void exibirDetalhes() {
    print('ID: $id');
    print('Nome: $nome');
    print('Cor: $cor');
    print('Som: $som');
  }
}

void main() {
  Cat meuGato = Cat(1, 'MiauMiau', 'Branco', 'Miau');

  meuGato.exibirDetalhes();
}
