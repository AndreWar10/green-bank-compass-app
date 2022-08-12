import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtonCompartilhar extends StatefulWidget {
  final String titulo;
  final double fontSize;
  bool isLoading;
  final Function printScreen;

  CustomButtonCompartilhar({
    Key? key,
    required this.titulo,
    required this.fontSize,
    required this.printScreen,
    required this.isLoading,
  }) : super(key: key);

  @override
  State<CustomButtonCompartilhar> createState() =>
      _CustomButtonCompartilharState();
}

class _CustomButtonCompartilharState extends State<CustomButtonCompartilhar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.08,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(18)),
          backgroundColor:
              MaterialStateProperty.all<Color>(BaseColors().getGreenColor()),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder()),
        ),
        child: widget.isLoading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Compartilhando... ',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ],
              )
            : Text(
                widget.titulo,
                style: TextStyle(
                  color: BaseColors().getWhiteColor(),
                  fontSize: widget.fontSize,
                ),
              ),
        onPressed: () {
          setState(() {
            widget.isLoading = true;
          });
          Future.delayed(Duration(seconds: 3), () {
            setState(() {
              widget.isLoading = false;
            });
          });
          widget.printScreen();
        },
      ),
    );
  }
}
