import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutterapp/constants/constants.dart';
import 'package:flutterapp/screens/social_icons.dart';
import 'package:flutterapp/screens/starting_screen_textfields.dart';
import 'package:flutterapp/utilities/sizeconfig.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingScreen extends StatefulWidget {
  @override
  _StartingScreenState createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                      height: i == 0?MediaQuery.of(context).size.height / 1.24:MediaQuery.of(context).size.height / 1.02,
                      width: double.infinity,
                      color: Colors.white),
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kThemeColorPink,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.safeBlockHorizontal * 8,
                          right: SizeConfig.safeBlockHorizontal * 8,
                          top: SizeConfig.safeBlockVertical * 5),
                      child: i == 0
                          ? Text(
                              'Welcome!',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize:
                                      SizeConfig.safeBlockHorizontal * 10),
                            )
                          : Text(
                              'Hello!',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize:
                                      SizeConfig.safeBlockHorizontal * 10),
                            ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.safeBlockHorizontal * 6,
                        right: SizeConfig.safeBlockHorizontal * 6,
                        top: SizeConfig.safeBlockVertical * 18),
                    height: i == 0 ? SizeConfig.safeBlockVertical * 58 : null,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0, 10)),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      i = 0;
                                    });
                                  },
                                  child: Container(
                                    child: Text(
                                      'Login',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w600,
                                          color: i == 0
                                              ? kThemeColorPink
                                              : Colors.grey,
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  5),
                                    ),
                                    margin: EdgeInsets.only(
                                        top: SizeConfig.safeBlockVertical * 3,
                                        left:
                                            SizeConfig.safeBlockHorizontal * 6),
                                  ),
                                ),
                                Container(
                                  width: SizeConfig.safeBlockHorizontal * 14,
                                  height: SizeConfig.safeBlockVertical * 0.4,
                                  color:
                                      i == 0 ? kThemeColorPink : Colors.white,
                                  margin: EdgeInsets.only(
                                      top: SizeConfig.safeBlockVertical * 0.5,
                                      left: SizeConfig.safeBlockHorizontal * 6),
                                )
                              ],
                            ),
                            SizedBox(
                              width: SizeConfig.safeBlockHorizontal * 5,
                            ),
                            Column(
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      i = 1;
                                    });
                                  },
                                  child: Container(
                                    child: Text(
                                      'Signup',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w600,
                                          color: i == 1
                                              ? kThemeColorPink
                                              : Colors.grey,
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  5),
                                    ),
                                    margin: EdgeInsets.only(
                                        top: SizeConfig.safeBlockVertical * 3,
                                        left:
                                            SizeConfig.safeBlockHorizontal * 6),
                                  ),
                                ),
                                Container(
                                  width: SizeConfig.safeBlockHorizontal * 19,
                                  height: SizeConfig.safeBlockVertical * 0.4,
                                  color: i == 1 ? Colors.pink : Colors.white,
                                  margin: EdgeInsets.only(
                                      top: SizeConfig.safeBlockVertical * 0.5,
                                      left: SizeConfig.safeBlockHorizontal * 6),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 7,
                        ),
                        i == 1
                            ? Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  StartingScreenTextField(
                                    icon: Icon(
                                      Icons.account_circle,
                                      color: Colors.grey,
                                      size: SizeConfig.safeBlockHorizontal * 5,
                                    ),
                                    hint: 'First Name',
                                    onChange: (value) {},
                                    input: TextInputType.emailAddress,
                                  ),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 4,
                                  ),
                                  StartingScreenTextField(
                                    icon: Icon(
                                      Icons.account_circle,
                                      color: Colors.grey,
                                      size: SizeConfig.safeBlockHorizontal * 5,
                                    ),
                                    hint: 'Last Name',
                                    onChange: (value) {},
                                    input: TextInputType.emailAddress,
                                  ),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 4,
                                  ),
                                ],
                              )
                            : SizedBox(
                                height: SizeConfig.safeBlockVertical * 4,
                              ),
                        StartingScreenTextField(
                          icon: Icon(
                            Icons.mail,
                            size: SizeConfig.safeBlockHorizontal * 5,
                            color: Colors.grey,
                          ),
                          hint: 'Email',
                          onChange: (value) {},
                          input: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 4,
                        ),
                        StartingScreenTextField(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.grey,
                            size: SizeConfig.safeBlockHorizontal * 5,
                          ),
                          hint: 'Password',
                          onChange: (value) {},
                          input: TextInputType.visiblePassword,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 4,
                        ),
                        i == 1
                            ? StartingScreenTextField(
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.grey,
                                  size: SizeConfig.safeBlockHorizontal * 5,
                                ),
                                hint: 'Retype Password',
                                onChange: (value) {},
                                input: TextInputType.visiblePassword,
                              )
                            : Container(),
                        i == 0
                            ? Padding(
                                padding: EdgeInsets.only(
                                    right: SizeConfig.safeBlockHorizontal * 7),
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      'Forgot Password?',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.blue,
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  3.5),
                                    ),
                                  ),
                                ),
                              )
                            : Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 2,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            SizeConfig.safeBlockHorizontal * 7,
                                        right:
                                            SizeConfig.safeBlockHorizontal * 7),
                                    child: Container(
                                      width: double.infinity,
                                      height: SizeConfig.safeBlockVertical * 7,
                                      color: Colors.white,
                                      child: Center(
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text:
                                                    'By clicking \'submit\' you agree to our\n',
                                                style: GoogleFonts.montserrat(
                                                    fontSize: SizeConfig
                                                            .safeBlockHorizontal *
                                                        3.5,
                                                    color: Colors.blue),
                                              ),
                                              TextSpan(
                                                text: 'terms and conditions',
                                                style: GoogleFonts.montserrat(
                                                    decoration: TextDecoration
                                                        .underline,
                                                    fontSize: SizeConfig
                                                            .safeBlockHorizontal *
                                                        3.5,
                                                    color: Colors.blue),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 6,
                                  ),
                                ],
                              )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: i == 0
                        ? SizeConfig.safeBlockVertical * 2.7
                        : SizeConfig.safeBlockVertical * 0.1,
                    child: CircleAvatar(
                      child: InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          child: Icon(Icons.arrow_forward),
                          radius: SizeConfig.safeBlockHorizontal * 6.5,
                        ),
                      ),
                      radius: SizeConfig.safeBlockHorizontal * 8,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
              i==1?SizedBox(
                height: SizeConfig.safeBlockVertical*3,
              ):Container(),
              RichText(
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text:
                      '-OR-\n',
                      style: GoogleFonts.montserrat(
                          fontSize: SizeConfig
                              .safeBlockHorizontal *
                              3.5,
                          color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Sign In using Google or Facebook Accounts',
                      style: GoogleFonts.montserrat(
                          fontSize: SizeConfig
                              .safeBlockHorizontal *
                              3.5,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height:i==1? SizeConfig.safeBlockVertical * 5.5:SizeConfig.safeBlockVertical * 4.5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 7,
                      ),
                      SocialIcon(
                        path: 'assets/images/g.png',
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 7,
                      ),
                      SocialIcon(
                        path: 'assets/images/f.png',
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 7,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
