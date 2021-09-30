import 'package:flutter/material.dart';
import 'package:line_leap_example/ui/components/phone_blob_.dart';
import 'package:line_leap_example/ui/global/global_variables.dart';

import 'download_app_description_view.dart';

class DownloadtheApp extends StatelessWidget {
  const DownloadtheApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            height: 1000,
            child: PhoneBlob(),
          )),
          Expanded(
              child: Container(
                  alignment: Alignment.center,
                  height: 1000,
                  child: DownloadTheAppDescriptionArea())),
          SizedBox(
            width: 150,
          )
        ],
      ),
    );
  }
}
