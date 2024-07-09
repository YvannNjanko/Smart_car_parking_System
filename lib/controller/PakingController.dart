import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ParkingSlotModel {
  bool booked;
  bool isParked;
  int parkingHours;
  int status; // 0: default, 1: paid

  ParkingSlotModel({
    required this.booked,
    required this.isParked,
    required this.parkingHours,
    this.status = 0,
  });
}

class ParkingController extends GetxController {
  var slot1 = ParkingSlotModel(booked: false, isParked: false, parkingHours: 0).obs;
  var slot2 = ParkingSlotModel(booked: false, isParked: false, parkingHours: 0).obs;
  var slot3 = ParkingSlotModel(booked: false, isParked: false, parkingHours: 0).obs;
  var slot4 = ParkingSlotModel(booked: false, isParked: false, parkingHours: 0).obs;
  var slot5 = ParkingSlotModel(booked: false, isParked: false, parkingHours: 0).obs;
  var slot6 = ParkingSlotModel(booked: false, isParked: false, parkingHours: 0).obs;
  var slot7 = ParkingSlotModel(booked: false, isParked: false, parkingHours: 0).obs;
  var slot8 = ParkingSlotModel(booked: false, isParked: false, parkingHours: 0).obs;

  var parkingTimeInMin = 10.0.obs;
  var parkingAmount = 10.0.obs;
  var name = TextEditingController();
  var vehicalNumber = TextEditingController();

  void timeCounter() {
    // Your time counter logic here
  }

  void updateSlotStatus(String slotId) {
    switch (slotId) {
      case '1':
        slot1.update((slot) {
          slot?.status = 1;
        });
        break;
      case '2':
        slot2.update((slot) {
          slot?.status = 1;
        });
        break;
      case '3':
        slot3.update((slot) {
          slot?.status = 1;
        });
        break;
      case '4':
        slot4.update((slot) {
          slot?.status = 1;
        });
        break;
      case '5':
        slot5.update((slot) {
          slot?.status = 1;
        });
        break;
      case '6':
        slot6.update((slot) {
          slot?.status = 1;
        });
        break;
      case '7':
        slot7.update((slot) {
          slot?.status = 1;
        });
        break;
      case '8':
        slot8.update((slot) {
          slot?.status = 1;
        });
        break;
    }
  }
}
