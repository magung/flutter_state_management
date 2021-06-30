import 'package:belajar_state_management/blocs/application_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Consumer<ApplicationColor>(
          builder: (context, applicationColor, _) => Text(
            "Belajar State Management",
            style: TextStyle(color: applicationColor.color),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ApplicationColor>(
              builder: (context, applicationColor, _) => AnimatedContainer(
                  height: 100,
                  width: 100,
                  color: applicationColor.color,
                  duration: Duration(milliseconds: 500)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("AB"),
                  margin: EdgeInsets.all(5),
                ),
                Consumer<ApplicationColor>(
                    builder: (context, applicationColor, _) => Switch(
                        value: applicationColor.isLightBlue,
                        onChanged: (newValue) {
                          applicationColor.isLightBlue = newValue;
                        })),
                Container(
                  child: Text("LB"),
                  margin: EdgeInsets.all(5),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
