import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:netflix/controllers/bottomNavigationBarController.dart';
import 'package:netflix/controllers/movie_controller.dart';
import 'package:netflix/model/movie_model.dart';
import 'package:netflix/widget/diffmoivecards.dart';
import 'package:netflix/widget/modelusingcards.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'constaint/constaint.dart';

class NetFlixWebApp extends StatefulWidget {
  const NetFlixWebApp({Key? key}) : super(key: key);

  @override
  State<NetFlixWebApp> createState() => _NetFlixWebAppState();
}

class _NetFlixWebAppState extends State<NetFlixWebApp> {
  final BNBController _bnbController = Get.put(BNBController());
  final MovieController _movieController =Get.put(MovieController());


  late YoutubePlayerController _controller;
  void runYoutubePlayer() {
    _controller = YoutubePlayerController(
        initialVideoId: gsmmotor,
        flags: const YoutubePlayerFlags(
          enableCaption: false,
          isLive: false,
          autoPlay: false,
        ));
  }

  @override
  void initState() {
    runYoutubePlayer();
    super.initState();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
        ),
        builder: (context, player) {
          return SafeArea(
            child: Scaffold(
              body: Obx(() => IndexedStack(
                      index: _bnbController.curruntIndex.value,
                      children: [
                        SingleChildScrollView(
                          child: Container(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          height: 615,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/netfliz_banner.jpg'),
                                          )),
                                        ),
                                        Container(
                                          decoration: const BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  stops: [
                                                0.7,
                                                1.0,
                                              ],
                                                  colors: [
                                                Colors.black12,
                                                Colors.black
                                              ])),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 45,
                                                      width: 45,
                                                      decoration: const BoxDecoration(
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  'assets/images/icon.png'),
                                                              fit: BoxFit
                                                                  .fitHeight)),
                                                    ),
                                                    Container(
                                                      width: 180,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .chromecast,
                                                            color: Colors.red,
                                                          ),
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .magnifyingGlass,
                                                            color: Colors.red,
                                                          ),
                                                          Container(
                                                            height: 25,
                                                            width: 25,
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                    image: AssetImage(
                                                                        'assets/images/profile.jpg'))),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 520,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Column(
                                                      children: const [
                                                        Icon(Icons.add),
                                                        Text('My List')
                                                      ],
                                                    ),
                                                    Container(
                                                      width: 85,
                                                      height: 35,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        color: Colors.white,
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: const [
                                                          Icon(
                                                            Icons.play_arrow,
                                                            size: 25,
                                                            color: Colors.black,
                                                          ),
                                                          Text(
                                                            'Play',
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Column(
                                                      children: const [
                                                        Icon(
                                                            Icons.info_outline),
                                                        Text('Info')
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ]),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      'Comedy',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 280,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount:
                                              movieCardsDisplayList1.length,
                                          itemBuilder:
                                              ( BuildContext, int index) {
                                            return movieCardsDisplayList1[
                                                index];
                                          }),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text(
                                      'Made in India',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 280,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount:
                                              movieCardsDisplayList2.length,
                                          itemBuilder: (BuildContext, int index) {
                                            return movieCardsDisplayList2[
                                                index];
                                          }),
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.black,
                        ),
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          color: Colors.blue,
                        ),
                Container(
                  height: 250,
                  child: Obx(
                          () =>ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _movieController.movieList.length,
                            itemBuilder: (BuildContext, int index){
                              return Popup_netflix(
                                  title: _movieController.movieList[index].title,
                                  review: _movieController.movieList[index].reviews[index].toString(),
                                  details: _movieController.movieList[index].description,
                                  image: _movieController.movieList[index].poster
                              );
                            }

                          )
                  ),
                )
                      ])),
              bottomNavigationBar: Obx(() => BottomNavigationBar(
                      onTap: _bnbController.changeIndex,
                      currentIndex: _bnbController.curruntIndex.value,
                      items: [
                        BottomNavigationBarItem(
                            label: 'Home', icon: FaIcon(FontAwesomeIcons.house)),
                        BottomNavigationBarItem(
                            label: 'Stream',
                            icon: FaIcon(FontAwesomeIcons.barsStaggered)),
                        BottomNavigationBarItem(
                            label: 'Download',
                            icon: FaIcon(FontAwesomeIcons.download)),
                        BottomNavigationBarItem(
                            label: 'Profile',
                            icon: Icon(CupertinoIcons.profile_circled)),
                      ])),
            ),
          );
        });
  }
}
