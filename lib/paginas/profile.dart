import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:xtrafut/componentes/equipo_card.dart';
import 'package:xtrafut/componentes/stats_user.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 90.w,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Gap(4.h),
            Container(
              height: 20.h,
              width: 20.h,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/tortuga.jpeg")),
                  borderRadius: BorderRadius.circular(100.w)),
            ),
            Gap(2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Kylian Mbappé",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Gap(2.w),
                Image(
                  image: const AssetImage("assets/verificado.png"),
                  height: 22.sp,
                ),
              ],
            ),
            Text(
              "@kmbappe",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontStyle: FontStyle.italic,
                  color: Colors.white.withOpacity(0.68)),
            ),
            Gap(2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: Container(
                    height: 5.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color.fromARGB(255, 105, 153, 93),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                              color: Colors.black.withOpacity(0.25))
                        ]),
                    child: Center(
                      child: Text(
                        "Seguir",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 217, 217, 217)),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    height: 5.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color.fromARGB(255, 217, 217, 217),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                              color: Colors.black.withOpacity(0.25))
                        ]),
                    child: Center(
                      child: Text(
                        "Escribir mensaje",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 57, 70, 72)),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Gap(4.h),
            Container(
              width: 90.w,
              height: 9.h,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 217, 217),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StatsUser(data: "300k", name: "seguidores"),
                  StatsUser(data: "77", name: "encuentros"),
                  StatsUser(data: "3", name: "equipos"),
                ],
              ),
            ),
            Gap(3.h),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EquipoCard(
                    logo:
                        "https://logodownload.org/wp-content/uploads/2022/07/france-national-football-team-logo.png",
                    name: "Selección de fútbol de Francia"),
                EquipoCard(
                    logo:
                        "https://assets.stickpng.com/images/584a9b47b080d7616d298778.png",
                    name: "Viene?"),
              ],
            ),
            Gap(2.h),
            const EquipoCard(
                logo:
                    "https://logodownload.org/wp-content/uploads/2022/07/france-national-football-team-logo.png",
                name: "Gin and Gol"),
          ]),
        ),
      ),
    );
  }
}
