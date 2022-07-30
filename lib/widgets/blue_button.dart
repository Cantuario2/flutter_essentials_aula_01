import 'package:flutter/material.dart';

class BlueButtonWidget extends StatelessWidget {
  const BlueButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  //final void Function()? onPressed;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
