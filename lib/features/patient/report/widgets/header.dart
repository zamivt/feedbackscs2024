import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/ui/theme/appimages.dart';

import '../../../../core/ui/widgets/common_widgets.dart';
import '../../../../l10n/locale_keys.g.dart';

class Header extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Header();

  @override
  Widget build(BuildContext context) {
    return AppPictureContainer(
      widget1: Container(),
      widget2: Container(),
      picture: AppImages.report,
      title: LocaleKeys.report.tr(),
      height: 273,
    );
  }
}
