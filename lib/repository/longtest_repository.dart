import 'package:feedbackscs2024/collections/longtest.dart';

import 'package:feedbackscs2024/repository/adapter.dart';
import 'package:isar/isar.dart';

import '../main.dart';

class LongTestRepository extends ADapter<ILongTest> {
  @override
  Future<void> createMultipleObjects(List<ILongTest> collections) async {
    await isar.writeTxn(() async {
      await isar.iLongTests.putAll(collections);
    });
  }

  @override
  Future<void> createObject(ILongTest collection) async {
    await isar.writeTxn(() async {
      await isar.iLongTests.put(collection);
    });
  }

  @override
  Future<void> deleteMultipleObjects(List<int> ids) async {
    await isar.writeTxn(() async {
      await isar.iLongTests.deleteAll(ids);
    });
  }

  @override
  Future<void> deleteObject(ILongTest collection) async {
    await isar.writeTxn(() async {
      await isar.iLongTests.delete(collection.id);
    });
  }

  @override
  Future<List<ILongTest>> getAllObjects() async {
    return await isar.iLongTests.where().findAll();
  }

  @override
  Future<ILongTest?> getObjectByID(int id) async {
    return await isar.iLongTests.get(id);
  }

  @override
  Future<List<ILongTest?>> getObjectsByID(List<int> ids) async {
    return await isar.iLongTests.getAll(ids);
  }

  @override
  Future<void> updateObject(ILongTest collection) async {
    await isar.writeTxn(() async {
      final docpat = await isar.iLongTests.get(collection.id);

      if (docpat != null) {
        await isar.iLongTests.put(collection);
      }
    });
  }
}
