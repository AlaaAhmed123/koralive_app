import 'package:flutter/material.dart';
import 'package:koralive/event_page.dart';
import 'package:koralive/goalstat.dart';
import 'package:koralive/statisctisc_page2.dart';
import 'package:koralive/statistics_model.dart';
import 'package:koralive/matchtile.dart';
import 'package:koralive/statistics_page.dart';
import 'api_manager.dart';
import 'matchstat.dart';
import 'soccermodel.dart';

class StatsMatch extends StatefulWidget {
  SoccerMatch allmatches;

  StatsMatch({this.allmatches});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StatsMatch_State();
  }
}

class StatsMatch_State extends State<StatsMatch>   with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);



  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            elevation: 0.0,
            title: Text(
              "SOCCER BOARD",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
          ),
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            Text(
              widget.allmatches.league.name_league,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              widget.allmatches.fixture.date.substring(0, 10),
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height /5,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      teamStat("Local Team", widget.allmatches.home.logoUrl,
                          widget.allmatches.home.name),
                      goalStat(
                          widget.allmatches.fixture.status.elapsedTime,
                          widget.allmatches.goal.home,
                          widget.allmatches.goal.away),
                      teamStat("Visitor Team", widget.allmatches.away.logoUrl,
                          widget.allmatches.away.name),
                    ],
                  ),
                ),

            ),
            TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.red,
              labelStyle: TextStyle(fontSize: 20),
              tabs: [
                Tab(

                  child: Text("STAT"),
                ),
                Tab(

                  child: Text("TimeLine"),
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  FutureBuilder(

                    future: SoccerApi(widget.allmatches.fixture.id)
                        .getMatche_Statistics(), //Here we will call our getData() method,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        //print((snapshot.data).length);
                        return StatisctiscPage2(snapshot.data);
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }, // here we will buil the app layout
                  ),
                  FutureBuilder(

                    future: SoccerApi(widget.allmatches.fixture.id)
                        .getMatche_Events(), //Here we will call our getData() method,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        //print((snapshot.data).length);
                        return EventPage(snapshot.data);
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }, // here we will buil the app layout
                  ),
                ],
                controller: _tabController,
              ),
            ),

          ])),
    );
  }
}
