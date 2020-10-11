import 'package:flutter/material.dart';
import 'package:nummo/util/bottomButtons.dart';
import 'package:nummo/util/buttons.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:nummo/util/header.dart';

class NotInvestorPage extends StatefulWidget {
  NotInvestorPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _NotInvestorPageState createState() => _NotInvestorPageState();
}

class _NotInvestorPageState extends State<NotInvestorPage> {

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
                        Container(
                            height: 343 * heightScale,
                            width: 332 * widthScale,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  height: 42 * heightScale,
                                  width: 332 * widthScale,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(0xff, 0x80, 0x1d, 0x40),
                                      borderRadius: BorderRadius.all(Radius.circular(4 * heightScale)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 15 * heightScale,
                                            spreadRadius: -10 * widthScale,
                                            offset: Offset(0, 5 * heightScale)
                                        ),
                                      ]
                                  ),
                                  child: Center(
                                    child: Text("Investimentos", style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                                Container(
                                  height: 5 * heightScale,
                                ),
                                Container(
                                    height: 216 * heightScale,
                                    width: 332 * widthScale,
                                    padding: EdgeInsets.only(left: 32.31 * widthScale, right: 32.31),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(4 * heightScale)),
                                      border: Border.all(color: Color.fromARGB(0xff, 0xA2, 0x3B, 0x60)),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 15 * heightScale,
                                            spreadRadius: -10 * widthScale,
                                            offset: Offset(0, 5 * heightScale)
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 40 * heightScale,
                                        ),
                                        Text("Você ainda não possui"),
                                        Text("cadastro de investidor."),
                                        Container(
                                          height: 34 * heightScale,
                                        ),
                                        SignUpInvestorButton(
                                          heightScale: heightScale,
                                          widthScale: widthScale,
                                        )
                                      ],
                                    )
                                ),
                              ],
                            )
                        ),
                        Container(
                          height: 59 * heightScale,
                        ),
                        BottomButtons(
                          heightScale: heightScale,
                          widthScale: widthScale,
                        )
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