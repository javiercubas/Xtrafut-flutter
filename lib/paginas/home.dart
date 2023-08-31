import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:xtrafut/componentes/torneos.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
    required this.onTap,
    required this.selectedIndex,
  }) : super(key: key);
  final VoidCallback onTap;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Gap(2.h),
          Torneos(
              nombre: "Torneos recomendados",
              onTap: onTap,
              selectedIndex: selectedIndex),
          Gap(2.h),
          Torneos(
              nombre: "Pachangas recomendadas",
              onTap: onTap,
              selectedIndex: selectedIndex),
          Gap(2.h),
          Torneos(
              nombre: "Equipos que buscan jugadores",
              onTap: onTap,
              selectedIndex: selectedIndex),
          Gap(2.h),
        ],
      ),
    );
  }
}
