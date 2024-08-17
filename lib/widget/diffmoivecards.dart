import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/video_player.dart';

List<MovieCardsDisplay> movieCardsDisplayList1 = [
  MovieCardsDisplay(image: 'assets/images/carter.jpg'),
  MovieCardsDisplay(image: 'assets/images/frnds.jpg'),
  MovieCardsDisplay(image: 'assets/images/image1.jpg'),
  MovieCardsDisplay(image: 'assets/images/image3.jpg'),
  MovieCardsDisplay(image: 'assets/images/image5.jpg'),
  MovieCardsDisplay(image: 'assets/images/image6.jpg'),
  MovieCardsDisplay(image: 'assets/images/narcos.jpg'),
  MovieCardsDisplay(image: 'assets/images/netfliz_banner.jpg'),
  MovieCardsDisplay(image: 'assets/images/resident_evil.jpg'),
  MovieCardsDisplay(image: 'assets/images/stranger_things.jpg'),
];

List<MovieCardsDisplay> movieCardsDisplayList2 = [
  MovieCardsDisplay(image: 'assets/images/image6.jpg'),
  MovieCardsDisplay(image: 'assets/images/narcos.jpg'),
  MovieCardsDisplay(image: 'assets/images/netfliz_banner.jpg'),
  MovieCardsDisplay(image: 'assets/images/resident_evil.jpg'),
  MovieCardsDisplay(image: 'assets/images/stranger_things.jpg'),
  MovieCardsDisplay(image: 'assets/images/carter.jpg'),
  MovieCardsDisplay(image: 'assets/images/frnds.jpg'),
  MovieCardsDisplay(image: 'assets/images/image1.jpg'),
  MovieCardsDisplay(image: 'assets/images/image3.jpg'),
  MovieCardsDisplay(image: 'assets/images/image5.jpg'),
  MovieCardsDisplay(image: 'assets/images/image6.jpg'),
];

class MovieCardsDisplay extends StatefulWidget {
  const MovieCardsDisplay({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;


  @override
  State<MovieCardsDisplay> createState() => _MovieCardsDisplayState();
}

class _MovieCardsDisplayState extends State<MovieCardsDisplay> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 8),
        width: 150,
        height: 350,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(widget.image), fit: BoxFit.cover),
        ),
        child: MaterialButton(
          onPressed: () {
            Get.defaultDialog(
              title: 'trailer',
              content: Container(
                width: 350,
                height: 150,
                padding: const EdgeInsets.all(0),
                child: const VideoccPlayer(),
              ),
            );
          },
        ));
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
//
// class Popup_netflix extends StatelessWidget {
//   const Popup_netflix({
//     Key? key,
//     required this.title,
//     required this.date,
//     required this.details,
//     required this.image,
//   }) : super(key: key);
//   final String title;
//   final String date;
//   final String details;
//   final String image;
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Get.defaultDialog(
//             title: title,
//             content: Column(mainAxisSize: MainAxisSize.min, children: [
//               Text(
//                 date,
//                 style: const TextStyle(color: Colors.white54),
//               ),
//               Container(
//                   width: 350,
//                   height: 450,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Container(
//                         height: 240,
//                         width: 170,
//                         child: Image.asset(
//                           image,
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                       Text(details),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           ElevatedButton(
//                               onPressed: () { },
//                               style: ElevatedButton.styleFrom(
//                                   backgroundColor: Colors.white),
//                               child: Row(
//                                 children: const [
//                                   Icon(
//                                     Icons.play_arrow,
//                                     color: Colors.black,
//                                     size: 20,
//                                   ),
//                                   Text(
//                                     'Play',
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 17,
//                                         fontWeight: FontWeight.w700),
//                                   )
//                                 ],
//                               )),
//                           Container(
//                               height: 50,
//                               width: 70,
//                               child: Column(
//                                 children: const [
//                                   Icon(Icons.download),
//                                   Text('Download',
//                                       style: TextStyle(
//                                         fontSize: 14,
//                                       ))
//                                 ],
//                               )),
//                           Container(
//                               height: 50,
//                               width: 70,
//                               child: Column(
//                                 children: const [
//                                   Icon(Icons.play_arrow),
//                                   Text('Preview',
//                                       style: TextStyle(
//                                         fontSize: 14,
//                                       ))
//                                 ],
//                               ))
//                         ],
//                       ),
//                     ],
//                   )),
//             ]),
//             radius: 10.0);
//       },
//       child:
//       Container( padding: const EdgeInsets.only(left: 3, right: 3),
//         width: 116,
//         color: Colors.transparent,
//         child: Image.asset(
//           image,
//           fit: BoxFit.fill,
//         ),
//       ),
//     );
//   }
// }