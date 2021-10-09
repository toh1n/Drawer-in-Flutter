import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

     final urlImage = 'images/hd.jpg';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: CircleAvatar(
                          foregroundImage: AssetImage(urlImage),
                        ),
                      ),
                      SizedBox(
                        height: 47,
                        child: Text(
                          "Mazharul Islam",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Profile",
                    ),
                  ],
                ),
                leading: Icon(
                  Icons.person_rounded,
                ),
                onTap: (){},
              ),
              ListTile(
                title: Text(
                  "Messages",
                ),
                leading: Icon(
                  Icons.message_outlined,
                ),
                onTap: (){},
              ),
              ListTile(
                title: Text(
                  "Activity",
                ),
                leading: Icon(
                  Icons.stacked_line_chart_rounded,
                ),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                title: Text("List"),
                leading: Icon(
                  Icons.list,
                ),
                onTap: (){},
              ),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Reports",
                    ),
                  ],
                ),
                leading: Icon(
                  Icons.bug_report_outlined,
                ),
                onTap: (){},
              ),
              ListTile(
                title: Text(
                  "Statistic",
                ),
                leading: Icon(
                  Icons.stacked_bar_chart,
                ),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Share",
                ),
                leading: Icon(
                  Icons.share,
                ),
                onTap: (){},
              ),
              ListTile(
                title: Text("Help"),
                leading: Icon(
                  Icons.help_center_outlined,
                ),
                onTap: (){},
              ),
              ListTile(
                title: Text("Sign Out"),
                leading: Icon(
                  Icons.login_outlined,
                ),
                onTap: (){},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Home Screen"),
          // leading: const Icon(Icons.menu),
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  color: Colors.blue,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20,20,20,20),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 250,
                          width: 450,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 160,
                                width: 140,
                                child: CircleAvatar(
                                  foregroundImage: AssetImage(urlImage),
                                ),
                              ),

                              Text(
                                "Mazharul Islam Tohin",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Email : example@gmail.com",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Phone : +8801800000000",
                                style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}