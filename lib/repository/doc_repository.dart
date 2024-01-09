import 'package:feedbackscs2024/collections/doc.dart';

import 'package:feedbackscs2024/repository/adapter.dart';
import 'package:isar/isar.dart';

import '../main.dart';

class DocRepository extends ADapter<IDocPat> {
  @override
  Future<void> createMultipleObjects(List<IDocPat> collections) async {
    await isar.writeTxn(() async {
      await isar.iDocPats.putAll(collections);
    });
  }

  @override
  Future<void> createObject(IDocPat collection) async {
    await isar.writeTxn(() async {
      await isar.iDocPats.put(collection);
    });
  }

  @override
  Future<void> deleteMultipleObjects(List<int> ids) async {
    await isar.writeTxn(() async {
      await isar.iDocPats.deleteAll(ids);
    });
  }

  @override
  Future<void> deleteObject(IDocPat collection) async {
    await isar.writeTxn(() async {
      await isar.iDocPats.delete(collection.id);
    });
  }

  @override
  Future<List<IDocPat>> getAllObjects() async {
    return await isar.iDocPats.where().findAll();
  }

  @override
  Future<IDocPat?> getObjectByID(int id) async {
    return await isar.iDocPats.get(id);
  }

  @override
  Future<List<IDocPat?>> getObjectsByID(List<int> ids) async {
    return await isar.iDocPats.getAll(ids);
  }

  @override
  Future<void> updateObject(IDocPat collection) async {
    await isar.writeTxn(() async {
      final docpat = await isar.iDocPats.get(collection.id);

      if (docpat != null) {
        await isar.iDocPats.put(collection);
      }
    });
  }
}
