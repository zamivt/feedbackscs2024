import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/ui/theme/appimages.dart';
import '../../../../core/ui/widgets/app_picture_container.dart';
import '../../../../l10n/locale_keys.g.dart';

class HeaderBloc extends StatelessWidget {
  const HeaderBloc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppPictureContainer(
        height: 273,
        widget1: Container(),
        widget2: Container(),
        picture: AppImages.instruct,
        title: LocaleKeys.instructions.tr());
  }
}
