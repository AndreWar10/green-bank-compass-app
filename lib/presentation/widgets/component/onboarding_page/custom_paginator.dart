import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomPaginator extends StatelessWidget {
  int page;
  final BoxShape shape;
  final Color coloridx;
  final Color colornotidx;
  final double height;
  final double width;
  final EdgeInsets margin;
  final int listgenerate;
  final MainAxisAlignment mainAxisAlignmentColumn;
  final EdgeInsets padding;
  final MainAxisAlignment mainAxisAlignmentRow;

  // ignore: use_key_in_widget_constructors
  CustomPaginator({
    required this.page,
    required this.shape,
    required this.coloridx,
    required this.colornotidx,
    required this.height,
    required this.width,
    required this.margin,
    required this.listgenerate,
    required this.mainAxisAlignmentColumn,
    required this.padding,
    required this.mainAxisAlignmentRow,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: mainAxisAlignmentRow,
        children: [
          Column(
            mainAxisAlignment: mainAxisAlignmentColumn,
            children: [
              Row(
                children: List.generate(
                  listgenerate,
                  (index) {
                    return Container(
                      margin: margin,
                      width: width,
                      height: height,
                      decoration: BoxDecoration(
                        color: index == page ? coloridx : colornotidx,
                        shape: shape,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
