import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void removeAllAndPush(BuildContext context, String newRoute) {
  if (context.canPop()) {
    context.pop();
  }
  context.pushReplacement(newRoute);
}

void removeAll(BuildContext context) {
  if (context.canPop()) {
    context.pop();
  }
}
