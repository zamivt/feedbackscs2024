import 'package:feedbackscs2024/collections/sideeffects_short_test.dart';

import 'package:feedbackscs2024/repository/adapter.dart';
import 'package:isar/isar.dart';

import '../main.dart';

class SideEffectsShortTestRepository extends ADapter<SideEffectsShortTest> {
  @override
  Future<void> createMultipleObjects(
      List<SideEffectsShortTest> collections) async {
    await isar.writeTxn(() async {
      await isar.sideEffectsShortTests.putAll(collections);
    });
  }

  @override
  Future<void> createObject(SideEffectsShortTest collection) async {
    await isar.writeTxn(() async {
      await isar.sideEffectsShortTests.put(collection);
    });
  }

  @override
  Future<void> deleteMultipleObjects(List<int> ids) async {
    await isar.writeTxn(() async {
      await isar.sideEffectsShortTests.deleteAll(ids);
    });
  }

  @override
  Future<void> deleteObject(SideEffectsShortTest collection) async {
    await isar.writeTxn(() async {
      await isar.sideEffectsShortTests.delete(collection.id);
    });
  }

  @override
  Future<List<SideEffectsShortTest>> getAllObjects() async {
    return await isar.sideEffectsShortTests.where().findAll();
  }

  @override
  Future<SideEffectsShortTest?> getObjectByID(int id) async {
    return await isar.sideEffectsShortTests.get(id);
  }

  @override
  Future<List<SideEffectsShortTest?>> getObjectsByID(List<int> ids) async {
    return await isar.sideEffectsShortTests.getAll(ids);
  }

  @override
  Future<void> updateObject(SideEffectsShortTest collection) async {
    await isar.writeTxn(() async {
      final sideEffectsShortTest =
          await isar.sideEffectsShortTests.get(collection.id);

      if (sideEffectsShortTest != null) {
        await isar.sideEffectsShortTests.put(collection);
      }
    });
  }
}
