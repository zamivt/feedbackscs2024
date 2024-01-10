import 'package:feedbackscs2024/collections/before_test_short_test.dart';
import 'package:feedbackscs2024/repository/adapter.dart';
import 'package:isar/isar.dart';

import '../main.dart';

class BeforeTestShortTestRepository extends ADapter<IBeforeTestShortTest> {
  @override
  Future<void> createMultipleObjects(
      List<IBeforeTestShortTest> collections) async {
    await isar.writeTxn(() async {
      await isar.iBeforeTestShortTests.putAll(collections);
    });
  }

  @override
  Future<void> createObject(IBeforeTestShortTest collection) async {
    await isar.writeTxn(() async {
      await isar.iBeforeTestShortTests.put(collection);
    });
  }

  @override
  Future<void> deleteMultipleObjects(List<int> ids) async {
    await isar.writeTxn(() async {
      await isar.iBeforeTestShortTests.deleteAll(ids);
    });
  }

  @override
  Future<void> deleteObject(IBeforeTestShortTest collection) async {
    await isar.writeTxn(() async {
      await isar.iBeforeTestShortTests.delete(collection.id);
    });
  }

  @override
  Future<List<IBeforeTestShortTest>> getAllObjects() async {
    return await isar.iBeforeTestShortTests.where().findAll();
  }

  @override
  Future<IBeforeTestShortTest?> getObjectByID(int id) async {
    return await isar.iBeforeTestShortTests.get(id);
  }

  @override
  Future<List<IBeforeTestShortTest?>> getObjectsByID(List<int> ids) async {
    return await isar.iBeforeTestShortTests.getAll(ids);
  }

  @override
  Future<void> updateObject(IBeforeTestShortTest collection) async {
    await isar.writeTxn(() async {
      final beforetest = await isar.iBeforeTestShortTests.get(collection.id);

      if (beforetest != null) {
        await isar.iBeforeTestShortTests.put(collection);
      }
    });
  }
}
