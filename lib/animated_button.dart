
import 'dart:ui';
import 'package:flutter/material.dart';
import 'EaseInWidget.dart';

class AnimatedButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final IconData iconData;
  final double radius;
  final Color backgroundColor;

  const AnimatedButton(
      {required this.text,
      required this.iconData,
      required this.onTap,
      required this.radius,
      required this.backgroundColor})
      : super();

  @override
  Widget build(BuildContext context) {
    return EaseInWidget(
        onTap: onTap,
        child: Material(
            child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(radius),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12.withOpacity(0.1),
                          blurRadius: 12.0,
                          spreadRadius: 1)
                    ]),
                child: iconData != null
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                iconData,
                                color: Colors.white,
                              )),
                          Text(
                            text,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            /* style: Theme.of(context).textTheme.title!.copyWith(
                                  color: Colors.white,
                            ), */
                          ),
                        ],
                      )
                    : Text(
                        text,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ))));
  }
}
