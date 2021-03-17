import 'package:cardtaskttwo/widgets/dailyActivity_card.dart';
import 'package:cardtaskttwo/widgets/navigation_button_card.dart';
import 'package:cardtaskttwo/widgets/todayactivity_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "UserName",
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  headerText(),
                  Icon(
                    Icons.search,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              headerContainer(context),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Todays's Activity",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        "Details",
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              todaycardContainer(),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Daily Activity",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        "Details",
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              dailyCardContainer(),
              SizedBox(height: 30.0),
              navigationCardContainer()
            ],
          ),
        ),
      ),
    );
  }

  Container navigationCardContainer() {
    return Container(
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationButtonCard(Icons.home, "Home", -6.0),
          NavigationButtonCard(Icons.local_activity, "Activity", 6.0),
          NavigationButtonCard(Icons.settings, "Settings", 6.0),
          NavigationButtonCard(Icons.person, "Profile", 6.0),
        ],
      ),
    );
  }

  SingleChildScrollView dailyCardContainer() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DailyActivityCard("MON", "08"),
          SizedBox(
            width: 20.0,
          ),
          DailyActivityCard("TUE", "07"),
          SizedBox(
            width: 20.0,
          ),
          DailyActivityCard("WED", "06"),
          SizedBox(
            width: 20.0,
          ),
          DailyActivityCard("THU", "05"),
          SizedBox(
            width: 20.0,
          ),
          DailyActivityCard("FRI", "04"),
        ],
      ),
    );
  }

  SingleChildScrollView todaycardContainer() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TodayActivityCard(Icons.run_circle_outlined, "STEPS", "1,228"),
          SizedBox(
            width: 20.0,
          ),
          TodayActivityCard(Icons.healing_outlined, "CALORIES", "829"),
          SizedBox(
            width: 20.0,
          ),
          TodayActivityCard(Icons.burst_mode_sharp, "BPM", "888"),
        ],
      ),
    );
  }

  Stack headerContainer(context) {
    return Stack(
      children: [
        Container(
          height: 200.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100.0),
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/images/squats.png",
                width: 180,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Legs ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                            ),
                          ),
                          TextSpan(
                            text: "And ",
                            style: TextStyle(
                              color: Colors.white.withOpacity(.4),
                              fontSize: 25.0,
                            ),
                          ),
                          TextSpan(
                            text: "\nGlutes ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                            ),
                          ),
                          TextSpan(
                            text: "workout",
                            style: TextStyle(
                              color: Colors.white.withOpacity(.4),
                              fontSize: 25.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.next_plan,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Advanced",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.lock_clock,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "45 Min",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 20.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.5),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text(
                          "Start Workout",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  RichText headerText() {
    double fontSize = 25.0;
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Find A",
            style: TextStyle(
              color: Colors.black,
              fontSize: fontSize,
            ),
          ),
          TextSpan(
            text: " Workout",
            style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }
}
