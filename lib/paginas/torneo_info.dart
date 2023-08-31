import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:xtrafut/componentes/formacion.dart';

class TorneoInfo extends StatelessWidget {
  const TorneoInfo({
    Key? key,
    required this.onTap,
    required this.selectedIndex,
  }) : super(key: key);
  final VoidCallback onTap;
  final int selectedIndex;
  final String _formacion = "3-1-2";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: 5.w,
            right: 5.w,
            top: 0,
            bottom: 0,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Gap(3.h),
                  Container(
                    height: 25.h,
                    width: 25.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.w),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://scontent-mad2-1.xx.fbcdn.net/v/t39.30808-6/280942035_10159841213689841_5922761184053599788_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=YMvkY7FItaYAX-UA-l2&_nc_ht=scontent-mad2-1.xx&oh=00_AfDmB7DxGXHtB8WK8CYq1gFz_0hTvLJrTHgf2LIpAaRUxw&oe=64F34765"))),
                  ),
                  Gap(2.h),
                  Text(
                    "UEM pachangas",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Gap(2.h),
                  Text(
                    "Lorem ipsum dolor sit amet consectetur adipiscing elit penatibus felis varius nec convallis, pretium a iaculis facilisis cras hendrerit mus dis blandit aptent nunc. Imperdiet felis netus lacus risus quam id curae, facilisis vivamus aenean penatibus convallis eleifend lobortis nisl",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  Gap(4.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_month,
                              color: Colors.white, size: 4.h),
                          Gap(2.w),
                          Text(
                            "25 de Agosto de 2023",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.watch_later_outlined,
                              color: Colors.white, size: 4.h),
                          Gap(2.w),
                          Text(
                            "17:00",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
                  ),
                  Gap(4.h),
                  // Linea de separación
                  Container(
                    height: 0.2.h,
                    width: 75.w,
                    color: Colors.white,
                  ),
                  Gap(4.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on, color: Colors.white, size: 5.h),
                      Gap(2.w),
                      Text(
                        "Localización",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Gap(2.h),
                  Text(
                    "C. Tajo, s/n, 28670 Villaviciosa de Odón, Madrid",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic),
                  ),
                  Gap(2.h),
                  Container(
                    height: 20.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/mapa.png"))),
                  ),
                  Gap(4.h),
                  // Linea de separación
                  Container(
                    height: 0.2.h,
                    width: 75.w,
                    color: Colors.white,
                  ),
                  Gap(2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.people, color: Colors.white, size: 5.h),
                      Gap(2.w),
                      // Texto con varios estilos
                      RichText(
                        text: TextSpan(
                          text: 'Jugadores ',
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          children: [
                            TextSpan(
                              text: ' (7/15)',
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 105, 153, 93),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Gap(2.h),
                  Container(
                    height: 58.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/campo.png"))),
                    child: Formacion(value: _formacion),
                  ),
                  Gap(4.h),
                  Container(
                      width: 90.w,
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 105, 153, 93),
                          borderRadius: BorderRadius.circular(100.w),
                          border:
                              Border.all(color: Colors.white, width: 0.2.h)),
                      child: Center(
                        child: Text(
                          "Inscribirse",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  Gap(3.h),
                ],
              ),
            )),
        Positioned(
          top: 3.h,
          left: 5.w,
          child: GestureDetector(
              onTap: onTap,
              child:
                  Icon(Icons.arrow_back_ios, color: Colors.white, size: 4.h)),
        ),
      ],
    );
  }
}
