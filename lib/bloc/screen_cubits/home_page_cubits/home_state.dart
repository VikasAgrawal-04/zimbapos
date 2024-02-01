import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final DateTime initialDateTime;
  final double animationValue;
  final String ipAddress;

  const HomeState(
      {required this.initialDateTime,
      required this.animationValue,
      required this.ipAddress});

  @override
  List<Object?> get props => [initialDateTime, animationValue, ipAddress];

  HomeState copyWith({
    DateTime? initialDateTime,
    double? animationValue,
    String? ipAddress,
  }) {
    return HomeState(
        initialDateTime: initialDateTime ?? this.initialDateTime,
        animationValue: animationValue ?? this.animationValue,
        ipAddress: ipAddress ?? this.ipAddress);
  }
}
