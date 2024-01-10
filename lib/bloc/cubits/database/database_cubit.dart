import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/repository/isar_service.dart';

class DatabaseCubit extends Cubit<IsarService?> {
  Directory directory;
  DatabaseCubit(this.directory) : super(IsarService(directory)) {
    emit(IsarService(directory));
  }

  static IsarService dbFrom(BuildContext context) {
    final cubit = context.read<DatabaseCubit>();
    return cubit.state!;
  }
}
