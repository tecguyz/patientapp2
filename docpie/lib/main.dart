import 'package:docpie/home_page.dart';
import 'package:docpie/profilepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const RootPage(), //// home
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
        ));
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentpage = 0;
  List<Widget> pages = [
    ///////// pages is argument we assigned the pages or screens

    const Profilepage(),
    HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentpage],
      appBar: AppBar(
        title: const Text('hello world secccccccccccc'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('add icon works');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            /// to refresh the page for trasition or for live changes
            currentpage = index;
          });
        },
        selectedIndex: currentpage, // selected page
      ),
    );
  }
}
