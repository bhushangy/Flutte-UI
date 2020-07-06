import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/utilities/sizeconfig.dart';

class SocialIcon extends StatelessWidget {
  String path;
  Function onT;
  SocialIcon({this.path,this.onT});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onT,
      child: Container(
        width: SizeConfig.safeBlockHorizontal*12,
          height: SizeConfig.safeBlockVertical*6,
          decoration:BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20,
                  offset: Offset(12, 15)
              ),
            ],
            border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(35),
              color: Colors.white,),
        child: CircleAvatar(backgroundColor: Colors.white,
          radius:SizeConfig.safeBlockHorizontal*2,
          child:Image(image: AssetImage(path)),
        ),
      ),
    );
  }
}
