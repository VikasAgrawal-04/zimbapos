import 'dart:convert';
import 'dart:io';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/repository/isar_service.dart';
export 'database_cubit.dart';

class DatabaseCubit extends Cubit<IsarService?> {
  Directory directory;
  final String? _encryptedOutletID;

  DatabaseCubit(
    this.directory,
    this._encryptedOutletID,
  ) : super(IsarService(directory)) {
    emit(IsarService(directory));
  }

  static IsarService dbFrom(BuildContext context) {
    final cubit = context.read<DatabaseCubit>();
    return cubit.state!;
  }

  String? get outletId {
    if (_encryptedOutletID != null) {
      var bytes = utf8.encode(_encryptedOutletID);
      var digest = md5.convert(bytes);
      return digest.toString();
    }
    return null;
  }
}
