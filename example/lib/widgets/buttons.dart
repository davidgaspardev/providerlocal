import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String label;
  final Function() onClick;

  const Button({ 
    Key? key,
    required this.label,
    required this.onClick,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        width: 150,
        height: 100,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            decoration: TextDecoration.none,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}