import 'dart:math';
import 'package:flutter/material.dart';


int count_check = 0;

List<String> customerName = ['Phyo Thura', 'Benjamin', 'Justin', 'Snoop'];
Random rand = new Random();
List<String> assetName = [
  'Computer / 889',
  'macbook / 112',
  'soundbox / 555',
  'Mouse / 890'
];

List<String> assetImage = [
  'assets/images/computer.jpg',
  'assets/images/macbook.jpg',
  'assets/images/soundbox.jpg',
  'assets/images/mouse.jpg'
];

//int borrowedAssetCount = 0;
// ignore: non_constant_identifier_names
void addBorrowedAssset(
    String CustomerName, String AssetName, String AssetImage) {
  borrowedCustomerName.add(CustomerName);
  borrowedAssetName.add(AssetName);
  borrowedImage.add(AssetImage);
  //borrowedAssetCount++;
}

List<String> borrowedAssetName = [];
List<String> borrowedCustomerName = [];
List<String> borrowedImage = [];
//int requestedAssetCount = 3;

void deleteRequestedAssetName(int index) {
  requestedAssetName.remove(requestedAssetName[index]);
}

void deleteRequestedCustomerName(int index) {
  requestedCustomerName.remove(requestedCustomerName[index]);
}

void deleteRequestedImage(int index) {
  requestedImage.remove(requestedImage[index]);
}

List<String> requestedAssetName = [];
List<String> requestedCustomerName = [];

List<String> requestedImage = [];

List<bool> available = [true, true, false, true];

List<String> noti_assetName = [];
List<String> noti_customerName = [];

