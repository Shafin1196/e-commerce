import 'package:e_commerce/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

extension LocalizationExtention on BuildContext {
   AppLocalizations get localization => AppLocalizations.of(this)!;
 }