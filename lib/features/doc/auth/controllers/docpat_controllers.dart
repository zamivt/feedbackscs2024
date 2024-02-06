import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import '../../../../services/entities/23_docpat.dart';
import '../../../../services/entities/data/doc.dart';

class DocPatController extends GetxController {
  late List<DocPat> _docpats;
  late Box<DocPat> docpatbox;

  List<DocPat> get docpats => _docpats;
  DocPatController() {
    docpatbox = Hive.box<DocPat>('docpats');
    _docpats = [];
    for (int i = 0; i < docpatbox.values.length; i++) {
      _docpats.add(docpatbox.getAt(i)!);
    }
  }

  profDocPat(String docid, DateTime date) {
    if (docpats.isEmpty) {
      final docpat = DocPat(
          docid: docid,
          family: docs
              .where((docs) => docs.docid.contains(docid))
              .map((docs) => docs.family)
              .toList()
              .first,
          io: docs
              .where((docs) => docs.docid.contains(docid))
              .map((docs) => docs.io)
              .toList()
              .first,
          email: docs
              .where((docs) => docs.docid.contains(docid))
              .map((docs) => docs.email)
              .toList()
              .first,
          photo: docs
              .where((docs) => docs.docid.contains(docid))
              .map((docs) => docs.photo)
              .toList()
              .first,
          hospital: docs
              .where((docs) => docs.docid.contains(docid))
              .map((docs) => docs.hospital)
              .toList()
              .first,
          phone: docs
              .where((docs) => docs.docid.contains(docid))
              .map((docs) => docs.phone)
              .toList()
              .first,
          attempt: docs
              .where((docs) => docs.docid.contains(docid))
              .map((docs) => docs.attempt)
              .toList()
              .first,
          password: docs
              .where((docs) => docs.docid.contains(docid))
              .map((docs) => docs.password)
              .toList()
              .first,
          history:
              '${DateFormat.yMMMEd().format(date)} - ${docs.where((docs) => docs.docid.contains(docid)).map((docs) => docs.family).toList().first}, ');
      _docpats.add(docpat);
      docpatbox.add(docpat);
    } else {
      if (docid != docpats[0].docid) {
        _docpats[0].docid = docid;
        _docpats[0].family = docs
            .where((docs) => docs.docid.contains(docid))
            .map((docs) => docs.family)
            .toList()
            .first;
        _docpats[0].io = docs
            .where((docs) => docs.docid.contains(docid))
            .map((docs) => docs.io)
            .toList()
            .first;
        _docpats[0].email = docs
            .where((docs) => docs.docid.contains(docid))
            .map((docs) => docs.email)
            .toList()
            .first;
        _docpats[0].hospital = docs
            .where((docs) => docs.docid.contains(docid))
            .map((docs) => docs.hospital)
            .toList()
            .first;
        _docpats[0].password = docs
            .where((docs) => docs.docid.contains(docid))
            .map((docs) => docs.password)
            .toList()
            .first;
        _docpats[0].photo = docs
            .where((docs) => docs.docid.contains(docid))
            .map((docs) => docs.photo)
            .toList()
            .first;
        _docpats[0].phone = docs
            .where((docs) => docs.docid.contains(docid))
            .map((docs) => docs.phone)
            .toList()
            .first;
        _docpats[0].attempt = docs
            .where((docs) => docs.docid.contains(docid))
            .map((docs) => docs.attempt)
            .toList()
            .first;
        _docpats[0].history =
            '${docpats[0].history}${DateFormat.yMMMEd().format(date)} - ${docs.where((docs) => docs.docid.contains(docid)).map((docs) => docs.family).toList().first}, ';
        // _patients[0].email = newemail;
        docpatbox.putAt(0, _docpats[0]);
        update();
      }
    }

    update();
  }
}
