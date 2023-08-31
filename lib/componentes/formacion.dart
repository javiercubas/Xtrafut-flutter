import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:xtrafut/componentes/player.dart';

class Formacion extends StatelessWidget {
  const Formacion({
    Key? key,
    required this.value,
  }) : super(key: key);
  final String value;

  @override
  Widget build(BuildContext context) {
    List<List<Widget>> formations = [
      [
        Player(
            bottom: 40.h,
            left: 40.w,
            right: 10.w,
            image: "https://kingsleague.pro/wp-content/uploads/1k/7.png",
            pais:
                "https://www.banderasphonline.com/wp-content/uploads/2021/08/comprar-bandera-espana-sin-escudo-para-exterior-interior-1200x900.png",
            dorsal: "13"),
        Player(
            bottom: 40.h,
            left: 10.w,
            right: 40.w,
            image: "https://kingsleague.pro/wp-content/uploads/1k/7.png",
            pais:
                "https://www.banderasphonline.com/wp-content/uploads/2021/08/comprar-bandera-espana-sin-escudo-para-exterior-interior-1200x900.png",
            dorsal: "13"),
        Player(
            bottom: 29.h,
            left: 25.w,
            right: 25.w,
            image: "https://kingsleague.pro/wp-content/uploads/1k/7.png",
            pais:
                "https://www.banderasphonline.com/wp-content/uploads/2021/08/comprar-bandera-espana-sin-escudo-para-exterior-interior-1200x900.png",
            dorsal: "13"),
        Player(
            bottom: 17.h,
            left: 50.w,
            right: 0.w,
            image: "https://kingsleague.pro/wp-content/uploads/1k/7.png",
            pais:
                "https://www.banderasphonline.com/wp-content/uploads/2021/08/comprar-bandera-espana-sin-escudo-para-exterior-interior-1200x900.png",
            dorsal: "13"),
        Player(
            bottom: 17.h,
            left: 25.w,
            right: 25.w,
            image: "https://kingsleague.pro/wp-content/uploads/1k/7.png",
            pais:
                "https://www.banderasphonline.com/wp-content/uploads/2021/08/comprar-bandera-espana-sin-escudo-para-exterior-interior-1200x900.png",
            dorsal: "13"),
        Player(
            bottom: 17.h,
            left: 0.w,
            right: 50.w,
            image: "https://kingsleague.pro/wp-content/uploads/1k/7.png",
            pais:
                "https://www.banderasphonline.com/wp-content/uploads/2021/08/comprar-bandera-espana-sin-escudo-para-exterior-interior-1200x900.png",
            dorsal: "13"),
        Player(bottom: 5.h, left: 25.w, right: 25.w),
      ],
      [
        Player(bottom: 40.h, left: 30.w, right: 30.w),
        Player(bottom: 29.h, left: 52.w, right: 8.w),
        Player(bottom: 29.h, left: 30.w, right: 30.w),
        Player(bottom: 29.h, left: 8.w, right: 52.w),
        Player(bottom: 18.h, left: 42.w, right: 18.w),
        Player(bottom: 18.h, left: 18.w, right: 42.w),
        Player(bottom: 5.h, left: 30.w, right: 30.w),
      ],
      [
        Player(bottom: 29.h, left: 42.w, right: 18.w),
        Player(bottom: 29.h, left: 18.w, right: 42.w),
        Player(bottom: 18.h, left: 54.w, right: 6.w),
        Player(bottom: 18.h, left: 30.w, right: 30.w),
        Player(bottom: 18.h, left: 6.w, right: 54.w),
        Player(bottom: 5.h, left: 30.w, right: 30.w),
      ],
      [
        Player(bottom: 40.h, left: 42.w, right: 18.w),
        Player(bottom: 40.h, left: 18.w, right: 42.w),
        Player(bottom: 29.h, left: 52.w, right: 8.w),
        Player(bottom: 29.h, left: 8.w, right: 52.w),
        Player(bottom: 18.h, left: 42.w, right: 18.w),
        Player(bottom: 18.h, left: 18.w, right: 42.w),
        Player(bottom: 5.h, left: 30.w, right: 30.w),
      ],
    ];

    Map<String, int> valueIndexMap = {
      '3-1-2': 0,
      '2-3-1': 1,
      '3-2-1': 2,
      '2-2-2': 3,
    };

    int index = valueIndexMap[value] ?? -1;
    return Stack(
      children: formations[index],
    );
  }
}
