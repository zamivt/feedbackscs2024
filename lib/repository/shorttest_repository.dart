import 'package:feedbackscs2024/collections/shorttest.dart';

import 'package:feedbackscs2024/repository/adapter.dart';
import 'package:isar/isar.dart';

import '../main.dart';

class ShortTestRepository extends ADapter<IShortTest> {
  @override
  Future<void> createMultipleObjects(List<IShortTest> collections) async {
    await isar.writeTxn(() async {
      await isar.iShortTests.putAll(collections);
    });
  }

  @override
  Future<void> createObject(IShortTest collection) async {
    await isar.writeTxn(() async {
      await isar.iShortTests.put(collection);
    });
  }

  @override
  Future<void> deleteMultipleObjects(List<int> ids) async {
    await isar.writeTxn(() async {
      await isar.iShortTests.deleteAll(ids);
    });
  }

  @override
  Future<void> deleteObject(IShortTest collection) async {
    await isar.writeTxn(() async {
      await isar.iShortTests.delete(collection.id);
    });
  }

  @override
  Future<List<IShortTest>> getAllObjects() async {
    return await isar.iShortTests.where().findAll();
  }

  @override
  Future<IShortTest?> getObjectByID(int id) async {
    return await isar.iShortTests.get(id);
  }

  @override
  Future<List<IShortTest?>> getObjectsByID(List<int> ids) async {
    return await isar.iShortTests.getAll(ids);
  }

  @override
  Future<void> updateObject(IShortTest collection) async {
    await isar.writeTxn(() async {
      final ishorttest = await isar.iShortTests.get(collection.id);

      if (ishorttest != null) {
        await isar.iShortTests.put(collection);
      }
    });
  }
}
