part of 'location_bloc.dart';

@immutable
abstract class LocationState {}

class LocationInitialState extends LocationState {}

class LocationPermissionState extends LocationState {
  final bool isPermissionGranted;

  LocationPermissionState({required this.isPermissionGranted});
}

class LocationLoadingState extends LocationState {}

class LocationLoadedState extends LocationState {
  final Position position;

  LocationLoadedState({required this.position});
}

class LocationErrorState extends LocationState {
  final String message;

  LocationErrorState({required this.message});
}
