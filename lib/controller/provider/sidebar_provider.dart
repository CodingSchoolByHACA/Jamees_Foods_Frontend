import 'package:flutter/material.dart';

class UserSidebarProvider with ChangeNotifier {
  late TabController tabController;
  bool isExpanded = false; // Sidebar expansion state
  int selectedTabIndex = 0; // Currently selected tab index

  void toggleSidebar() {
    isExpanded = !isExpanded; // Toggle the sidebar's expanded state
    notifyListeners();
  }

  void switchTab(int index) {
    selectedTabIndex = index; // Update the selected index
    tabController.index = index; // Update the TabController
    notifyListeners();
  }

  void setTabController(TabController controller) {
    tabController = controller;
    tabController.addListener(() {
      if (tabController.index != selectedTabIndex) {
        selectedTabIndex = tabController.index; // Sync with TabController
        notifyListeners();
      }
    });
  }
}
