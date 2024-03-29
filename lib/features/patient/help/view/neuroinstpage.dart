import 'package:flutter/material.dart';

import 'package:pdfx/pdfx.dart';
import 'package:provider/provider.dart';
import '../../../../collections/patient.dart';
import '../../../../repository/current_patient_provider.dart';
import '../../../../services/entities/data/model/neuromodel.dart';
import '../../../../services/entities/data/neuromodels.dart';

class NeuroinstPage extends StatefulWidget {
  const NeuroinstPage({super.key});

  @override
  State<NeuroinstPage> createState() => _NeuroinstPageState();
}

class _NeuroinstPageState extends State<NeuroinstPage> {
  static const int _initialPage = 1;
  late PdfController _pdfController;

  @override
  void initState() {
    super.initState();
    Provider.of<CurrentPatientProvider>(context, listen: false).readPatient();
    final feedbackSCSDatabase = context.watch<CurrentPatientProvider>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;
    final String namemodel = currentpatient[0].modelneuro;
    Iterable<Neuro> liststimul =
        neuromodels.where((neuromodel) => neuromodel.model.contains(namemodel));

    final String namepdf = liststimul
        .map((neumodel) => neumodel.pathinstneuro)
        .toList()
        .first
        .toString();
    _pdfController = PdfController(
      document: PdfDocument.openAsset(namepdf),
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
    final feedbackSCSDatabase = context.watch<CurrentPatientProvider>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        title: Text(currentpatient[0].modelneuro.toString()),
        actions: const <Widget>[],
      ),
      body: SafeArea(
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
                ],
              ),
            ),
            SizedBox(
              width: double.infinity - 20,
              height: MediaQuery.of(context).size.height - 200,
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
          ],
        ),
      ),
    );
  }
}
