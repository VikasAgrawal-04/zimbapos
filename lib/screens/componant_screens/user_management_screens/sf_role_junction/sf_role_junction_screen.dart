import 'package:flutter/material.dart';
import 'package:zimbapos/widgets/scaffold/custom_appbar.dart';

class SfRoleJnListing extends StatelessWidget {
  const SfRoleJnListing({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: appBar(theme),
    );
  }
}
