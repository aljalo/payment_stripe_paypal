import 'package:flutter/material.dart';
import '../utlis/styles.dart';

AppBar buildAppBar({final String? title}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    //leading: const Icon(Icons.arrow_back, color: Colors.black, size: 32),
    centerTitle: true,

    title: Text(
      title ?? '',
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}
