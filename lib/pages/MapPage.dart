import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smart_car_parking/config/colors.dart';
import 'package:smart_car_parking/controller/PakingController.dart';
import 'package:smart_car_parking/pages/homepage/homepage.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final ParkingController parkingController = Get.put(ParkingController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Completer<GoogleMapController> controller = Completer();
    const LatLng center = LatLng(3.858832, 11.500001);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 20),
            const Text(
              "SMART CAR PARKING",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                // parkingController.timeCounter();
                Get.toNamed("/about-us");
              },
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              )),
        ],
        centerTitle: true,
      ),
      body: GoogleMap(
        buildingsEnabled: true,
        compassEnabled: true,
        mapType: MapType.normal,
        initialCameraPosition: const CameraPosition(
          target: center,
          zoom: 18.0,
        ),
        markers: {
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage(parkingController: parkingController));
            },
            markerId: MarkerId('parking_1'),
            position: LatLng(3.862591, 11.520680),
          ),
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage(parkingController: parkingController));
            },
            markerId: MarkerId('parking_2'),
            position: LatLng(3.867176, 11.515681),
          ),
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage(parkingController: parkingController));
            },
            markerId: MarkerId('parking_3'),
            position: LatLng(3.860205, 11.517491),
          ),
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage(parkingController: parkingController));
            },
            markerId: MarkerId('parking_4'),
            position: LatLng(3.847541, 11.521321),
          ),
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage(parkingController: parkingController));
            },
            markerId: MarkerId('parking_5'),
            position: LatLng(3.857541, 11.501321),
          ),
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage(parkingController: parkingController));
            },
            markerId: MarkerId('parking_6'),
            position: LatLng(3.856541, 11.511321),
          ),
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage(parkingController: parkingController));
            },
            markerId: MarkerId('parking_7'),
            position: LatLng(3.807541, 11.501321),
          ),
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage(parkingController: parkingController));
            },
            markerId: MarkerId('parking_8'),
            position: LatLng(3.854541, 11.521321),
          ),
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage(parkingController: parkingController));
            },
            markerId: MarkerId('parking_9'),
            position: LatLng(3.854521, 11.521320),
          ),
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage(parkingController: parkingController));
            },
            markerId: MarkerId('parking_10'),
            position: LatLng(3.850541, 11.510321),
          ),
        },
        myLocationButtonEnabled: true,
        onMapCreated: (GoogleMapController controller) {},
      ),
    );
  }
}
