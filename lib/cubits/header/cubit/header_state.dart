part of 'header_cubit.dart';

@immutable
abstract class HeaderState {}

class HeaderInitial extends HeaderState {}

class HeaderLoadState extends HeaderState {
  final HeaderModel headerModel;
  HeaderLoadState({
    required this.headerModel,
  });
}
