import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:jammes_food/controller/provider/sidebar_provider.dart';
import 'package:jammes_food/view/user_view/create.dart';
import 'package:jammes_food/view/user_view/homescreen.dart';
import 'package:jammes_food/view/user_view/profile.dart';
import 'package:jammes_food/view/user_view/storelist.dart';

class SidebarWithTabView extends StatefulWidget {
  const SidebarWithTabView({Key? key}) : super(key: key);

  @override
  _SidebarWithTabViewState createState() => _SidebarWithTabViewState();
}

class _SidebarWithTabViewState extends State<SidebarWithTabView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        final provider = UserSidebarProvider();
        provider
            .setTabController(_tabController); // Pass TabController to provider
        return provider;
      },
      child: Consumer<UserSidebarProvider>(
        builder: (context, sidebarProvider, child) {
          return Scaffold(
            body: SizedBox(
              height: double.infinity,
              child: Row(
                children: [
                  // Animated Sidebar
                  AnimatedContainer(
                    height: double.infinity,
                    duration: const Duration(milliseconds: 300),
                    width: sidebarProvider.isExpanded ? 220 : 70,
                    color: const Color.fromARGB(255, 213, 20, 6),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: IconButton(
                                  icon: const Icon(Icons.menu,
                                      color: Colors.white),
                                  onPressed: () {
                                    sidebarProvider.toggleSidebar();
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          _buildSidebarItem(context, Icons.home, "Home", 0),
                          _buildSidebarItem(
                              context, Icons.add, "Create Store", 1),
                          _buildSidebarItem(
                              context, Icons.storefront_outlined, "Stores", 2),
                          _buildSidebarItem(
                              context, Icons.person_pin, "Profile", 3),
                          const SizedBox(height: 200),
                          _buildSidebarItem(context,
                              Icons.support_agent_rounded, "Support", 4),
                          _buildSidebarItem(context, Icons.logout, "Logout", 5),
                        ],
                      ),
                    ),
                  ),
                  // Tab View
                  Expanded(
                    child: TabBarView(
                      controller: sidebarProvider.tabController,
                      children: const [
                        Homescreen(),
                        CreateStorePage(),
                        StoreListPage(),
                        Profile(),
                        Center(child: Text('Logout Tab')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // Sidebar item builder
  Widget _buildSidebarItem(
      BuildContext context, IconData icon, String label, int index) {
    final sidebarProvider = Provider.of<UserSidebarProvider>(context);
    final isSelected = sidebarProvider.selectedTabIndex == index;

    return InkWell(
      onTap: () {
        if (label == "Logout") {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Confirm Logout"),
                content: const Text("Are you sure you want to log out?"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close dialog
                    },
                    child: const Text("Cancel"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close dialog
                      // Perform logout logic
                    },
                    child: const Text("Logout"),
                  ),
                ],
              );
            },
          );
        } else {
          sidebarProvider.switchTab(index); // Navigate to the selected tab
        }
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromARGB(255, 24, 23, 23).withOpacity(0.2)
              : Colors.transparent,
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Icon(
              icon,
              color: isSelected ? Colors.white : Colors.white70,
            ),
            if (sidebarProvider.isExpanded)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    label,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.white70,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
