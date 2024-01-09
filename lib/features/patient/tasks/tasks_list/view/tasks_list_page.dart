// ignore_for_file: unused_local_variable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/ui/theme/appimages.dart';
import '../../../../../core/ui/widgets/common_widgets.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../widgets/stage1_2.dart';

class TasksListPage extends StatelessWidget {
  const TasksListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      //Theme.of(context).colorScheme.onPrimaryContainer,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppPictureContainer(
                isResponsible: false,
                widget1: Container(),
                widget2: Container(),
                isinfo: false,
                picture: AppImages.changelife,
                title: LocaleKeys.taskheader.tr(),
              ),
              Stage1_2()
            ],
          ),
        ),
      ),
    );
  }
}
