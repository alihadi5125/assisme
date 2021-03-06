import 'dart:async';
import 'package:assisme/Screens/SignInScreen.dart';
import 'package:assisme/Screens/Signup_Category.dart';
import 'package:assisme/Screens/Signup_employer.dart';
import 'package:assisme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpEmployer_final extends StatefulWidget {
  @override
  _SignUpEmployer_finalState createState() => _SignUpEmployer_finalState();
}

class _SignUpEmployer_finalState extends State<SignUpEmployer_final> {

  String _profileName="James A.";
  double ContainerHeight=SizeConfig.heightMultiplier*15;
  double ContainerWidth=SizeConfig.widthMultiplier*200;
  double profileContainerWidth =SizeConfig.widthMultiplier*30;
  double profileContainerHeight= SizeConfig.heightMultiplier*33;

  Timer _timer;
  _AnimatedNotifcationContainer() {
    _timer = new Timer(const Duration(seconds: 2), () {
      setState(() {
        ContainerHeight=SizeConfig.heightMultiplier*15;
        ContainerWidth=SizeConfig.widthMultiplier*200;
      });
    });
  }

  _AnimatedProfile() {
    _timer = new Timer(const Duration(seconds: 2), () {
      setState(() {
        profileContainerWidth =SizeConfig.widthMultiplier*30;
        profileContainerHeight= SizeConfig.heightMultiplier*33;
      });
    });
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                  width: SizeConfig.widthMultiplier * 200,
                  height: SizeConfig.heightMultiplier * 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xffFFB843),
                        const Color(0xffF3CE69),
                      ], // red to yellow// repeats the gradient over the canvas
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: SizeConfig.widthMultiplier*6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(

                          width: SizeConfig.widthMultiplier*10,
                          height: SizeConfig.heightMultiplier*10,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen_employer()));
                            },
                            child: Icon(
                                Icons.arrow_back
                            ),
                          ),

                        ),

                        Container(
                          // color: Colors.red,
                          width: SizeConfig.widthMultiplier*30,
                          height: SizeConfig.heightMultiplier*10,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Back",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF393733)
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ),

              Container(
                margin: EdgeInsets.only(top: SizeConfig.heightMultiplier * 18),
                decoration: new BoxDecoration(
                  color: Color(0xFF393733),
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(40.0),
                    topRight: const Radius.circular(40.0),
                  ),
                ),
                child: Theme(
                  data: Theme.of(context).copyWith(
                      accentColor: Color(0xFFffFBB034)
                  ),
                  child: ListView(
                    padding: EdgeInsets.only(
                        left: SizeConfig.widthMultiplier * 8,
                        right: SizeConfig.widthMultiplier * 8,
                        top: SizeConfig.heightMultiplier * 12
                    ),
                    children: [
                      Center(child: Text("Welcome", style: GoogleFonts.robotoMono(
                        fontSize: 20,
                        color: Color(0xFFE8E4E4),
                      ),)),
                      Center(child: Text(_profileName, style: GoogleFonts.robotoMono(
                        fontSize: 20,
                        color: Color(0xFFFBB034),
                      ),)),
                      Center(child: Text("Company Name", style: GoogleFonts.robotoMono(
                        fontSize: 20,
                        color: Color(0xFFFFDA75),
                      ),)),
                      SizedBox(
                        height: SizeConfig.heightMultiplier*6,
                      ),

                      textField("Password"),
                      SizedBox(
                        height: SizeConfig.heightMultiplier*2,
                      ),
                      textField("Confirm Password"),









                      Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.widthMultiplier * 10,
                            right: SizeConfig.widthMultiplier * 10,
                            top: SizeConfig.heightMultiplier * 5),
                        child: Container(
                          height: SizeConfig.heightMultiplier * 7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                const Color(0xffFFDA75),
                                const Color(0xffFBB034),
                              ], // red to yellow// repeats the gradient over the canvas
                            ),
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    "Continue",
                                    style: GoogleFonts.robotoMono(fontSize: 20),
                                  ),
                                )
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top:SizeConfig.heightMultiplier*3, bottom: SizeConfig.heightMultiplier*2),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: SizeConfig.heightMultiplier*2,
                child: Container(
                  width:SizeConfig.isMobilePortrait? SizeConfig.widthMultiplier*100:SizeConfig.widthMultiplier*200,
                  height: SizeConfig.heightMultiplier*33,
                  //color: Colors.red.withOpacity(.3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            _AnimatedProfile();
                            setState(() {
                              profileContainerWidth =SizeConfig.widthMultiplier*24;
                              profileContainerHeight= SizeConfig.heightMultiplier*26;

                            });
                          },
                          child: AnimatedContainer(

                            width: profileContainerWidth,
                            height: profileContainerHeight,
                            decoration: BoxDecoration(
                              // color: Colors.red,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('images/profile.png'),

                                )
                            ),
                            duration: Duration(seconds: 1),
                            curve: Curves.elasticOut,
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget textField(String text) {
    return Container(
      width: SizeConfig.widthMultiplier * 200,
      height: SizeConfig.heightMultiplier * 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xffF2EFEF),
            const Color(0xffC5C3C3),
          ],
          // red to yellow// repeats the gradient over the canvas
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
        child: Row(
          children: [
            Icon(Icons.email),
            VerticalDivider(
              width: 10,
              thickness: 2,
              color: Colors.black,
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 5,
            ),
            Expanded(
              child: TextFormField(
                textAlign: TextAlign.values[4],
                decoration: InputDecoration(
                  hintText: text,
                  hintStyle: GoogleFonts.robotoMono(color: Colors.black),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
Widget textField(String text) {
  return Container(
    width: SizeConfig.widthMultiplier * 200,
    height: SizeConfig.heightMultiplier * 8,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xffF2EFEF),
          const Color(0xffC5C3C3),
        ],
        // red to yellow// repeats the gradient over the canvas
      ),
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
      child: Row(
        children: [
          Icon(Icons.email),
          VerticalDivider(
            width: 10,
            thickness: 2,
            color: Colors.black,
          ),
          SizedBox(
            width: SizeConfig.widthMultiplier * 5,
          ),
          Expanded(
            child: TextFormField(
              textAlign: TextAlign.values[4],
              decoration: InputDecoration(
                hintText: text,
                hintStyle: GoogleFonts.robotoMono(color: Colors.black),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
class design extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height);
    path_0.lineTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height);
    path_0.quadraticBezierTo(size.width * 0.97, size.height * 0.70,
        size.width * 0.85, size.height * 0.70);
    path_0.cubicTo(size.width * 0.66, size.height * 0.69, size.width * 0.34,
        size.height * 0.69, size.width * 0.15, size.height * 0.70);
    path_0.quadraticBezierTo(
        size.width * 0.03, size.height * 0.70, 0, size.height);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
