import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class Modal extends StatefulWidget {
  const Modal({Key? key, required this.isAdded}) : super(key: key);
  final bool isAdded;

  @override
  _ModalState createState() => _ModalState();
}

class _ModalState extends State<Modal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 1.h),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Gap(2.h),
            SizedBox(
              width: 90.w,
              height: 3.h,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    child: Text(
                      widget.isAdded
                          ? "Información de Mark Sorroche"
                          : "Añadir jugador",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Positioned(
                      right: 0,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.close, color: Colors.grey)))
                ],
              ),
            ),
            Gap(1.h),
            SizedBox(
              width: 40.w,
              height: 10.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    "https://www.banderasphonline.com/wp-content/uploads/2021/08/comprar-bandera-espana-sin-escudo-para-exterior-interior-1200x900.png",
                    height: 5.h,
                  ),
                  Container(
                    height: 10.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://kingsleague.pro/wp-content/uploads/2022/12/1k-bg.jpg"),
                            fit: BoxFit.cover)),
                    child: const Image(
                        image: NetworkImage(
                            "https://kingsleague.pro/wp-content/uploads/1k/7.png")),
                  ),
                  Container(
                    height: 5.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green[500],
                    ),
                    child: Center(
                      child: Text(
                        "12",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Gap(1.h),
            Divider(
              color: Colors.grey[300],
              thickness: 1,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                    height: 11.h,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.network(
                            "https://www.banderasphonline.com/wp-content/uploads/2021/08/comprar-bandera-espana-sin-escudo-para-exterior-interior-1200x900.png",
                            width: 10.w,
                          ),
                          Container(
                            width: 10.w,
                            height: 5.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green[500]),
                            child: Center(
                                child: Text("2",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Poppins"))),
                          )
                        ]),
                  ),
                  Gap(2.w),
                  Container(
                    height: 11.h,
                    width: 16.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://kingsleague.pro/wp-content/uploads/2022/12/barrio-bg.jpg"),
                            fit: BoxFit.cover)),
                    child: const Image(
                        image: NetworkImage(
                            "https://kingsleague.pro/wp-content/uploads/barrio/1.png")),
                  ),
                  Gap(3.w),
                  SizedBox(
                    height: 11.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "JJ. Figueiras",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Poppins"),
                        ),
                        Text(
                          "30.231,12 €",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontFamily: "Poppins"),
                        ),
                        Gap(1.h),
                        SizedBox(
                          width: 30.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              puntos(value: 0),
                              puntos(value: 2),
                              puntos(value: -2),
                              puntos(value: 0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container puntos({required int value}) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: 0.5.h, horizontal: value < 0 ? 1.2.w : 2.w),
      decoration: BoxDecoration(
          color: value != 0
              ? value > 0
                  ? Colors.green[500]
                  : Colors.red[500]
              : Colors.orange[500],
          borderRadius: BorderRadius.circular(5)),
      child: Text(value.toString(),
          style: TextStyle(
              fontSize: 10.sp,
              color: Colors.white,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold)),
    );
  }
}
