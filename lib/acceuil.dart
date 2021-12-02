import 'package:flutter/material.dart';
import 'package:tick/ticketCard.dart';

class Acceuil extends StatefulWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  _AcceuilState createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = size.width / 2;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                width: MediaQuery.of(context).size.width,
                height: 250,
              ),
              Container(
                // height: 200,
                child: GridView.count(
                  childAspectRatio: (itemWidth / itemHeight),
                  controller: new ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  children: [
                    ticketCard(),
                    ticketCard(),
                    ticketCard(),
                    ticketCard(),
                    ticketCard(),
                    ticketCard(),
                    ticketCard(),
                    ticketCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
