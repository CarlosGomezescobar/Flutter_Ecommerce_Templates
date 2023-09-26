import 'package:ecommerce_int2/app_properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:ecommerce_int2/screens/rating/rating_dialog.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  double rating = 0.0;
  List<int> ratings = [2, 1, 5, 2, 4, 3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/icons/comment.png'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const Dialog(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: RatingDialog(),
                    );
                  },
                );
              },
              color: Colors.black,
            ),
          ],
        ),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (b, constraints) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            height: 92,
                            width: 92,
                            decoration: BoxDecoration(
                                color: yellow,
                                shape: BoxShape.circle,
                                boxShadow: shadow,
                                border: Border.all(
                                    width: 8.0, color: Colors.white)),
                            child: Image.asset('assets/headphones.png'),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 72.0, vertical: 16.0),
                            child: Text(
                              'Boat Rockerz 350 On-Ear Bluetooth Headphones',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.only(right: 16.0),
                              child: Text(
                                '4.8',
                                style: TextStyle(fontSize: 48),
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                RatingBar(
//                      borderColor: Color(0xffFF8993),
//                      fillColor: Color(0xffFF8993),
                                  ignoreGestures: true,
                                  itemSize: 20,
                                  allowHalfRating: true,
                                  initialRating: 1,
                                  itemPadding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  ratingWidget: RatingWidget(
                                    empty: const Icon(Icons.favorite_border,
                                        color: Color(0xffFF8993), size: 20),
                                    full: const Icon(
                                      Icons.favorite,
                                      color: Color(0xffFF8993),
                                      size: 20,
                                    ),
                                    half: const SizedBox(),
                                  ),
                                  onRatingUpdate: (value) {
                                    setState(() {
                                      rating = value;
                                    });
                                    // ignore: avoid_print
                                    print(value);
                                  },
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 4.0),
                                  child: Text('from 25 people'),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 16.0),
                        child: Align(
                            alignment: Alignment(-1, 0),
                            child: Text('Recent Reviews')),
                      ),
                      Column(
                        children: <Widget>[
                          ...ratings
                              .map((val) => Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0))),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const Padding(
                                        padding: EdgeInsets.only(right: 16.0),
                                        child: CircleAvatar(
                                          maxRadius: 14,
                                          backgroundImage: AssetImage(
                                              'assets/background.jpg'),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  'Billy Holand',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  '10 am, Via iOS',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10.0),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8.0),
                                              child: RatingBar(
                                                ignoreGestures: true,
                                                itemSize: 20,
                                                allowHalfRating: true,
                                                initialRating: val.toDouble(),
                                                itemPadding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 4.0),
                                                ratingWidget: RatingWidget(
                                                  empty: const Icon(
                                                      Icons.favorite_border,
                                                      color: Color(0xffFF8993),
                                                      size: 20),
                                                  full: const Icon(
                                                    Icons.favorite,
                                                    color: Color(0xffFF8993),
                                                    size: 20,
                                                  ),
                                                  half: const SizedBox(),
                                                ),
                                                onRatingUpdate: (value) {
                                                  setState(() {
                                                    rating = value;
                                                  });
                                                  // ignore: avoid_print
                                                  print(value);
                                                },
                                              ),
                                            ),
                                            const Text(
                                              'Not as I expected! ... I`m really sad',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 16.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    '21 likes',
                                                    style: TextStyle(
                                                        color: Colors.grey[400],
                                                        fontSize: 10.0),
                                                  ),
                                                  const Text(
                                                    '1 Comment',
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10.0),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )))
                              .toList()
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
