import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() {
  runApp(Blah());
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  buttonstate() {
    flag = !flag;
    setState(() {});
  }

  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: flag ? Colors.deepPurple : Colors.yellow,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          return buttonstate();
        },
        backgroundColor: flag ? Colors.redAccent : Colors.purple,
        label: Text(flag ? "DAY" : "NIGHT"),
        icon: Icon(flag
            ? MaterialCommunityIcons.weather_sunny
            : MaterialCommunityIcons.moon_waning_crescent),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Image(
                  image: NetworkImage(
                      "https://lh3.googleusercontent.com/yxCfo9mk8CVPEIiDy-EZD2648MSWqa2-bslF0cnPKWTZ-I6P5122qJ2eUYnOC1O2HqMO8ODo7tgJAsbxMTz6vP0JZ7QRvvttgvGdLmoG_SNIu8wCh73WsgATp1T4n_1OSJ1g1NZKz7k1oVffVSQv3FDM2XAPawnMn9BjHgajc_50mT05wsLOyH99TzNEkoFfPJmPGLZc4Yh0v5SmPtayIx_grXwAEHY8gcH4WXoVxqaZQLTsmXuQDZ6AD5f3bju15P4qswmveCjDrh2QFtpw4vJpeEm8g27OFkqiHQ7TD2QlMH5viyf6iQg3QlVjTWm6NeU_xMhwdzR0YHp-iYFkJUwLPuxE2kaBimbBGxPQZDjFinP-qjFpoSv3PQNN-izerkFGjoYlb2LL1AiGrAXRg8xjaJ9Gh6MhoE6Pm02oOD9VOruLXBMZ2GXvDTfhqa2fzcSQOHZhbXPJvNCG5VnaWjQ4pI3-wMK27oXMibPLRa7APblr_TtByAezl4EAwvHeRkKo5DSQESEl-lR5Gke0G9rMYnxklTYAsR_0Td8iwtQQFXtYE7wkPfC9mHLtHy8PIc3HTrONtcNwtP-LoU8x5iBa0FP9kIRrBTwjoQ2FnDH3D67toXpWmvKr6Cdn0d6vpt59ErB78b7ght9OYSN_eBg5WXavk-exbhuNFb7OIiEVB9vC5rUMNsp-yRS4Hg=w673-h896-no?authuser=0")),
              Text('Hey there!!I am Sandhra',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'monospace',
                      color: flag ? Colors.yellow : Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}

class Blah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Profile());
  }
}
