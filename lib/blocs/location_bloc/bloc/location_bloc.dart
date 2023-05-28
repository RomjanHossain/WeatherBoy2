import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';
import 'package:weatherboy2/data/provider/current_loc_provider.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final LocationProvider locationProvider = LocationProvider();
  LocationBloc() : super(LocationInitialState()) {
    on<LocationEvent>((event, emit) {});
    on<LocationPermissionEvent>(
      (event, emit) async {
        bool _isGranted = await locationProvider.checkLocationPermission();
        emit(LocationPermissionState(isPermissionGranted: _isGranted));

        /// get the current location
        add(LocationLoadEvent());
      },
    );
    on<LocationLoadEvent>(
      (event, emit) async {
        Position _position = await locationProvider.currentPosition();
        emit(LocationLoadedState(position: _position));
      },
    );
    on<LocationLoadedEvent>(
      (LocationLoadedEvent event, emit) async {
        emit(LocationLoadedState(position: event.position));
      },
    );
  }
}
