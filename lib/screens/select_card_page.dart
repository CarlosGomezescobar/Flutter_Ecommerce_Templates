import 'package:ecommerce_int2/app_properties.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter/services.dart';

class SelectCardPage extends StatelessWidget {
  const SelectCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 1.2;
    double cardHeight = 200;
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          // brightness: Brightness.light,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Select Card',
            style: TextStyle(color: darkGrey),
          ),
          elevation: 0,
        ),
        body: Center(
          child: SizedBox(
            width: width,
            height: MediaQuery.of(context).size.height / 1.4,
            child: Stack(
              alignment: const Alignment(0, -0.5),
              children: <Widget>[
                Transform.rotate(
                  angle: math.pi / 2,
                  child: Container(
                    padding: const EdgeInsets.all(32),
                    width: MediaQuery.of(context).size.height / 1.4,
                    height: width - 10,
                    decoration: const BoxDecoration(
                        color: Color(0xff353A85),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: shadow),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text('CREDIT CARD',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Container(
                            height: 35,
                            width: 50,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        const Text('4452 - 8645 - 4524 - 2413',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.3),
                                fontSize: 16.0)),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 64,
                  child: Container(
                    height: cardHeight,
                    width: width,
                    decoration: const BoxDecoration(
                        color: Color(0xffA647DD),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: shadow),
                  ),
                ),
                Positioned(
                  bottom: 32,
                  child: Container(
                    height: cardHeight,
                    width: width,
                    decoration: const BoxDecoration(
                        color: Color(0xff454ECA),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: shadow),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                      alignment: const Alignment(0, 0),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 24.0),
                      height: cardHeight,
                      width: width,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: shadow),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              CircleAvatar(
                                maxRadius: 16,
                                backgroundImage:
                                    AssetImage('assets/background.jpg'),
                              ),
                              SizedBox(width: 8.0),
                              Text('Kinder Joy',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ))
                            ],
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text('Roberto',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.0)),
                              SizedBox(height: 8.0),
                              Text('4452-8645-4524-2413',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10.0))
                            ],
                          ),
                          Flexible(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: 90,
                                  padding: const EdgeInsets.fromLTRB(
                                      24.0, 16.0, 24.0, 16.0),
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                      color: Colors.grey[50]),
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(3),
                                    ],
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.zero,
                                        hintText: 'CVV',
                                        hintStyle:
                                            TextStyle(color: Colors.grey[300]),
                                        border: InputBorder.none),
                                  ),
                                )),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('This will be deducted',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10.0)),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '\$ ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10.0),
                                  ),
                                  Text(
                                    '90.00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
