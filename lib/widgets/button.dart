import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? image;
  final double? width;
  const ButtonWidget({Key? key, this.onPressed, this.image, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.width * 0.2,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 10,
            primary: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: onPressed,
        child: Image.asset(
          image!,
          width: width ?? 60,
        ),
      ),
    );
  }
}
