// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrinho_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CarrinhoStore on _CarrinhoStore, Store {
  Computed<int>? _$quantidadeItemsComputed;

  @override
  int get quantidadeItems =>
      (_$quantidadeItemsComputed ??= Computed<int>(() => super.quantidadeItems,
              name: '_CarrinhoStore.quantidadeItems'))
          .value;
  Computed<bool>? _$listaVaziaComputed;

  @override
  bool get listaVazia =>
      (_$listaVaziaComputed ??= Computed<bool>(() => super.listaVazia,
              name: '_CarrinhoStore.listaVazia'))
          .value;
  Computed<double>? _$totalDaCompraComputed;

  @override
  double get totalDaCompra =>
      (_$totalDaCompraComputed ??= Computed<double>(() => super.totalDaCompra,
              name: '_CarrinhoStore.totalDaCompra'))
          .value;

  late final _$listaItemAtom =
      Atom(name: '_CarrinhoStore.listaItem', context: context);

  @override
  List<Item> get listaItem {
    _$listaItemAtom.reportRead();
    return super.listaItem;
  }

  @override
  set listaItem(List<Item> value) {
    _$listaItemAtom.reportWrite(value, super.listaItem, () {
      super.listaItem = value;
    });
  }

  late final _$_CarrinhoStoreActionController =
      ActionController(name: '_CarrinhoStore', context: context);

  @override
  void adicionarAoCarrinho(Item item) {
    final _$actionInfo = _$_CarrinhoStoreActionController.startAction(
        name: '_CarrinhoStore.adicionarAoCarrinho');
    try {
      return super.adicionarAoCarrinho(item);
    } finally {
      _$_CarrinhoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removerDoCarrinho(Item item) {
    final _$actionInfo = _$_CarrinhoStoreActionController.startAction(
        name: '_CarrinhoStore.removerDoCarrinho');
    try {
      return super.removerDoCarrinho(item);
    } finally {
      _$_CarrinhoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaItem: ${listaItem},
quantidadeItems: ${quantidadeItems},
listaVazia: ${listaVazia},
totalDaCompra: ${totalDaCompra}
    ''';
  }
}
