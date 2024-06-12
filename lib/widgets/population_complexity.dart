import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class population_complexity extends StatelessWidget {
  const population_complexity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 180,
          height: 80,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 180,
                  height: 80,
                  decoration: ShapeDecoration(
                    color: const Color(0xB2FAFBFB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x19191C32),
                        blurRadius: 30,
                        offset: Offset(0, 10),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 10,
                top: 6,
                child: SizedBox(
                  width: 89,
                  height: 21.33,
                  child: Text(
                    '인구 밀집도',
                    style: TextStyle(
                      color: Color(0xFF111827),
                      fontSize: 10,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 28,
                child: Container(
                  width: 40,
                  height: 40,
                  color: const Color(0xff00ba71),
                  child: const Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          '여유',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 28,
                child: Container(
                  width: 40,
                  height: 40,
                  color: const Color(0xffFFD600),
                  child: const Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          '보통',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 90,
                top: 28,
                child: Container(
                  width: 40,
                  height: 40,
                  color: const Color(0xffFF8901),
                  child: const Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          '약간\n붐빔',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 130,
                top: 28,
                child: Container(
                  width: 40,
                  height: 40,
                  color: const Color(0xffF43545),
                  child: const Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          '붐빔',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
