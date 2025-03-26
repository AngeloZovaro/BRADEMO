
class Camera {
  int _id;
  String _marca;
  String _cor;
  int _preco;

  Camera(this._id, this._marca, this._cor, this._preco);

  int get id => _id;
  String get marca => _marca;
  String get cor => _cor;
  int get preco => _preco;

  set id(int novoId) => _id = novoId;
  set marca(String novaMarca) => _marca = novaMarca;
  set cor(String novaCor) => _cor = novaCor;
  set preco(int novoPreco) => _preco = novoPreco;

  void exibirDetalhes() {
    print('ID: $_id');
    print('Marca: $_marca');
    print('Cor: $_cor');
    print('Preço: $_preco');
  }
}

void main() {
  Camera camera1 = Camera(1, 'Canon', 'Preta', 100);
  Camera camera2 = Camera(2, 'Nikon', 'Prata', 200);
  Camera camera3 = Camera(3, 'Sony', 'Vermelha', 300);

  camera1.exibirDetalhes();
  camera2.exibirDetalhes();
  camera3.exibirDetalhes();
}
