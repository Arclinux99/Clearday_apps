# Implementation Plan - Fix `lib/theme.dart`

Clean up `lib/theme.dart` by fixing typos, syntax errors in parentheses/braces, and missing semicolons.

## User Request

- "rapikan sedikit codingan gw , dan hanya ubah pada typo, dan kesalahn penulisan () {}" (Clean up my code a bit, only change typos and errors in writing () {})

## Proposed Changes

### 1. General Cleanup & Imports

- Remove internal import `dart:nativewrappers/_internal/vm/lib/core_patch.dart`.
- Add `import 'package:google_fonts/google_fonts.dart';` (used in code).

### 2. AppSpacing Class

- Rename duplicate `padding` to `paddingXl` and `paddingXxl`.
- Add missing semicolons for all `EdgeInsets`.
- Fix camelCase for `verticalXs`, `verticalSm`, etc.
- Fix `EdgeInsets.symmetric(horizontal: ...)` to `EdgeInsets.symmetric(vertical: ...)` in the vertical section.

### 3. AppRadius Class

- Rename `AppRadis` to `AppRadius`.
- Fix typo in comment: `rounde d cornens` -> `rounded corners`.

### 4. lightTheme

- Fix `Color.white` to `Colors.white`.
- Fix `styeFrom` to `styleFrom`.
- Fix `Padding` to `padding` and add missing colon for `horizontal`.
- Add missing comma in `floatingActionButtonTheme`.
- Fix missing comma after `BorderRadius.circular(16)` in `focusedBorder`.

### 5. darkTheme & Structure

- Fix nested `appBarTheme`.
- Move `cardTheme`, `elevatedButtonTheme`, `floatingActionButtonTheme`, and `inputDecorationTheme` out of `appBarTheme`.
- Fix `floatingActionButonTheme` typo.
- Fix `BorderRadius.(16)` to `BorderRadius.circular(16)`.
- Fix `enableBorder` to `enabledBorder`.
- Fix `FontWeight.build` to `FontWeight.bold`.
- Properly structure `_buildTextTheme` as a helper function instead of an inline definition in the theme.

## Verification Plan

- Check for syntax errors.
- Ensure the theme structure is correct.
