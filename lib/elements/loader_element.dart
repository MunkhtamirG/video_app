import 'package:flutter/cupertino.dart';

Widget buildLoadingWidget() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 25,
          width: 25,
          child: CupertinoActivityIndicator(),
        )
      ],
    ),
  );
}
