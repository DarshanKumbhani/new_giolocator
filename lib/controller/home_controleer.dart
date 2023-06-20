
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationController extends GetxController
{

  RxDouble lat = 19.0760.obs;
  RxDouble long = 72.8777.obs;

  LocationPermission? permission;
  GoogleMapController? myController;

  Future<void> getLiveCoordinates()
  async {

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    lat.value = position.latitude;
    long.value = position.longitude;


    myController?.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(lat.value, long.value),
          zoom: 10,
        )
    ));
  }


  Rx<MapType> mapselected = MapType.normal.obs;

}
