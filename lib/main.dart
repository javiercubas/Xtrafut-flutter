import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:xtrafut/componentes/appbar.dart';
import 'package:xtrafut/componentes/menu.dart';
import 'package:xtrafut/paginas/home.dart';
import 'package:xtrafut/paginas/profile.dart';
import 'package:xtrafut/paginas/torneo_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return const MaterialApp(
          title: 'XtraFut',
          home: MyHomePage(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;

  void _handleTap(int index) {
    setState(() {
      _index = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 57, 70, 72),
        appBar: PersonalAppBar(index: _index),
        body: body(),
        bottomNavigationBar: Menu(
          onTap: _handleTap,
          index: _index,
        ));
  }

  Stack body() {
    return Stack(
      children: [
        Offstage(
          offstage: _index != 0,
          child: TickerMode(
            enabled: _index == 0,
            child: Home(onTap: () => _handleTap(1), selectedIndex: _index),
          ),
        ),
        Offstage(
          offstage: _index != 1,
          child: TickerMode(
            enabled: _index == 1,
            child:
                TorneoInfo(onTap: () => _handleTap(0), selectedIndex: _index),
          ),
        ),
        Offstage(
          offstage: _index != 4,
          child: TickerMode(
            enabled: _index == 4,
            child: const Profile(),
          ),
        )
      ],
    );
  }
}
