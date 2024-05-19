import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../models/item.dart';
import '../store/carrinho_store.dart';
import '../store/item_store.dart';

class Contador extends StatelessWidget {
  Contador({super.key, required this.item});
  final ItemStore itemStore = ItemStore();
  final Item item;

  @override
  Widget build(BuildContext context) {
    final carrinhoStore = Provider.of<CarrinhoStore>(context, listen: false);
    return Observer(
      builder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () => {
              if (itemStore.valorContador > 0)
                {itemStore.removerItem(), carrinhoStore.removerDoCarrinho(item)}
            },
            child: const Icon(
              Icons.remove_circle_outline,
              size: 20,
            ),
          ),
          Text(itemStore.valorContador.toString()),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () => {
              {
                itemStore.adicionaItem(),
                carrinhoStore.adicionarAoCarrinho(item)
              }
            },
            child: const Icon(
              Icons.add_circle_outline,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
