import 'package:flutter/material.dart';

class Store {
  final String name;
  final String location;
  final String lastCheckedIn;
  final int amountCollected;
  final String phoneNumber;

  Store({
    required this.name,
    required this.location,
    required this.lastCheckedIn,
    required this.amountCollected,
   required this.phoneNumber
  });
}

final List<Store> stores = [
  Store(
    name: 'Jamees Foods',
    location: 'Thamarassery',
    lastCheckedIn: 'Dec 3, 2024',
    amountCollected: 15000 * 1000,
    phoneNumber: '1234567890',
  ),
  Store(
    name: 'Wagon Mart',
    location: 'Panniyankara',
    lastCheckedIn: 'Dec 4, 2024',
    amountCollected: 15000 * 1000,
    phoneNumber: '1234567890',
  ),
];

class SelectedStoreProvider with ChangeNotifier {
  Store? _selectedStore;

  Store? get selectedStore => _selectedStore;

  void selectStore(Store store) {
    _selectedStore = store;
    notifyListeners();
  }

  void clearSelection() {
    _selectedStore = null;
    notifyListeners();
  }
}
