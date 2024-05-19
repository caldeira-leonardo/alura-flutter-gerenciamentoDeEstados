import 'dart:developer';

import 'package:mobx/mobx.dart';

import '../models/item.dart';

part 'carrinho_store.g.dart';

class CarrinhoStore = _CarrinhoStore with _$CarrinhoStore;

abstract class _CarrinhoStore with Store {
  @observable
  List<Item> listaItem = ObservableList<Item>();

  @computed
  int get quantidadeItems => listaItem.length;

  @computed
  bool get listaVazia => listaItem.isEmpty;

  @computed
  double get totalDaCompra =>
      listaItem.map((item) => item.preco).reduce((a, b) => a + b);

  @action
  void adicionarAoCarrinho(Item item) {
    listaItem.add(item);
  }

  @action
  void removerDoCarrinho(Item item) {
    listaItem.remove(item);
  }
}
