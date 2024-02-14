import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSallerListView extends StatelessWidget {
  const BestSallerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsData.testImage,
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[],
          )
        ],
      ),
    );
  }
}
