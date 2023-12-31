import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'dart:async';

extension StringExtensionString on String {
  String get capitalize {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }
}

extension StringExtension on String? {
  String get fileExtension {
    if (this == null || this!.isEmpty) {
      return '';
    }
    final indexOfDot = this!.lastIndexOf('.');
    if (indexOfDot != -1 && indexOfDot < this!.length - 1) {
      return this!.substring(indexOfDot + 1).toUpperCase();
    }
    return '';
  }

  bool get isNullEmptyOrWhitespace =>
      this == null || this!.isEmpty || this!.trim().isEmpty;

  bool get isValidEmail => this != null
      ? RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$')
          .hasMatch(this!)
      : false;

  /// TODO implement selecting by country. regex from server
  /// bool get isValidPhone => this != null
  ///     ? RegExp(r'^((\+86)|(\+1))?[- ]?(\d{2,3})[- ]?(\d{3,4})[- ]?(\d{4})$')
  ///         .hasMatch(this!)
  ///     : false;
  String removeNonDigitsAndFirstCharacter() {
    String digitsOnly = this!.replaceAll(RegExp(r'\D'), '');
    if (digitsOnly.isNotEmpty) {
      return digitsOnly.substring(1);
    }
    return '';
  }

  /// TODO implement selecting by country.
  /// bool  isValidPhone(Country code) => ?
  bool get isValidPhone {
    if (this == null) return false;
    String digitsOnly = this!.replaceAll(RegExp(r'\D'), '');
    return RegExp(r'^\d{11}$').hasMatch(digitsOnly);
  }

  bool get isValidZipCode => this != null
      ? RegExp(r'^[0-9]{5}(?:-[0-9]{4})?$').hasMatch(this!)
      : false;

  bool get isValidPassword =>
      this != null && this!.isNotEmpty && isContainsDigit && isEnoughLength;

  bool get isContainsDigit => RegExp(r'\d').hasMatch(this!);
  bool get isEnoughLength => this!.length >= 8;

  bool get isUserNameValid =>
      this != null &&
      this!.isNotEmpty &&
      this!.length >= 2 &&
      !this!.contains(" ");

  bool get isInputValid =>
      this != null && this!.isNotEmpty && this!.length >= 2;

  String? get trimToFour {
    if (this?.isEmpty ?? true) {
      return '';
    }
    return this!.split('').skip(this!.length - 4).join();
  }

  String? get capitalise {
    if (this?.isEmpty ?? true) {
      return '';
    }
    return this!.substring(0, 1).toUpperCase() +
        this!.substring(1).toLowerCase();
  }

  double textWidth(TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: this,
        style: style,
      ),
      maxLines: 1,
      textDirection: ui.TextDirection.ltr,
    )..layout();
    return textPainter.size.width;
  }

  double textHeight(TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: this,
        style: style,
      ),
      maxLines: 1,
      textDirection: ui.TextDirection.ltr,
    )..layout();
    return textPainter.size.height;
  }

  int textLines(TextStyle style, double textSpaceWidth) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: this,
        style: style,
      ),
      maxLines: 100,
      textDirection: ui.TextDirection.ltr,
    )..layout(
        maxWidth: textSpaceWidth,
      );
    List<ui.LineMetrics> lines = textPainter.computeLineMetrics();
    int numberOfLines = lines.length;
    return numberOfLines;
  }

  int textOffset(TextStyle style, double boundary) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: this,
        style: style,
      ),
      maxLines: 1,
      textDirection: ui.TextDirection.ltr,
    )..layout();

    final textSize = textPainter.size;

    final pos = textPainter.getPositionForOffset(
      Offset(
        boundary,
        textSize.height,
      ),
    );
    return textPainter.getOffsetBefore(pos.offset) ?? 0;
  }

  PassValidity validatePassword() {
    if (!RegExp(r'^.{8,}$').hasMatch(this!)) {
      return PassValidity.invalidLength;
    } else if (!RegExp('[0-9]').hasMatch(this!)) {
      return PassValidity.invalidNumber;
    } else if (!RegExp('[a-z]').hasMatch(this!)) {
      return PassValidity.invalidLowercase;
    } else if (!RegExp('[A-Z]').hasMatch(this!)) {
      return PassValidity.invalidUppercase;
    } else if (!RegExp(r'[!@#\$&*~`)\%\-(_+=;:,.<>/?[{\]}\|^]')
        .hasMatch(this!)) {
      return PassValidity.invalidSpecialCharacter;
    } else {
      return PassValidity.passwordValid;
    }
  }

  String get sanitized {
    String result = this!
        .replaceAll(RegExp(r'[^a-zA-Z0-9]+'), '_')
        .replaceAll(RegExp(r'^_|_$'), '');

    if (result.length > 40) {
      result = result.substring(0, 40);
    }

    return result;
  }
}

enum PassValidity {
  invalidLength,
  invalidNumber,
  invalidLowercase,
  invalidUppercase,
  invalidSpecialCharacter,
  passwordValid,
  none,
}
