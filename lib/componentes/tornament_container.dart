import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class TournamentContainer extends StatefulWidget {
  const TournamentContainer(
      {Key? key,
      required this.titulo,
      required this.imagen,
      required this.onTap,
      required this.selectedIndex})
      : super(key: key);
  final String titulo;
  final String imagen;
  final VoidCallback onTap;
  final int selectedIndex;

  @override
  _TournamentContainerState createState() => _TournamentContainerState();
}

class _TournamentContainerState extends State<TournamentContainer> {
  String titulo = "";
  String imagen = "";
  @override
  void initState() {
    super.initState();
    titulo = widget.titulo;
    imagen = widget.imagen;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 22.h,
        width: 40.w,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 24, 24, 24),
          borderRadius: BorderRadius.circular(2.h),
          boxShadow: List<BoxShadow>.generate(
            1,
            (index) => BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(0, 4), // changes position of shadow
            ),
          ),
        ),
        child: GestureDetector(
          onTap: widget.onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 30.w,
                width: 30.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(imagen), fit: BoxFit.cover)),
              ),
              Gap(2.h),
              Text(
                titulo,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ));
  }
}
