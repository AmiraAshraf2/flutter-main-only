import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xff2B475E),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 112,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 110,
                    backgroundImage: AssetImage("images/image.png"),
                  )),
              Text(
                'Enter Name',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                "Job",
                style: TextStyle(
                    color: Color(0xff6c8090),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Color(0xff6c8090),
                thickness: 1,
                indent: 60,
                endIndent: 60,
                height: 10,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 35,
                    color: Color(0xff2B475E),
                  ),
                  title: Text(
                    "(+20) phone number",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    size: 35,
                    color: Color(0xff2B475E),
                  ),
                  title: Text(
                    "examble@gmail.com",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              )
              /*
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  child: Container(
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Icon(
                            Icons.phone,
                            size: 35,
                            color: Color(0xff2B475E),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 22),
                          child: Text(
                            "(+20) phone number",
                            style: TextStyle(fontSize: 24),
                          ),
                        )
                      ],
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  child: Container(
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Icon(
                            Icons.mail,
                            size: 35,
                            color: Color(0xff2B475E),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 22),
                          child: Text(
                            "examble@gmail.com",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  )) */
            ],
          )),
    );
  }
}
