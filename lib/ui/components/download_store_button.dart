import 'package:flutter/material.dart';

class DownloadStoreButton extends StatelessWidget {
  bool appleDownload;
  DownloadStoreButton({Key? key, required this.appleDownload})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: Image.asset(
          appleDownload ? 'assets/AppStore@4x.png' : 'assets/GooglePlay@4x.png',
          fit: BoxFit.fitHeight,
        ));
  }
}
