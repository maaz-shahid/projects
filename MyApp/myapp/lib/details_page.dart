import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String details;

  DetailsPage(
    {@required this.imagePath,
     @required this.title,
     @required this.details,});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30), 
                    bottomRight: Radius.circular(30),
                    ),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                     ),
                ),
              ),
            ),
            Container(
              height: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                      Text(
                        title, 
                        style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                       Text(
                        details, 
                        style: TextStyle(
                        color: Colors.grey,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                      ),

                    SizedBox(height: 10),

                      Row(
                        children: <Widget>[
                          Expanded(
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              padding: EdgeInsets.symmetric(vertical: 15),
                              color: Colors.cyan,
                               child: Text(
                                 'Back', 
                                 style: TextStyle(
                                color: Colors.white,
                                  ),
                                 ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                              
                            ),
                             Expanded(
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              padding: EdgeInsets.symmetric(vertical: 15),
                              color: Colors.cyan,
                               child: Text(
                                 'Love', 
                                 style: TextStyle(
                                color: Colors.white,
                                  ),
                                 ),
                              ),
                            ),
                        ],
                      ),
                    ],
                    ),
                  ),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}