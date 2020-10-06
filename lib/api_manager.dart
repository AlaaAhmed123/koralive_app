import 'dart:convert';

import 'package:http/http.dart';
import 'package:koralive/event_model.dart';
import 'package:koralive/soccermodel.dart';

import 'statistics_model.dart';

class SoccerApi {
  static int match_id;
  int id;
  SoccerApi(this.id);
  final String apiUrlfixtures="https://v3.football.api-sports.io/fixtures?season=2020&league=39";

      //"https://api-football-beta.p.rapidapi.com/fixtures?date=2020-09-30";



  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    //"api-football-beta.p.rapidapi.com",



    //Always make sure to check the api key and the limit of a request in a free api
    'x-rapidapi-key':"ea0792ba87503bfaa2d30911f0c05d5e"
    //"a12acb8674msh9ae783aef0c9c88p1582f6jsna03ec57b2bb8",


  };

  //Now we will create our method
  //but before this we need to create our model

  //Now we finished with our Model
  Future<List<SoccerMatch>> getAllMatches() async {
    Response res = await get(apiUrlfixtures, headers: headers);
    var body;

    if (res.statusCode == 200) {
      // this mean that we are connected to the data base
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['response'];
      //print("Api service: ${body}"); // to debug
      List<SoccerMatch> matches = matchesList
          .map((dynamic item) => SoccerMatch.fromJson(item))
          .toList();
   //  print(matchesList);
      return matches;
    }
    else
      print("alaa");
  }
  Future<List<StatisticsMatch>>  getMatche_Statistics() async {
    match_id=id;
    final String apiUrlstatistics="https://v2.api-football.com/fixtures/id/$match_id";
    //"https://api-football-beta.p.rapidapi.com/fixtures/statistics?fixture=37899";

    Response res = await get(apiUrlstatistics, headers: headers);
    var body;

    if (res.statusCode == 200) {
      // this mean that we are connected to the data base
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['api']['fixtures'];
      //List<dynamic> matchesList = body['api']["fixtures"];
      List<StatisticsMatch> matches = matchesList
          .map((dynamic item) => StatisticsMatch.fromJson(item))
          .toList();
      //  print(matchesList);
      return matches;


    }
    else
      print("alaa");
  }
  Future<Map<String,dynamic>>  getMatche_Events() async {
    match_id=id;
    final String apiUrlstatistics="https://v2.api-football.com/fixtures/id/$match_id";
    //"https://api-football-beta.p.rapidapi.com/fixtures/statistics?fixture=37899";

    Response res = await get(apiUrlstatistics, headers: headers);
    var body;

    if (res.statusCode == 200) {
      // this mean that we are connected to the data base
      body = jsonDecode(res.body);
      Map<String,dynamic> matchesList = body['api']['fixtures'][0];
      print("Api service: ${matchesList}"); // to debug

      //  print(matchesList);
      return matchesList;
      //  print(matchesList);
    //  return matches;


    }
    else
      print("alaa");
  }

}
