import 'package:flutter/material.dart';
import 'package:koralive/goalstat.dart';
import 'package:koralive/matchtile.dart';
import 'package:koralive/statistics_model.dart';
import 'package:koralive/statsmatch.dart';
import 'api_manager.dart';
import 'matchstat.dart';
import 'soccermodel.dart';

Widget StatisctiscPage(List<dynamic> allmatches) {
  return Column(

    children: <Widget>[
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
           allmatches[0]["statistics"][0]["value"].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[0]["statistics"][0]["type"],
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[1]["statistics"][0]["value"].toString(),
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
            allmatches[0]["statistics"][1]["value"].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[0]["statistics"][1]["type"],
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[1]["statistics"][1]["value"].toString(),
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
            allmatches[0]["statistics"][2]["value"].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[0]["statistics"][2]["type"],
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[1]["statistics"][2]["value"].toString(),
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
            allmatches[0]["statistics"][6]["value"].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[0]["statistics"][6]["type"],
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[1]["statistics"][6]["value"].toString(),
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
            allmatches[0]["statistics"][7]["value"].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[0]["statistics"][7]["type"],
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[1]["statistics"][7]["value"].toString(),
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
            allmatches[0]["statistics"][8]["value"].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[0]["statistics"][8]["type"],
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[1]["statistics"][8]["value"].toString(),
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
            allmatches[0]["statistics"][9]["value"].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[0]["statistics"][9]["type"],
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[1]["statistics"][9]["value"].toString(),
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
            allmatches[0]["statistics"][10]["value"].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[0]["statistics"][10]["type"],
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[1]["statistics"][10]["value"].toString(),
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
            allmatches[0]["statistics"][11]["value"].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[0]["statistics"][11]["type"],
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[1]["statistics"][12]["value"].toString(),
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
            allmatches[0]["statistics"][12]["value"].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[0]["statistics"][12]["type"],
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[1]["statistics"][12]["value"].toString(),
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
            allmatches[0]["statistics"][13]["value"].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[0]["statistics"][13]["type"],
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[1]["statistics"][13]["value"].toString(),
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
            allmatches[0]["statistics"][14]["value"].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[0]["statistics"][14]["type"],
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[1]["statistics"][14]["value"].toString(),
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
            allmatches[0]["statistics"][15]["value"].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[0]["statistics"][15]["type"],
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            allmatches[1]["statistics"][15]["value"].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
        ],
      ),




    ],
  );
}