import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/controllers/movie_controller.dart';



class Popup_netflix extends StatelessWidget {
   Popup_netflix({
    Key? key,
    required this.title,
    required this.review,
    required this.details,
    required this.image,
  }) : super(key: key);
  final String title;
  final String review;
  final String details;
  final String image;

  final MovieController _movieController =Get.put(MovieController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.defaultDialog(
            title: title,
            content: Column(mainAxisSize: MainAxisSize.min, children: [
              Text(
                review,
                style: const TextStyle(color: Colors.white54),
              ),
              Container(
                  width: 350,
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 240,
                        width: 170,
                        child: Image.asset(
                          image,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(details),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () { },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.play_arrow,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                  Text(
                                    'Play',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              )),
                          Container(
                              height: 50,
                              width: 70,
                              child: Column(
                                children: const [
                                  Icon(Icons.download),
                                  Text('Download',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ))
                                ],
                              )),
                          Container(
                              height: 50,
                              width: 70,
                              child: Column(
                                children: const [
                                  Icon(Icons.play_arrow),
                                  Text('Preview',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ))
                                ],
                              ))
                        ],
                      ),
                    ],
                  )),
            ]),
            radius: 10.0);
      },
      child:
      Container( padding: const EdgeInsets.only(left: 3, right: 3),
        width: 116,
        color: Colors.transparent,
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}