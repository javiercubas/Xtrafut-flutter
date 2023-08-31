import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class PersonalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PersonalAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 24, 24, 24),
      title: Row(
        children: [
          Image.asset('assets/logo.png', height: 5.h),
          Gap(2.w),
          RichText(
            text: TextSpan(
              text: 'XtraFut',
              style: TextStyle(
                  fontSize: 2.5.h,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
              children: [
                TextSpan(
                  text: '.pro',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 105, 153, 93),
                      fontSize: 2.5.h,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        SizedBox(
          width: 15.w,
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset('assets/soccer-goal.png')),
              Positioned(
                top: 0.4.h,
                right: 0,
                child: Container(
                    width: 5.w,
                    height: 5.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 0, 0),
                      borderRadius: BorderRadius.circular(100.w),
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 1.5.h,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
        SizedBox(
            width: 15.w,
            child: Stack(children: [
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset('assets/paper-plane.png'),
              ),
              Positioned(
                top: 0.4.h,
                right: 0,
                child: Container(
                    width: 5.w,
                    height: 5.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 0, 0),
                      borderRadius: BorderRadius.circular(100.w),
                    ),
                    child: Center(
                      child: Text(
                        '12',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 1.5.h,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ),
            ]))
      ],
    );
  }
}
