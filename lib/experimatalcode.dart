import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:netflix/video_player.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  newheader(header) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, left: 5, top: 10),
      alignment: Alignment.centerLeft,
      child: Text(
        header,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }


  ncontainer(poster) {
    return Container(
        margin: const EdgeInsets.only(right: 8),
        width: 120,
        height: 180,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(poster), fit: BoxFit.cover),),
        child: MaterialButton(
          onPressed: () {
            Get.defaultDialog(
              title: 'Promo',
              content: Container(
                width: 350,
                height: 150,
                padding: const EdgeInsets.all(0),
                child:const VideoccPlayer() ,
              ),
            );
          },
        ));
  }

  newrowline(i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ncontainer(i1),
          ncontainer(i2),
          ncontainer(i3),
          ncontainer(i4),
          ncontainer(i5),
          ncontainer(i6),
          ncontainer(i7),
          ncontainer(i8),
          ncontainer(i9),
          ncontainer(i10),
          ncontainer(i11),
          ncontainer(i12),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 230,
                    width: 384,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/carter.jpg',),
                            fit: BoxFit.cover)),
                    child: const VideoccPlayer(),
                  ),
                ],
              ),
              newheader('Tranding Now'),
              newrowline(
                  'assets/images/carter.jpg',
                  'assets/images/carter.jpg',
                  'assets/images/carter.jpg',
                  'assets/images/carter.jpg',
                  'assets/images/carter.jpg',
                  'assets/images/carter.jpg',
                  'assets/images/carter.jpg',
                  'assets/images/carter.jpg',
                  'assets/images/carter.jpg',
                  'assets/images/carter.jpg',
                  'images/action/thr gray man.jpg',
                  'images/action/brlin.jpg'),
              newheader("Popular On Netflix"),
              newrowline(
                  'images/cen.jpg',
                  'images/int.jpg',
                  'images/fc.jpg',
                  'images/life.jpg',
                  'images/def.jpg',
                  'images/anne.jpg',
                  'images/poster-stranger-things-netflix-wallpaper-preview.jpg',
                  'images/life.jpg',
                  'images/ext.jpg',
                  'images/life.jpg',
                  'images/life.jpg',
                  'images/life.jpg'),
              newheader('Recently Added'),
              newrowline(
                'images/action/thr gray man.jpg',
                'images/life.jpg',
                'images/action/viking.jpg',
                'images/action/Narcos_MexicoS2_Vertical_PRE_UK-600x889.webp',
                'images/anne.jpg',
                'images/poster-stranger-things-netflix-wallpaper-preview.jpg',
                'images/life.jpg',
                'images/int.jpg',
                'images/fc.jpg',
                'images/ext.jpg',
                'images/action/brlin.jpg',
                'images/action/misfire.jpg',
              ),
              newheader('Action'),
              newrowline(
                'images/action/Lucifer.jpg',
                'images/action/images.jpg',
                'images/action/misfire.jpg',
                'images/action/bring.jpg',
                'images/fc.jpg',
                'images/ext.jpg',
                'images/action/viking.jpg',
                'images/action/Narcos_MexicoS2_Vertical_PRE_UK-600x889.webp',
                'images/action/thr gray man.jpg',
                'images/action/viking.jpg',
                'images/action/Narcos_MexicoS2_Vertical_PRE_UK-600x889.webp',
                'images/action/thr gray man.jpg',
              ),
              newheader('Sci-Fi'),
              newrowline(
                  'images/action/viking.jpg',
                  'images/action/Narcos_MexicoS2_Vertical_PRE_UK-600x889.webp',
                  'images/action/thr gray man.jpg',
                  'images/int.jpg',
                  'images/fc.jpg',
                  'images/action/bring.jpg',
                  'images/fc.jpg',
                  'images/ext.jpg',
                  'images/ext.jpg',
                  'images/life.jpg',
                  'images/life.jpg',
                  'images/life.jpg'),
              newheader('Comedy'),
              newrowline(
                'images/int.jpg',
                'images/fc.jpg',
                'images/int.jpg',
                'images/fc.jpg',
                'images/action/bring.jpg',
                'images/fc.jpg',
                'images/ext.jpg',
                'images/ext.jpg',
                'images/life.jpg',
                'images/action/viking.jpg',
                'images/action/Narcos_MexicoS2_Vertical_PRE_UK-600x889.webp',
                'images/action/thr gray man.jpg',
              ),
            ],
          )),
    );
  }
}