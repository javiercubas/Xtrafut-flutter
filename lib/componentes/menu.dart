import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
    required this.onTap,
    required this.index,
  }) : super(key: key);
  final Function(int) onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 24, 24, 24),
      height: 9.h,
      child: Stack(
        children: [
          Positioned(
            bottom: 2.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: () => onTap(0),
                    child: Image.asset('assets/home.png', height: 5.h)),
                GestureDetector(
                    onTap: () => onTap(2),
                    child: Image.asset('assets/search.png', height: 5.h)),
                GestureDetector(
                    onTap: () => onTap(3),
                    child:
                        Image.asset('assets/soccer-player.png', height: 5.h)),
                GestureDetector(
                    onTap: () => onTap(4),
                    child: Image.asset('assets/user.png', height: 5.h)),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: index == 0
                ? 0
                : index == 2
                    ? 25.w
                    : index == 3
                        ? 50.w
                        : index == 4
                            ? 75.w
                            : 0,
            child: Container(
              color: Colors.white,
              height: 0.8.h,
              width: 25.w,
            ),
          )
        ],
      ),
    );
  }
}
