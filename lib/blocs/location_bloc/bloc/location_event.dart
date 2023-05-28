part of 'location_bloc.dart';

@immutable
abstract class LocationEvent {}

class LocationPermissionEvent extends LocationEvent {}

class LocationLoadEvent extends LocationEvent {}

class LocationLoadedEvent extends LocationEvent {
  final Position position;

  LocationLoadedEvent({required this.position});
}
