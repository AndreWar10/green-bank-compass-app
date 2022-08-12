import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomIcon extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final icon;
  final Color color;
  final BuildContext context;
  final dynamic widget;
  final bool logout;
  bool showSaldo;
  final bool eye;

  CustomIcon({
    Key? key,
    this.icon,
    required this.color,
    this.widget,
    required this.context,
    required this.logout, required this.showSaldo, required this.eye,
  }) : super(key: key);

  @override
  State<CustomIcon> createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon> {
  @override
  Widget build(BuildContext context) {
    return 
    IconButton(
      
      icon: widget.eye?

      Icon(
         widget.showSaldo == false
                              ? Icons.visibility_off
                              : Icons.visibility,
        color: BaseColors().getWhiteColor(),
      ):
       Icon(
        widget.icon,
        color: BaseColors().getWhiteColor(),
      ),
      onPressed: () {
        if (widget.widget != null) {
          widget.logout
              ? [
                  FirebaseAuth.instance.signOut(),
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    '/myapp',
                    (route) => false,
                  ),
                ]
              : [
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => widget.widget,
                    ),
                  )
                ];
        }
        if (widget.eye){
          setState(() {
            widget.showSaldo = !widget.showSaldo;
          });
        }
      },
    );
  }
}
