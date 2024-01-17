import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final DateTime initialDateTime;
  final double animationValue;

  const HomeState(
      {required this.initialDateTime, required this.animationValue});

  @override
  List<Object?> get props => [initialDateTime, animationValue];

  HomeState copyWith({
    DateTime? initialDateTime,
    double? animationValue,
  }) {
    return HomeState(
      initialDateTime: initialDateTime ?? this.initialDateTime,
      animationValue: animationValue ?? this.animationValue,
    );
  }
}
