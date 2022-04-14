import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';

// import '../../misc/apiUrl.dart';
import '../../misc/constants.dart';

class Settings extends StatelessWidget {
  final width, height;
  const Settings({Key? key, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 10.0,
        sigmaY: 10.0,
      ),
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          width: width,
          height: height,
          child: Card(
            color: backgroundColor,
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.mapLocationDot,
                      color: Colors.blueGrey.shade900,size:70,
                    ),
                  ),
                  radius: width * 0.20,
                  backgroundColor: Colors.blueGrey.shade700,
                ),
                SizedBox(height: 15.0),
                Text(
                  "it will be a map to get location ",
                  style: DaysTextStyle.copyWith(fontSize: width * 0.08),
                ),
                SizedBox(height: 2.0),
                Text(
                  "set location",
                  style: SecondaryTextStyle.copyWith(fontSize: width * 0.05),
                ),
                SizedBox(height: 15.0),
                Divider(
                  color: secondaryTextColor2,
                  height: 5.0,
                  endIndent: width * 0.1,
                  indent: width * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        FontAwesomeIcons.accessibleIcon,
                        color: Color(0xffEA4335),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.locationCrosshairs,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.mapLocation,
                        color: Color(0xff0A66C2),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
