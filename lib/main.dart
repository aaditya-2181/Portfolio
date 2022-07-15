import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:avatar_view/avatar_view.dart';

void main() {
  runApp(myApp());
}

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Portfolio"),
        ),

        // Bottom Side text
        // bottomNavigationBar: BottomAppBar(child: Text("Created by Aaditya")),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              // Upper part Image and Name is starting
              Row(
                children: [
                  AvatarView(
                    radius: 60,
                    borderColor: Colors.yellow,
                    avatarType: AvatarType.CIRCLE,
                    backgroundColor: Colors.red,
                    imagePath:
                        "https://drive.google.com/uc?export=view&id=14f6OyMvTMGpGo_aV3bCI69hrnHBCFJs7",
                    placeHolder: Container(
                      child: Icon(
                        Icons.person,
                        size: 50,
                      ),
                    ),
                    errorWidget: Container(
                      child: Icon(
                        Icons.error,
                        size: 50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Aaditya Dhiwer",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "App Devloper",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              // Upper part Image and Name is Ending
              SizedBox(
                height: 20,
              ),

              // Middle Body icons and text Starting
              Column(
                children: [
                  // Education section is starting
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.school,
                            size: 50,
                          ),
                        ),
                        Flexible(
                          child: Text(
                              "PT. Ram Sahay Mishra School, Mohba Bajar Raipur (C.G)",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                  // Education section is completed
                  // Project Section is Starting
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.local_post_office,
                            size: 50,
                          ),
                        ),
                        Flexible(
                          child: Text("My Projects",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                  // Project Section is completed

                  // Location section is Starting
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.location_city,
                            size: 50,
                          ),
                        ),
                        Flexible(
                          child: Text("Mohba Bajar Raipur (C.G)",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                  // Location section is Completed

                  // Email  section is Starting
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.email,
                            size: 50,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "aaditydhiwer218180@gmail.com",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  // Email section is Completed

                  // Phone Number section is  Starting
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.phone,
                            size: 50,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "+91 7415752664",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Text(
                      "We did collaborative design sprints to figure out how to increase bookings. This was one of the iterations that we made Finally, these were the results from our user-testing study",
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  )
                  // Phone Number section is Completed
                  ,
                  SizedBox(
                    height: 50,
                  ),

                  Text.rich(TextSpan(text: "Created by ", children: [
                    TextSpan(
                        text: "Aaditya",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16))
                  ]))
                ],
              ),
              // Here is definetion of who i am something lorem
            ],
          ),
        ),
      ),
    );
  }
}

// Main Application
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: homePage());
  }
}
