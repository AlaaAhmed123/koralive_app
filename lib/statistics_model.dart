class StatisticsMatch {
  //here we will see the different data
  //you will find every thing you need in the doc
  //I'm not going to use every data, just few ones

  Fixture Shots_on_Goal;
  Team Shots_off_Goal;
  Team Total_Shots;
  Goal Corner_Kicks;
  League Fouls;
  Offsides offsides;
  Ball_Possession Possession ;
  Yellow_Cards yellow_Cards;
  Red_Cards red_Cards;
  Total_passes total_passes;
  Passes_accurate  passes_accurate;
  Passes passes ;
  Logo_Home logo_home;
  Logo_Away logo_away;
  StatisticsMatch(
      this.Shots_on_Goal, this.Shots_off_Goal, this.Total_Shots, this.Corner_Kicks,
      this.Fouls, this.offsides,this.passes,this.passes_accurate,this.Possession,
      this.red_Cards, this.total_passes,this.yellow_Cards,this.logo_home,this.logo_away);

  factory StatisticsMatch.fromJson(Map<String, dynamic> json) {
    return StatisticsMatch(
      Fixture.fromJson(json["statistics"]['Shots on Goal']),
      Team.fromJson(json["statistics"]["Shots off Goal"]),
      Team.fromJson(json["statistics"]['Total Shots']),
      Goal.fromJson(json["statistics"]["Corner Kicks"]),
      League.fromJson(json["statistics"]["Fouls"]),
      Offsides.fromJson(json["statistics"]["Offsides"]),
      Passes.fromJson(json["statistics"]["Passes %"]),
      Passes_accurate.fromJson(json["statistics"]["Passes accurate"]),
      Ball_Possession.fromJson(json["statistics"]["Ball Possession"]),
      Red_Cards.fromJson(json["statistics"]["Red Cards"]),
      Total_passes.fromJson(json["statistics"]["Total passes"]),
      Yellow_Cards.fromJson(json["statistics"]["Yellow Cards"]),
      Logo_Home.fromJson(json["homeTeam"]),
      Logo_Away.fromJson(json["awayTeam"]),



    );
  }
}
class Logo_Home {

  String logo;

  Logo_Home( this.logo);

  factory Logo_Home.fromJson(Map<String, dynamic> json) {
    return Logo_Home(json['logo']);
  }
}
class Logo_Away {

  String logo;

  Logo_Away(this.logo);

  factory Logo_Away.fromJson(Map<String, dynamic> json) {
    return Logo_Away(json['logo']);
  }
}
class League {

  String home;
  String away;
  League( this.home,this.away);

  factory League.fromJson(Map<String, dynamic> json) {
    return League(json['home'],json["away"]);
  }
}
class Red_Cards  {

  String home;
  String away;
  Red_Cards ( this.home,this.away);

  factory Red_Cards .fromJson(Map<String, dynamic> json) {
    return Red_Cards (json['home'],json["away"]);
  }
}
class Yellow_Cards  {

  String home;
  String away;
  Yellow_Cards( this.home,this.away);

  factory Yellow_Cards.fromJson(Map<String, dynamic> json) {
    return Yellow_Cards(json['home'],json["away"]);
  }
}
class Offsides  {

  String home;
  String away;
  Offsides( this.home,this.away);

  factory Offsides.fromJson(Map<String, dynamic> json) {
    return Offsides(json['home'],json["away"]);
  }
}
class Ball_Possession {

  String home;
  String away;
  Ball_Possession( this.home,this.away);

  factory Ball_Possession.fromJson(Map<String, dynamic> json) {
    return Ball_Possession(json['home'],json["away"]);
  }
}class Total_passes  {

  String home;
  String away;
  Total_passes ( this.home,this.away);

  factory Total_passes .fromJson(Map<String, dynamic> json) {
    return Total_passes (json['home'],json["away"]);
  }
}class Passes_accurate  {

  String home;
  String away;
  Passes_accurate ( this.home,this.away);

  factory Passes_accurate .fromJson(Map<String, dynamic> json) {
    return Passes_accurate (json['home'],json["away"]);
  }
}

class Passes  {

  String home;
  String away;
  Passes ( this.home,this.away);

  factory Passes .fromJson(Map<String, dynamic> json) {
    return Passes (json['home'],json["away"]);
  }
}



//here we will store the fixture
class Fixture {
  String home;
  String away;
  Fixture ( this.home,this.away);


  factory Fixture.fromJson(Map<String, dynamic> json) {
    return Fixture(json['home'], json['away']);
  }
}

//here we will store the Status
class Status {
  String home;
  String away;
  Status ( this.home,this.away);

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(json['home'], json['away']);
  }
}

//here we will store the Team data
class Team {
  String home;
  String away;
  Team ( this.home,this.away);

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(json['home'], json['away']);
  }
}

//here we will store the Goal data
class Goal {
  String home;
  String away;
  Goal ( this.home,this.away);

  //Now we will create a factory method to copy the data from
  // the json file
  factory Goal.fromJson(Map<String, dynamic> json) {
    return Goal(json['home'], json['away']);
  }
}