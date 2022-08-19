import 'package:flutter/material.dart';
import 'package:switch_button/switch_button.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool tempSwitch = true;
  bool windSwitch = true;
  bool timeSwitch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 40),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(children: [
                SizedBox(
                  width: 20,
                ),
                Image.network(
                  'https://images.unsplash.com/photo-1513152697235-fe74c283646a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1248&q=80',
                  height: 100,
                  width: 80,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text('Dag Huey Nguen',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Lorem ipsum'),
                  SizedBox(height: 20),
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                          left: 45,
                          right: 45,
                        ),
                        child: Text(
                          'SIGN OUT',
                          style: TextStyle(
                            color: Color(0xfff44336),
                          ),
                        ),
                      )),
                ])
              ]),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 35,
                ),
                Text('Settings',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    )),
                SwitchButton(
                  activeColor: Colors.green,
                  borderRadius: 0,
                  value: tempSwitch,
                  onToggle: (val) {
                    setState(() {
                      tempSwitch = val;
                    });
                  },
                  child: Text("Temperature"),
                ),
                SwitchButton(
                  activeColor: Colors.green,
                  borderRadius: 0,
                  value: windSwitch,
                  onToggle: (val) {
                    setState(() {
                      windSwitch = val;
                    });
                  },
                  child: Text("Wind Speed"),
                ),
                SwitchButton(
                  activeColor: Colors.green,
                  borderRadius: 0,
                  value: timeSwitch,
                  onToggle: (val) {
                    setState(() {
                      timeSwitch = val;
                    });
                  },
                  child: Text("24-Hour Time"),
                ),
                SizedBox(height: 20),
                Text('About'),
                SizedBox(height: 10),
                Text(
                  'Version 1.0.9 Desktop',
                ),
                Text(
                  'Authors: Group 20 - UI Design Course',
                ),
                Text(
                  'Weather Details powered by: Dark API',
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
