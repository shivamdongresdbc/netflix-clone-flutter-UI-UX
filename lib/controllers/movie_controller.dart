
import 'package:get/get.dart';
import 'package:netflix/model/movie_model.dart';

class MovieController extends GetxController{

  RxList<movie> movieList = <movie>[
    movie(title: 'Hot tub time machine',
        description: 'It is an Comady movie which is based on three best friends vacation story',
        actors: [
          'a','b','c','d','e'
        ],
        director: 'Cristopher Nolan',
        reviews: [
          {'shivam':'good one'},
          {'godlebel':'epic'}
        ],
        rating: 7,
        video: 'https://www.youtube.com/results?search_query=hot+tub+time+machine+trailer',
        trailor: 'https://www.youtube.com/results?search_query=hot+tub+time+machine+trailer',
        poster: 'assets/images/frnds.jpg'
    ),

    movie(title: 'Rorschach',
        description: 'Luke Anthony is an NRI businessman in Dubai who goes to Kerala with his pregnant wife Sofia for a vacation. While travelling through the forest they have a road accident. Upon gaining consciousness, he finds Sofia is missing and reports it to the local police. The cops close the case, as they deduce that Sofia was killed by a tiger. Luke decides to find her on his own. Luke stumbles upon Balan, who asks him to purchase his house on the outskirts of the forest. He tells Luke that the house was owned by his elder son, Dilip Balan, who died in an accident, a few months ago.',
        actors: ['a,','b','c','d'],
        director: 'Nissam Basheer',
        reviews:  [{'shivam': 'This is a masterpiece all the way. The story is taken from a novel and the film adaptation has been on and of for decades sins cause of the financial side of it.'}],

        rating: 7.5,
        video: 'https://www.youtube.com/watch?v=oQcwLOFhfWU',
        trailor: 'https://www.youtube.com/watch?v=oQcwLOFhfWU',
        poster: 'assets/images/ror.jpg'
    ),

    movie
      (title: 'PS-1',
        description: 'During 10th century in Thanjavur, the Chola dynasty rules prosperously in South India, under the reign of Emperor Sundara Chozhar, whose sons Aditha Karikalan and Arulmozhi Varman aka Ponniyin Selvan are heading their conquests of Kanchi and Lanka, respectively for the empire. Sensing something is amiss with the courtiers, Aditha Karikalan sends his friend, the Vaanar Clans prince, Vallavaraiyan Vandiyadevan to investigate and relay the news to his sister Princess Kundavai and Sundara Chozhar subsequently.',
        actors: ['aishwarya rai','vikram'],
        director: 'Mani Ratnam',
        reviews: [{'shivam': 'This is a masterpiece all the way. The story is taken from a novel and the film adaptation has been on and of for decades sins cause of the financial side of it.'}],
        rating: 8.0,
        video: 'https://www.youtube.com/watch?v=2HbAWSIOY1s',
        trailor: 'https://www.youtube.com/watch?v=2HbAWSIOY1s',
        poster: 'assets/images/ps1.jpg')


  ].obs;
  void addmovie(movie newMovie){
    movieList.add(newMovie);
    update();
  }
}