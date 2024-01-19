import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
part 'outlet_register_state.dart';

class OutletRegisterCubit extends Cubit<OutletRegisterState> {
  final DatabaseCubit databaseCubit;
  OutletRegisterCubit({required this.databaseCubit})
      : super(OutletRegisterInitial());

  final PageController pageController = PageController();
}
