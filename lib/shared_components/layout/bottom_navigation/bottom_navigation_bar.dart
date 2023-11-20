import '/constants/app_export.dart';
import '/shared_components/layout/bottom_navigation/bn_contolleur.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({super.key});

  final BNavigationController navigationController =
      Get.put(BNavigationController());

  final List<Widget> pages = [
    // HomeScreen(),  // Screens you want to navigate
    // Add as many screens as necessary
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          // Add more items if necessary
        ],
        currentIndex: navigationController.tabIndex.value,
        selectedItemColor: AppColors.primaryColor,
        onTap: navigationController.changeTabIndex);
  }
}
