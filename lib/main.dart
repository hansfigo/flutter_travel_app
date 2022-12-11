import 'package:flutter/material.dart';
import 'app_style.dart';
import 'size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: mainBG,
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
  SizeConfig().init(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  height: 51,
                  width: 51,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage('assets/img/pfp.png'))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome Back',style: poppinsBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal!*4,
                      )),
                      SizedBox(
                        height: 2,
                      ),
                      Text('this date/time', style: poppinsRegular.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal!*3,
                        color: grey,
                      )),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: white,
                boxShadow: [
                  BoxShadow(
                    color: black.withOpacity(0.050),
                    offset: const Offset(0.0, 3.0),
                    blurRadius: 24,
                    spreadRadius: 0.0,
                  )
                ]
              ),
              child: Row(
                children: [
                  Expanded(child: TextField(
                    style: poppinsRegular.copyWith(
                      color: blue,
                      fontSize: SizeConfig.blockSizeHorizontal!*3,
                    ),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      hintText: 'Search for Article',
                      border: kBorder,
                      errorBorder: kBorder,
                      disabledBorder: kBorder,
                      focusedBorder: kBorder,
                      focusedErrorBorder: kBorder,
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
