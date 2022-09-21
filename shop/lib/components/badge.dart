import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final Widget child;
  final String valeu;
  final Color? color;

  const Badge({
    Key? key,
    required this.child,
    required this.valeu,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            constraints: const BoxConstraints(
              maxHeight: 16,
              minWidth: 16,
            ),
            child: Text(
              valeu,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        )
      ],
    );
  }
}
