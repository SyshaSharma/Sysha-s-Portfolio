import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class AssetHelper {
  /// Build an image widget that works on all platforms with proper error handling
  static Widget buildImage(String assetPath, {
    double? height,
    double? width,
    BoxFit? fit,
  }) {
    try {
      return Image.asset(
        assetPath,
        height: height,
        width: width,
        fit: fit,
        errorBuilder: (context, error, stackTrace) {
          return _defaultErrorBuilder(context);
        },
      );
    } catch (e) {
      return _defaultErrorBuilder(null);
    }
  }
  
  /// Default error widget to show when an image fails to load
  static Widget _defaultErrorBuilder(BuildContext? context) {
    if (context != null) {
      debugPrint('Error loading image in context: $context');
    } else {
      debugPrint('Error loading image with null context');
    }
    return Container(
      height: 40,
      width: 70,
      decoration: BoxDecoration(
        color: const Color(0xFF25545a),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Text(
          'SYSHA',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
} 