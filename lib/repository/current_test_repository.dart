import 'package:feedbackscs2024/collections/current_test.dart';
import 'package:feedbackscs2024/repository/adapter.dart';
import 'package:isar/isar.dart';

import '../main.dart';

class CurrentTestRepository extends ADapter<CurrentTest> {
  @override
  Future<void> createMultipleObjects(List<CurrentTest> collections) async {
    await isar.writeTxn(() async {
      await isar.currentTests.putAll(collections);
    });
  }

  @override
  Future<void> createObject(CurrentTest collection) async {
    await isar.writeTxn(() async {
      await isar.currentTests.put(collection);
    });
  }

  @override
  Future<void> deleteMultipleObjects(List<int> ids) async {
    await isar.writeTxn(() async {
      await isar.currentTests.deleteAll(ids);
    });
  }

  @override
  Future<void> deleteObject(CurrentTest collection) async {
    await isar.writeTxn(() async {
      await isar.currentTests.delete(collection.id);
    });
  }

  @override
  Future<List<CurrentTest>> getAllObjects() async {
    return await isar.currentTests.where().findAll();
  }

  @override
  Future<CurrentTest?> getObjectByID(int id) async {
    return await isar.currentTests.get(id);
  }

  @override
  Future<List<CurrentTest?>> getObjectsByID(List<int> ids) async {
    return await isar.currentTests.getAll(ids);
  }

  @override
  Future<void> updateObject(CurrentTest collection) async {
    await isar.writeTxn(() async {
      final currenttest = await isar.currentTests.get(collection.id);

      if (currenttest != null) {
        await isar.currentTests.put(collection);
      }
    });
  }
}
