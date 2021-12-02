import 'dart:ui';

import 'package:flutter/material.dart';

class ticketCard extends StatefulWidget {
  const ticketCard({Key? key}) : super(key: key);

  @override
  _ticketCardState createState() => _ticketCardState();
}

class _ticketCardState extends State<ticketCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {},
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // if you need this
            side: BorderSide(
              color: Colors.grey.withOpacity(0.6),
              width: 1,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            height: 250,
            child: Column(
              children: [
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage("assets/images/Messe.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    children: [
                      Text(
                        "FESTIVAL",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(Icons.date_range),
                          Text("11/02/2022"),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.timer),
                          Text("20H")
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.location_pin),
                    Text("Palais de la culture"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
