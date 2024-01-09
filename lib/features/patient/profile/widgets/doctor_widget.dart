import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:getwidget/getwidget.dart';

import '../../../../l10n/locale_keys.g.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/ui/widgets/common_widgets.dart';
import '../../../../services/entities/data/doc.dart';
import '../../../../services/entities/data/model/docmmodel.dart';
import '../../../doc/auth/controllers/docpat_controllers.dart';

class MyDoctor extends StatelessWidget {
  const MyDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    Iterable<Doc> doc = docs.where((doc) => doc.docid.contains('docex'));
    final docpatController = Get.find<DocPatController>();

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: AppColorContainer(
          islink: true,
          link: RouteNames.docauth,
          headerbloc: LocaleKeys.doc.tr(),
          color: Theme.of(context).colorScheme.tertiary,
          widget: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            child: Column(
              children: [
                GFAvatar(
                  shape: GFAvatarShape.standard,
                  borderRadius: BorderRadius.circular(20),
                  radius: 60,
                  backgroundImage: AssetImage(docpatController.docpats.isEmpty
                      ? doc.map((doc) => doc.photo).toList().first.toString()
                      : (docpatController.docpats[0].photo)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    docpatController.docpats.isEmpty
                        ? (doc
                            .map((doc) => doc.family)
                            .toList()
                            .first
                            .toString())
                        : (docpatController.docpats[0].family),
                    style: Theme.of(context).textTheme.displayLarge),
                Text(
                    docpatController.docpats.isEmpty
                        ? doc.map((doc) => doc.io).toList().first.toString()
                        : (docpatController.docpats[0].io),
                    style: Theme.of(context).textTheme.displayLarge),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  docpatController.docpats.isEmpty
                      ? doc.map((doc) => doc.hospital).toList().first.toString()
                      : (docpatController.docpats[0].hospital),
                  style: Theme.of(context).textTheme.displaySmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          )),
    );
  }
}
