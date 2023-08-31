import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:xtrafut/componentes/tornament_container.dart';

class Torneos extends StatelessWidget {
  const Torneos({
    Key? key,
    required this.nombre,
    required this.onTap,
    required this.selectedIndex,
  }) : super(key: key);
  final String nombre;
  final VoidCallback onTap;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 5.h,
          width: 90.w,
          decoration: BoxDecoration(
            // Borde en el bottom
            border: Border(
              bottom: BorderSide(
                color: Colors.white,
                width: 0.2.h,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                nombre,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "Ver más",
                style: TextStyle(
                    color: const Color.fromARGB(255, 198, 198, 198),
                    fontSize: 8.sp,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline),
              )
            ],
          ),
        ),
        Gap(2.h),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(children: [
            Gap(4.w),
            TournamentContainer(
              titulo: "Copa Mundial",
              imagen:
                  "https://1.bp.blogspot.com/-pxozdKqf-PE/XW6mtLfrxPI/AAAAAAACEhc/szb0cqBIXGkHU-WzVeTIC6RgftVb94_TgCLcBGAs/s1600/00-qatar-2022-logo%2B%25288%2529.jpg",
              onTap: onTap,
              selectedIndex: selectedIndex,
            ),
            Gap(4.w),
            TournamentContainer(
              titulo: "Copa América",
              imagen:
                  "https://1.bp.blogspot.com/-pxozdKqf-PE/XW6mtLfrxPI/AAAAAAACEhc/szb0cqBIXGkHU-WzVeTIC6RgftVb94_TgCLcBGAs/s1600/00-qatar-2022-logo%2B%25288%2529.jpg",
              onTap: onTap,
              selectedIndex: selectedIndex,
            ),
            Gap(4.w),
            TournamentContainer(
              titulo: "Copa Libertadores",
              imagen:
                  "https://1.bp.blogspot.com/-pxozdKqf-PE/XW6mtLfrxPI/AAAAAAACEhc/szb0cqBIXGkHU-WzVeTIC6RgftVb94_TgCLcBGAs/s1600/00-qatar-2022-logo%2B%25288%2529.jpg",
              onTap: onTap,
              selectedIndex: selectedIndex,
            ),
          ]),
        ),
      ],
    );
  }
}
