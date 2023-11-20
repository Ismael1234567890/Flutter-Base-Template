import '/constants/app_export.dart';

class MyAppScaffold extends StatelessWidget {
  const MyAppScaffold(
      {required this.body,
      this.pageTitle,
      this.appBar,
      this.isHomePage = false,
      this.isBottomNavigation = false,
      this.flotingLocation,
      this.floatingActionButton,
      this.bottomNavigationBar,
      this.backgroundColor,
      super.key});

  final Widget body;
  final String? pageTitle;
  final bool isHomePage;
  final PreferredSizeWidget? appBar;
  final bool? isBottomNavigation;
  final FloatingActionButtonLocation? flotingLocation;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? AppColors.whiteColor,
      appBar: appBar,
      body: body,
      floatingActionButtonLocation:
          flotingLocation ?? FloatingActionButtonLocation.centerFloat,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
