
import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  final String imageURl;
  final double height;
  final double width;
  const ProfileImageWidget({
    Key key,
    this.imageURl,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      height: height,
      width: width,
      child: Image(
        image: AssetImage(imageURl),
        fit: BoxFit.cover,
      ),
    );
  }
}
