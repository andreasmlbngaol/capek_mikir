import 'package:flutter/material.dart';

class AppTheme {
  // Spacing
  static const double spacingXs = 4.0;
  static const double spacingSm = 8.0;
  static const double spacingMd = 12.0;
  static const double spacingLg = 16.0;
  static const double spacingXl = 24.0;
  static const double spacingXxl = 32.0;

  // Border Radius
  static const double radiusSm = 8.0;
  static const double radiusMd = 12.0;
  static const double radiusLg = 16.0;
  static const double radiusXl = 20.0;

  // Elevation
  static const double elevationSm = 1.0;
  static const double elevationMd = 2.0;
  static const double elevationLg = 4.0;

  // Button Padding
  static const EdgeInsets buttonPaddingVertical =
  EdgeInsets.symmetric(vertical: spacingLg, horizontal: spacingMd);
  static const EdgeInsets buttonPaddingLarge =
  EdgeInsets.symmetric(vertical: spacingMd, horizontal: spacingLg);

  // Card Padding
  static const EdgeInsets cardPadding = EdgeInsets.all(spacingLg);
  static const EdgeInsets cardPaddingLarge = EdgeInsets.all(spacingXl);

  static InputDecoration buildInputDecoration({
    required String labelText,
    String? hintText,
    required BuildContext context,
  }) {
    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusLg),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusLg),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.5),
          width: 1.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusLg),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.primary,
          width: 2.5,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: spacingMd,
        vertical: spacingMd,
      ),
      filled: true,
      fillColor: Theme.of(context).colorScheme.surfaceContainerLow,
    );
  }

  // Card Styling
  static CardTheme get cardTheme => CardTheme(
    elevation: elevationMd,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radiusLg),
    ),
  );

  // Button Styling
  static ButtonStyle get filledButtonStyle => FilledButton.styleFrom(
    padding: buttonPaddingVertical,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radiusMd),
    ),
    elevation: elevationMd,
  );

  static ButtonStyle get outlinedButtonStyle => OutlinedButton.styleFrom(
    padding: buttonPaddingVertical,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radiusMd),
    ),
  );

  static LinearGradient get primaryGradient => LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Colors.blue.withValues(alpha: 0.05),
      Colors.purple.withValues(alpha: 0.03),
    ],
  );

  static LinearGradient get accentGradient => LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Colors.cyan.withValues(alpha: 0.08),
      Colors.blue.withValues(alpha: 0.04),
    ],
  );
}
