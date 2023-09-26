import 'package:ecommerce_int2/app_properties.dart';
import 'package:ecommerce_int2/models/user.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter/services.dart';

class ReceivePaymentPage extends StatelessWidget {
  final User user;

  const ReceivePaymentPage(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellow,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Receive Payment',
          style: TextStyle(color: darkGrey),
        ),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
                margin: const EdgeInsets.all(16.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: CustomPaint(
                    painter: TicketPainter(),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/icons/QR_code.png'),
                          ),
                          const Text('asdfghjklqwertyuioxcvbnm,'),
                          const Padding(
                            padding: EdgeInsets.all(32.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '\$',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                Text('54.24',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 48,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CircleAvatar(
                                  maxRadius: 24,
                                  backgroundImage:
                                      NetworkImage(user.picture.thumbnail),
                                ),
                                const SizedBox(width: 16.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      // ignore: prefer_interpolation_to_compose_strings
                                      user.name.first + ' ' + user.name.last,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(user.phone,
                                        style: const TextStyle(
                                            fontSize: 12, color: Colors.grey)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: <Widget>[
                const Text('Retry Again with new',
                    style: TextStyle(color: Colors.white)),
                const SizedBox(
                  width: 8.0,
                ),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      'QR code',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TicketPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double height = size.height;
    double width = size.width;
    final rectLeft = Rect.fromLTWH(-15, height / 2, 30, 30);
    const startAngleLeft = -math.pi / 2;
    const sweepAngleLeft = math.pi;
    final rectRight = Rect.fromLTWH(width - 15, height / 2, 30, 30);
    const startAngleRight = math.pi / 2;
    const sweepAngleRight = math.pi;
    Path path = Path();
    path.moveTo(0, 0);
    path.arcTo(rectLeft, startAngleLeft, sweepAngleLeft, false);
    path.lineTo(0, height);
    path.lineTo(width, height);
    path.arcTo(rectRight, startAngleRight, sweepAngleRight, false);
    path.lineTo(width, 0);
    canvas.drawPath(path, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
