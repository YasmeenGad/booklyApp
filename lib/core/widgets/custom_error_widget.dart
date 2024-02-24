import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({required this.errorMessage});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "${errorMessage}",
        style: Styles.txtstyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
