import 'package:flutter/material.dart';

class AdminSidebarProvider with ChangeNotifier {
  bool isExpanded = false;
  int selectedTabIndex = 0;
  late TabController tabController;

  void toggleSidebar() {
    isExpanded = !isExpanded;
    notifyListeners();
  }

  void switchTab(int index) {
    selectedTabIndex = index;
    tabController.index = index; // Update the TabController
    notifyListeners();
  }

  void setTabController(TabController controller) {
    tabController = controller;
    tabController.addListener(() {
      if (tabController.index != selectedTabIndex) {
        selectedTabIndex = tabController.index; // Sync selectedTabIndex
        notifyListeners();
      }
    });
  }
}
