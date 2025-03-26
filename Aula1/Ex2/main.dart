class House {
  int id;
  String nome;
  int preco;

  House(this.id, this.nome, this.preco);

  void exibirDetalhes() {
    print('ID: $id');
    print('Nome: $nome');
    print('Preco: ${preco}');
  }
}

void main() {
  House casa1 = House(1, 'Casa Atibaiacity', 300000);
  House casa2 = House(2, 'Casa Bragcity', 200000);
  House casa3 = House(3, 'Casa Spcity', 800000);
  casa1.exibirDetalhes();
  casa2.exibirDetalhes();
  casa3.exibirDetalhes();
}
