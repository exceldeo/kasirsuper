import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_share/flutter_share.dart';

class ShareHelper {
  ShareHelper._();

  static Future<void> shareImage(
    BuildContext context,
    Uint8List image,
    String referenceId,
  ) async {
    final directory = await getApplicationDocumentsDirectory();
    final imagePath = await File('${directory.path}/$referenceId.png').create();

    await FlutterShare.shareFile(
      title: 'Example share',
      text: 'I have shared a file with you!',
      filePath: imagePath.path,
    );
  }
}
