import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/l10n/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart' hide Column;
import '../../../repository/current_patient_provider.dart';

class ExcelReport extends StatefulWidget {
  const ExcelReport({super.key});

  @override
  State<ExcelReport> createState() => _ExcelReportState();
}

class _ExcelReportState extends State<ExcelReport> {
  @override
  Widget build(BuildContext context) {
    Provider.of<CurrentPatientProvider>(context, listen: false);
    return TextButton(
      onPressed: createProfileExcel,
      child: Text(
        LocaleKeys.downloadreports.tr(),
      ),
    );
  }

  Future<void> createProfileExcel() async {
    Logger().d('prob2');

    // Provider.of<FeedbackSCSDatabase>(context, listen: false);
    // Provider.of<FeedbackSCSDatabase>(context, listen: false).readPatient();
    // final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();

    // List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;
    final String path = (await getApplicationDocumentsDirectory()).path;

    final String fileName = '$path/feedbackscs_report.xlsx';

    // Create a new Excel document.
    final Workbook workbook = Workbook();
//Accessing worksheet via index.
    final Worksheet sheet1 = workbook.worksheets[0];
    sheet1.getRangeByName('A1').setText('Hello World');
// Save the document.
    final List<int> bytes = workbook.saveAsStream();
    File(fileName).writeAsBytes(bytes, flush: true);
    Logger().d('prob3');
//Dispose the workbook.
    workbook.dispose();

    // //styles
    // final Style title = workbook.styles.add('Style1');
    // title.fontSize = 20;
    // title.bold = true;
    // title.hAlign = HAlignType.center;
    // title.vAlign = VAlignType.center;
    // title.borders.bottom.lineStyle = LineStyle.double;
    // title.borders.all.lineStyle = LineStyle.thick;

    // title.italic = true;

    // final Style styleheader = workbook.styles.add('Style2');
    // styleheader.fontSize = 18;
    // styleheader.bold = true;
    // styleheader.hAlign = HAlignType.center;
    // styleheader.vAlign = VAlignType.center;

    // final Style stylesubheader = workbook.styles.add('Style3');
    // stylesubheader.fontSize = 16;
    // stylesubheader.bold = true;
    // stylesubheader.hAlign = HAlignType.center;

    // final Style styletabheader = workbook.styles.add('Style4');
    // styletabheader.fontSize = 14;
    // styletabheader.borders.all.lineStyle = LineStyle.thin;
    // styletabheader.bold = true;
    // styletabheader.hAlign = HAlignType.left;
    // styletabheader.vAlign = VAlignType.top;

    // stylesubheader.bold = true;
    // final Style styletabdescr = workbook.styles.add('Style5');
    // styletabdescr.fontSize = 14;
    // styletabdescr.bold = false;
    // styletabdescr.italic = true;

    // styletabdescr.borders.all.lineStyle = LineStyle.thin;
    // styletabdescr.vAlign = VAlignType.top;

    // final Style colontitul = workbook.styles.add('Style6');
    // colontitul.fontSize = 14;
    // colontitul.bold = true;
    // colontitul.italic = true;
    // colontitul.borders.top.lineStyle = LineStyle.thick;
    // colontitul.vAlign = VAlignType.top;
    // colontitul.hAlign = HAlignType.right;
    // colontitul.borders.top.lineStyle = LineStyle.mediumDashDotDot;
    // stylesubheader.bold = true;
    // final Style styletablist = workbook.styles.add('Style7');

    // styletablist.borders.all.lineStyle = LineStyle.thin;
    // styletablist.fontSize = 14;
    // styletablist.vAlign = VAlignType.top;
    // styletablist.hAlign = HAlignType.center;

    // final Style stylelistdescr = workbook.styles.add('Style8');
    // stylelistdescr.fontSize = 14;
    // stylelistdescr.bold = false;
    // stylelistdescr.italic = true;

    // stylelistdescr.borders.all.lineStyle = LineStyle.thin;
    // stylelistdescr.vAlign = VAlignType.top;
    // stylelistdescr.hAlign = HAlignType.center;

    // //data List 1 Profile

    // final Worksheet infopatient =
    //     workbook.worksheets.addWithName(LocaleKeys.profile.tr());
    // infopatient.tabColor = '#37517E';
    // infopatient.getRangeByName('A1:B1').merge();

    // infopatient.getRangeByName('B1').setText(
    //     '${LocaleKeys.createdreport.tr()}  -  ${DateFormat.d().format(DateTime.now())}/${DateFormat.M().format(DateTime.now())}/${DateFormat.y().format(DateTime.now())}');
    // infopatient.getRangeByName('B1').cellStyle = colontitul;
    // infopatient.getRangeByName('A2:B2').merge();
    // infopatient.getRangeByName('A2').setText(LocaleKeys.reportSCS.tr());
    // infopatient.getRangeByName('A2').rowHeight = 60;
    // infopatient.getRangeByName('A1').columnWidth = 60;

    // infopatient.getRangeByName('A2').cellStyle = title;

    // infopatient.getRangeByName('B1').columnWidth = 100;

    // infopatient.getRangeByName('A4').setText(LocaleKeys.hospital.tr());
    // infopatient.getRangeByName('A4').cellStyle = styletabheader;
    // infopatient.getRangeByName('B4').setText(LocaleKeys.hospital.tr());
    // infopatient.getRangeByName('B4').cellStyle = styletabdescr;
    // infopatient.getRangeByName('A5').setText(LocaleKeys.currentdoctor.tr());
    // infopatient.getRangeByName('A5').cellStyle = styletabheader;
    // infopatient.getRangeByName('B5').setText(LocaleKeys.namepatient.tr());
    // infopatient.getRangeByName('B5').cellStyle = styletabdescr;
    // infopatient.getRangeByName('A7:B7').merge();
    // infopatient.getRangeByName('A7').setText(LocaleKeys.profpat.tr());
    // infopatient.getRangeByName('A7').rowHeight = 40;
    // infopatient.getRangeByName('A7').cellStyle = styleheader;

    // infopatient.getRangeByName('A8').setText(LocaleKeys.fiopatient.tr());
    // infopatient.getRangeByName('A8').cellStyle = styletabheader;

    // infopatient.getRangeByName('B8').setText(currentpatient[0].fio);
    // infopatient.getRangeByName('B8').cellStyle = styletabdescr;

    // infopatient.getRangeByName('A9').setText(LocaleKeys.email.tr());
    // infopatient.getRangeByName('A9').cellStyle = styletabheader;

    // infopatient.getRangeByName('B9').setText(currentpatient[0].email);
    // infopatient.getRangeByName('B9').cellStyle = styletabdescr;

    // infopatient.getRangeByName('A10').setText(LocaleKeys.phone.tr());
    // infopatient.getRangeByName('A10').cellStyle = styletabheader;
    // infopatient.getRangeByName('B10').setText(currentpatient[0].phone);
    // infopatient.getRangeByName('B10').cellStyle = styletabdescr;

    // infopatient.getRangeByName('A11').setText(LocaleKeys.diagnoz.tr());
    // infopatient.getRangeByName('A11').cellStyle = styletabheader;
    // infopatient.getRangeByName('B11').setText(currentpatient[0].diagnoz);
    // infopatient.getRangeByName('B11').cellStyle = styletabdescr;
    // infopatient.getRangeByName('B11').cellStyle.wrapText = true;

    // infopatient.getRangeByName('A12').setText(LocaleKeys.anamnesis.tr());
    // infopatient.getRangeByName('A12').cellStyle = styletabheader;
    // infopatient.getRangeByName('B12').setText(currentpatient[0].anamnez);
    // infopatient.getRangeByName('B12').cellStyle = styletabdescr;
    // infopatient.getRangeByName('B12').cellStyle.wrapText = true;

    // infopatient.getRangeByName('A13').setText(LocaleKeys.currentpainlevel.tr());
    // infopatient.getRangeByName('A13').cellStyle = styletabheader;
    // infopatient
    //     .getRangeByName('B13')
    //     .setText(currentpatient[0].levelmaxpain.toString());
    // infopatient.getRangeByName('B13').cellStyle = styletabdescr;

    // infopatient.getRangeByName('A14:B14').merge();
    // infopatient.getRangeByName('A14').setText(LocaleKeys.currentsymptoms.tr());
    // infopatient.getRangeByName('A14').cellStyle = styletabheader;
    // infopatient.getRangeByName('A14').rowHeight = 40;

    // infopatient.getRangeByName('A15:B15').merge();
    // infopatient
    //     .getRangeByName('B15')
    //     .setText('1.  ${currentpatient[0].sympotoms1}');
    // infopatient.getRangeByName('B15').cellStyle.wrapText = true;
    // infopatient.getRangeByName('B15').cellStyle = styletabdescr;

    // infopatient.getRangeByName('A16:B16').merge();
    // infopatient
    //     .getRangeByName('B16')
    //     .setText('2.  ${currentpatient[0].sympotoms2}');
    // infopatient.getRangeByName('B16').cellStyle = styletabdescr;
    // infopatient.getRangeByName('B16').cellStyle.wrapText = true;

    // infopatient.getRangeByName('A17:B17').merge();
    // infopatient
    //     .getRangeByName('B17')
    //     .setText('3.  ${currentpatient[0].sympotoms3}');
    // infopatient.getRangeByName('B17').cellStyle = styletabdescr;
    // infopatient.getRangeByName('B17').cellStyle.wrapText = true;

    // infopatient.getRangeByName('A19:B19').merge();
    // infopatient.getRangeByName('A19').setText(LocaleKeys.neuro.tr());
    // infopatient.getRangeByName('A19').cellStyle = styleheader;
    // infopatient.getRangeByName('A19').rowHeight = 40;

    // infopatient.getRangeByName('A20').setText(LocaleKeys.modelneuro.tr());
    // infopatient.getRangeByName('A20').cellStyle = styletabheader;
    // infopatient.getRangeByName('B20').setText(currentpatient[0].modelneuro);
    // infopatient.getRangeByName('B20').cellStyle = styletabdescr;

    // infopatient.getRangeByName('A22:B22').merge();
    // infopatient.getRangeByName('A22').setText(LocaleKeys.desioncriteria.tr());
    // infopatient.getRangeByName('A22').rowHeight = 40;
    // infopatient.getRangeByName('A22').cellStyle.wrapText = true;
    // infopatient.getRangeByName('A22').cellStyle = styleheader;

    // infopatient.getRangeByName('A23').setText(LocaleKeys.shorttest.tr());
    // infopatient.getRangeByName('A23').cellStyle = styletabheader;
    // infopatient
    //     .getRangeByName('B23')
    //     .setText(currentpatient[0].priorityshorttest);
    // infopatient.getRangeByName('B23').cellStyle = styletabdescr;

    // infopatient.getRangeByName('A24').setText(LocaleKeys.minpain.tr());
    // infopatient.getRangeByName('A24').cellStyle = styletabheader;
    // infopatient
    //     .getRangeByName('B24')
    //     .setText(currentpatient[0].prioritylevelpain.toString());
    // infopatient.getRangeByName('B24').cellStyle = styletabdescr;
    // infopatient.getRangeByName('A26:B26').merge();
    // infopatient.getRangeByName('B26').setText(LocaleKeys.maxtimeposition.tr());
    // infopatient.getRangeByName('B26').rowHeight = 50;
    // infopatient.getRangeByName('B26').cellStyle = styleheader;
    // infopatient.getRangeByName('B26').cellStyle.wrapText = true;

    // infopatient.getRangeByName('A27').setText(LocaleKeys.seat.tr());
    // infopatient.getRangeByName('A27').cellStyle = styletabheader;
    // infopatient
    //     .getRangeByName('B27')
    //     .setText(currentpatient[0].timeseat.toString());
    // infopatient.getRangeByName('B27').cellStyle = styletabdescr;

    // infopatient.getRangeByName('A28').setText(LocaleKeys.lie.tr());
    // infopatient.getRangeByName('A28').cellStyle = styletabheader;
    // infopatient
    //     .getRangeByName('B28')
    //     .setText(currentpatient[0].timelie.toString());
    // infopatient.getRangeByName('B28').cellStyle = styletabdescr;

    // infopatient.getRangeByName('A29').setText(LocaleKeys.move.tr());
    // infopatient.getRangeByName('A29').cellStyle = styletabheader;
    // infopatient
    //     .getRangeByName('B29')
    //     .setText(currentpatient[0].timemove.toString());
    // infopatient.getRangeByName('B29').cellStyle = styletabdescr;

    // final ExcelSheetProtectionOption options = ExcelSheetProtectionOption();
    // options.all = true;

    // infopatient.protect('Password', options);

    // final List<int> bytes = workbook.saveAsStream();
    // workbook.dispose();

    // await file.writeAsBytes(bytes, flush: true);
    // Logger().d('proba');
  }
}
