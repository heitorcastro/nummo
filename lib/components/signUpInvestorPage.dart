import 'package:flutter/material.dart';
import 'package:nummo/util/login.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:nummo/util/header.dart';

class SignUpInvestorPage extends StatefulWidget {
  SignUpInvestorPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpInvestorPageState createState() => _SignUpInvestorPageState();
}

class _SignUpInvestorPageState extends State<SignUpInvestorPage> {

  @override
  Widget build(BuildContext context) {
    final heightScale = MediaQuery. of(context). size. height / 778;
    final widthScale = MediaQuery. of(context). size. width / 406;
    return Scaffold(
      body: Center(
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery. of(context). size. width,
                height: MediaQuery. of(context). size. height,
                color: Colors.white,
                //child: Image.asset("assets/images/main_back.png", fit: BoxFit.fill,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Header(
                          heightScale: heightScale,
                          widthScale: widthScale,
                        ),
                        SignUpInvestor(
                          heightScale: heightScale,
                          widthScale: widthScale,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 349 * widthScale, top: 35 * heightScale),
                  child: ImageButton(
                    children: <Widget>[],
                    width: 40.0 * widthScale,
                    height: 40.0 * heightScale,
                    pressedImage: Image.asset(
                      "assets/images/back.png",
                    ),
                    unpressedImage: Image.asset("assets/images/back.png"),
                    onTap: () => Navigator.pushNamed(context, '/home'),
                  )
              )
            ],
          )
      ),
    );
  }
}
