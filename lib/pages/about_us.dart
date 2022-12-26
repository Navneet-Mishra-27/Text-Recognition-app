import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('AboutUs'),
      centerTitle: true,
      backgroundColor: Colors.red,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    body: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(40),
          child: Text(
            "Because we start with Why, we tend to view extraordinary success a little differently. While its easy to fall into the trap of believing your product and your customers needs overlap completely, that is not always the case. In these situations we go above and beyond to deliver the customers vision for their organization. We look forward to working with your team and understanding how our intelligent automation can help your organization achieve the success you are looking for.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    ),
  );
}
