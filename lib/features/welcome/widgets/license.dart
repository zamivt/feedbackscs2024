import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/core/ui/widgets/common_widgets.dart';
import 'package:feedbackscs2024/l10n/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pdfx/pdfx.dart';
import 'package:provider/provider.dart';
import '../../../core/router/route_names.dart';
import '../../../repository/current_patient_provider.dart';

class LicenseAppPage extends StatefulWidget {
  const LicenseAppPage({super.key});

  @override
  State<LicenseAppPage> createState() => _LicenseAppPageState();
}

class _LicenseAppPageState extends State<LicenseAppPage> {
  static const int _initialPage = 1;
  late PdfController _pdfController;

  @override
  void initState() {
    super.initState();
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/pdf/license.pdf'),
      initialPage: _initialPage,
    );
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('FeedbackSCS'),
        actions: const <Widget>[],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ColoredBox(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.navigate_before,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      _pdfController.previousPage(
                        curve: Curves.ease,
                        duration: const Duration(milliseconds: 100),
                      );
                    },
                  ),
                  PdfPageNumber(
                    controller: _pdfController,
                    builder: (_, loadingState, page, pagesCount) => Container(
                      alignment: Alignment.center,
                      child: Text(
                        '$page/${pagesCount ?? 0}',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      _pdfController.nextPage(
                        curve: Curves.ease,
                        duration: const Duration(milliseconds: 100),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity - 10,
              height: MediaQuery.of(context).size.height - 220,
              child: PdfView(
                builders: PdfViewBuilders<DefaultBuilderOptions>(
                  options: const DefaultBuilderOptions(),
                  documentLoaderBuilder: (_) =>
                      const Center(child: CircularProgressIndicator()),
                  pageLoaderBuilder: (_) =>
                      const Center(child: CircularProgressIndicator()),
                ),
                controller: _pdfController,
              ),
            ),
            const AppDivider(),
            AppCommentText(text: LocaleKeys.decriptionconfident.tr()),
            ElevatedButton(
              onPressed: () {
                context.read<CurrentPatientProvider>().updateIsLisense(true);

                context.pushNamed(RouteNames.patientmainpage);
              },
              child: Text(LocaleKeys.accept.tr(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelLarge),
            )
          ],
        ),
      ),
    );
  }
}
