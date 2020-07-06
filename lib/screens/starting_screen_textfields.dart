import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/utilities/sizeconfig.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingScreenTextField extends StatelessWidget {
  Icon icon;
  String hint;
  Function onChange;
  TextInputType input;
  StartingScreenTextField({this.icon, this.hint, this.onChange,this.input});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(
          left: SizeConfig.safeBlockHorizontal * 7,
          right: SizeConfig.safeBlockHorizontal * 7),
      child: TextField(
        keyboardType: input,
        obscureText: input == TextInputType.visiblePassword?true:false,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0),
          prefixIcon: icon,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
            ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          labelText: hint,
          labelStyle: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig.safeBlockHorizontal * 3.5,
            color: Colors.grey,
          ),
        ),
        onChanged: onChange
      ),
    );
  }
}
