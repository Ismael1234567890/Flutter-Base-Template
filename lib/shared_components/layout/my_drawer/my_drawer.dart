import '/constants/app_export.dart';
import '/shared_components/layout/my_drawer/d_controller.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});
  final MyDrawerController drawerController = Get.put(MyDrawerController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => drawerController.navigateTo('home'),
          ),
          ListTile(
            leading: const Icon(Icons.search),
            title: const Text('Search'),
            onTap: () => drawerController.navigateTo('search'),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () => drawerController.navigateTo('profile'),
          ),
          // Ajoutez d'autres éléments ici
        ],
      ),
    );
  }
}
