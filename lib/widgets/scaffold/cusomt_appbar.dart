import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

AppBar appBar(BuildContext context,
    {required String title, List<Widget>? actions}) {
  return AppBar(
    leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: const Icon(CupertinoIcons.back)),
    title: Text(title),
    elevation: 1,
    centerTitle: true,
    automaticallyImplyLeading: true,
    actions: actions,
  );
}
