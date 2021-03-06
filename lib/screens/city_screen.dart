import 'package:clima/utiliities/constant.dart';
import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 50.0,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: kInputDecoration,
                onChanged: (value) {
                  cityName = value;
                },
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, cityName);
              },
              child: const Text(
                'Get Weather',
                style: kButtonTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
