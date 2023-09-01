import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class EquipoCard extends StatelessWidget {
  const EquipoCard({
    Key? key,
    required this.logo,
    required this.name,
  }) : super(key: key);
  final String logo;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 43.w,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 24, 24, 24),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Gap(0.5.h),
          Image(
            image: NetworkImage(logo),
            height: 12.h,
          ),
          Gap(0.5.h),
          SizedBox(
            width: 40.w,
            child: Text(name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          Gap(0.5.h)
        ],
      ),
    );
  }
}
