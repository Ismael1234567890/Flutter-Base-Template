import '/constants/app_export.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "home",
          style: TextStyle(color: AppColors.whiteColor),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Utils.changeLangue(Langue.fr);
            },
            icon: const Icon(Icons.translate),
          ),
          IconButton(
            onPressed: () {
              MyNavigation.goToLogin();
            },
            icon: const Icon(Icons.login),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(color: AppColors.blackColor, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '$_counter',
              style: TextStyle(color: AppColors.accentColor, fontSize: 32),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
