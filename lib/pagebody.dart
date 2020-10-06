import 'package:flutter/material.dart';
import 'package:koralive/goalstat.dart';
import 'package:koralive/matchtile.dart';
import 'package:koralive/statsmatch.dart';
import 'api_manager.dart';
import 'matchstat.dart';
import 'soccermodel.dart';

Widget PageBody(List<SoccerMatch> allmatches) {
  return Column(
    children: [
      Text(
        allmatches[0].league.name_league==allmatches[1].league.name_league?"alaa":"doaa",
        style: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
        ),
      ),
      Text(
        allmatches[0].fixture.date.substring(0,10),
        style: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                teamStat("Local Team", allmatches[0].home.logoUrl,
                    allmatches[0].home.name),
                goalStat(allmatches[0].fixture.status.elapsedTime,
                    allmatches[0].goal.home, allmatches[0].goal.away),
                teamStat("Visitor Team", allmatches[0].away.logoUrl,
                    allmatches[0].away.name),
              ],
            ),
          ),
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  allmatches[0].league.name_league,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: allmatches.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        child:matchTile(allmatches[index]),
                        onTap: ()
                        {

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => StatsMatch(allmatches: allmatches[index],)),
                          );
                        },
                      );

                    },

                  ),
                )
              ],
            ),
          ),
        ),
      )
    ],
  );
}