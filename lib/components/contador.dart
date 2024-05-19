import 'dart:developer';

import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int valorContador = 0;

  changeValue(int value) {
    log(value.toString());
    setState(() {
      if (value >= 0) {
        valorContador = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () => changeValue(valorContador - 1),
          child: const Icon(
            Icons.remove_circle_outline,
            size: 20,
          ),
        ),
        Text(valorContador.toString()),
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () => changeValue(valorContador + 1),
          child: const Icon(
            Icons.add_circle_outline,
            size: 20,
          ),
        ),
      ],
    );
  }
}
