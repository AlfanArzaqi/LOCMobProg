import 'dart:async';
import 'package:location/location.dart';
import 'package:lokasi/lib/model/location_model.dart';

class LocationService {
  Location location = Location();
  var currentLocation;

  StreamController<LocationModel> locationController =
      StreamController<LocationModel>.broadcast();

  Stream<LocationModel> get getStreamData => locationController.stream;

  LocationService() {
    location.requestPermission().then((locationPermission) {
      if (locationPermission == PermissionStatus.granted) {
        location.onLocationChanged.listen((locationValue) {
          locationController.add(LocationModel(
              latitude: locationValue.latitude,
              longitude: locationValue.longitude));
        });
      }
    });
  }
}
