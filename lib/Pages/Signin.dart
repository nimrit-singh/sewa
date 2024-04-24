import 'package:flutter/material.dart';

import 'package:sewa/Pages/Home/Responsive/mobilebody.dart';
import 'package:sewa/Pages/Home/Responsive/desktopbody.dart';
import 'package:sewa/Pages/Home/Responsive/responsive.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 26, 25, 25),
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: Color.fromARGB(255, 26, 25, 25),
        body: ResponsiveLayout(
          mobilebody: MobileBody(),
          desktopbody: DesktopBody(),
        ));
  }
}
/*
class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    return 
  }
}*/
/*
class BrandButton extends StatelessWidget {
  final String label;
  final double height;
  final Color backgroundColor;
  final Color textColor;

  final Icon? brandIcon;
  final Image? image;

  const BrandButton({
    Key? key,
    this.label = "Sign in with Apple",
    this.height = 48,
    this.backgroundColor = Colors.black,
    this.textColor = Colors.white,
    this.image,
    this.brandIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (image != null) image!,
            if (brandIcon != null) brandIcon!,
            SizedBox(width: 15),
            Text(
              label,
              style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  height: 1.41),
            )
          ],
        ),
      ),
    );
  }
}
*/
