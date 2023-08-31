import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:xtrafut/componentes/modal.dart';

class Player extends StatelessWidget {
  const Player({
    Key? key,
    this.image,
    this.pais,
    this.dorsal,
    required this.left,
    required this.right,
    required this.bottom,
  }) : super(key: key);
  final String? image;
  final String? pais;
  final String? dorsal;
  final double left;
  final double right;
  final double bottom;

  Widget build(BuildContext context) {
    void showModal() {
      showModalBottomSheet(
        context: context,
        elevation: 5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (BuildContext context) {
          return Modal(isAdded: image != null ? true : false);
        },
      );
    }

    return Positioned(
        bottom: bottom,
        left: left,
        right: right,
        child: GestureDetector(
          onTap: () {
            showModal();
          },
          child: SizedBox(
            height: 15.h,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 7.5.w,
                  right: 7.5.w,
                  child: SvgPicture.asset(
                    "assets/player-bg.svg",
                    width: 15.w,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                    bottom: 1.h,
                    left: 12.5.w,
                    right: 12.5.w,
                    child: ShaderMask(
                        blendMode: BlendMode.dstIn,
                        shaderCallback: (bounds) => const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.black,
                                Colors.transparent,
                              ],
                              stops: [
                                0.8,
                                0.9,
                              ],
                            ).createShader(bounds),
                        child: image != null
                            ? Image.network(
                                image!,
                                width: 25.w,
                              )
                            : Image.asset(
                                "assets/jugador.png",
                                width: 25.w,
                              ))),
                Positioned(
                  top: 6.h,
                  left: 10.5.w,
                  child: Container(
                    width: 6.w,
                    height: 6.w,
                    decoration: BoxDecoration(
                        image: pais != null
                            ? DecorationImage(
                                image: NetworkImage(pais!), fit: BoxFit.cover)
                            : null,
                        color: pais == null
                            ? const Color.fromARGB(255, 57, 70, 72)
                            : null,
                        borderRadius: BorderRadius.circular(100)),
                    child: pais == null
                        ? Center(
                            child: Text("?",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold,
                                )),
                          )
                        : null,
                  ),
                ),
                Positioned(
                  top: 6.h,
                  right: 10.5.w,
                  child: Container(
                    width: 6.w,
                    height: 6.w,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 57, 70, 72),
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                      child: Text(dorsal ?? "?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
