import 'package:covid19app/pages/pages_kasus.dart';
import 'package:flutter/material.dart';
import 'package:covid19app/pages/pages_informasi.dart';
import 'package:covid19app/pages/page_bantuan.dart';
import 'package:covid19app/provider/provider_corona.dart';
import 'package:provider/provider.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CoronaProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Covid 19',
        theme: ThemeData(primarySwatch: Colors.green),
        home: new MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final _layoutPage = [KasusPage(), Informasi(), Bantuan()];
  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _layoutPage.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.wb_sunny), title: Text('Kasus')),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books), title: Text('Informasi')),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_to_queue), title: Text('Bantuan')),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onTabItem,
        ));
  }
}
