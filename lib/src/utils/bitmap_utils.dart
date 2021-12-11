import 'dart:io';

import 'package:plugintest/src/utils/media_abstract_utils.dart';
import 'package:plugintest/src/utils/resource_image_provider.dart';
import 'package:flutter/material.dart';

class BitmapUtils extends MediaUtils {
  /// FACTORY METHODS *********************************************

  factory BitmapUtils() => _instance;

  @visibleForTesting
  BitmapUtils.private();

  static final BitmapUtils _instance = BitmapUtils.private();

  /// FACTORY METHODS *********************************************

  @override
  ImageProvider getFromMediaAsset(String mediaPath) {
    return AssetImage(cleanMediaPath(mediaPath));
  }

  @override
  ImageProvider getFromMediaFile(String mediaPath) {
    return FileImage(File(cleanMediaPath(mediaPath)));
  }

  @override
  ImageProvider getFromMediaNetwork(String mediaPath) {
    return NetworkImage(mediaPath);
  }

  @override
  ImageProvider getFromMediaResource(String mediaPath) {
    return ResourceImage(mediaPath);
  }
}
