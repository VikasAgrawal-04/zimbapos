import 'package:flutter/material.dart';

import '../../../widgets/indicators/loading_indicator.dart';

enum Status { initial, success, error, loading, empty }

extension StatusExtension on Status {
  bool get isInitial => this == Status.initial;
  bool get isSuccess => this == Status.success;
  bool get isError => this == Status.error;
  bool get isLoading => this == Status.loading;
  bool get isEmpty => this == Status.empty;
}

typedef StatusWidgetBuilder = Widget Function(BuildContext context);

class StatusHandler extends StatelessWidget {
  final Status status;
  final Widget onSuccess;
  final StatusWidgetBuilder? errorBuilder;
  final StatusWidgetBuilder? emptyBuilder;
  final StatusWidgetBuilder? loadingBuilder;

  final String? errorMessage;
  final String? emptyMessage;
  const StatusHandler(
      {super.key,
      required this.status,
      required this.onSuccess,
      this.errorBuilder,
      this.emptyBuilder,
      this.loadingBuilder,
      this.errorMessage,
      this.emptyMessage});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: _handleState(context),
    );
  }

  Widget _handleState(BuildContext context) {
    late Widget child;
    switch (status) {
      case Status.initial:
      case Status.loading:
        child = loadingBuilder?.call(context) ?? const MyLoadingIndicator();
        break;
      case Status.empty:
        child = emptyBuilder?.call(context) ??
            const Center(
              child: Text('No data found'),
            );
        break;
      case Status.success:
        child = onSuccess;
        break;
      case Status.error:
        child = errorBuilder?.call(context) ??
            const Center(child: Text('Something went wrong!'));
        break;
    }
    return child;
  }
}
