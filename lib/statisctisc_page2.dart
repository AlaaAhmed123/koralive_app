import 'package:flutter/material.dart';
import 'package:koralive/statistics_model.dart';

Widget StatisctiscPage2(List<StatisticsMatch> allmatches) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(

      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              allmatches[0].logo_home.logo,
              width: 30.0,
            ),
            Text(
              "TEAM STATS",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold
              ),
            ),
            Image.network(
              allmatches[0].logo_away.logo,
              width: 30.0,
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              allmatches[0].Shots_on_Goal.home.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
             "Shots on Goal",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              allmatches[0].Shots_on_Goal.away.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              allmatches[0].Shots_off_Goal.home.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              "Shots off Goal",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              allmatches[0].Shots_off_Goal.away.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              allmatches[0].Total_Shots.home.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              "Total Shots",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              allmatches[0].Total_Shots.away.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              allmatches[0].Fouls.home.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              "Total Shots",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              allmatches[0].Fouls.away.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              allmatches[0].Corner_Kicks.home.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              "Corner Kicks",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              allmatches[0].Corner_Kicks.away.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              allmatches[0].offsides.home.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              "Offsides",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              allmatches[0].offsides.away.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              allmatches[0].Possession.home.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              "Ball Possession",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              allmatches[0].Possession.away.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              allmatches[0].yellow_Cards.home.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              "Yellow Cards",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              allmatches[0].yellow_Cards.away.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              allmatches[0].red_Cards.home.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              "Red Cards",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              allmatches[0].red_Cards.away.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              allmatches[0].total_passes.home.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              "Total passes",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              allmatches[0].total_passes.away.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              allmatches[0].passes_accurate.home.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              "Passes accurate",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              allmatches[0].passes_accurate.away.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              allmatches[0].passes.home.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              "Passes %",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            Text(
              allmatches[0].passes.away.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ],
        ),




      ],
    ),
  );
}