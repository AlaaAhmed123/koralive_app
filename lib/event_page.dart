import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koralive/event_model.dart';
import 'package:koralive/statistics_model.dart';

Widget EventPage(Map<String,dynamic> allmatches) {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
          itemCount: allmatches.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                border: Border.all(
                  color: Colors.white,
                  width: 8,
                ),
                borderRadius: BorderRadius.circular(12),
              ),

              child:ListTile(
              title: Text(allmatches["events"][index]["teamName"].toString()),
              subtitle:Text(allmatches["events"][index]["player"].toString()) ,
                leading: Text(allmatches["events"][index]["elapsed"].toString()),
            )
            );
          }
      )
  );
}

