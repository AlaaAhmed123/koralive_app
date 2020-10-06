class EventsMatch {
  //here we will see the different data
  //you will find every thing you need in the doc
  //I'm not going to use every data, just few ones

  Event event;

  Logo_Home logo_home;
  Logo_Away logo_away;
  EventsMatch(
      this.event,this.logo_home,this.logo_away);

  factory EventsMatch.fromJson(Map<String, dynamic> json) {
    return EventsMatch(
      Event.fromJson(json[0]["events"]),

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
class Event {

  Status status;
  Event( this.status);

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(Status.fromJson(json[0]));
  }
}
class Status {
  int elapsedTime;
  String long;
  Status(this.elapsedTime, this.long);

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(json['elapsed'], json['teamName']);
  }
}

