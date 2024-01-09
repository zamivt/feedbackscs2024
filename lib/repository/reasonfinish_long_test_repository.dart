import 'package:feedbackscs2024/collections/reason_finish_long_test.dart';
import 'package:feedbackscs2024/repository/adapter.dart';
import 'package:isar/isar.dart';
import '../main.dart';

class ReasonFinishLongTestRepository extends ADapter<ReasonFinishLongTest> {
  @override
  Future<void> createMultipleObjects(
      List<ReasonFinishLongTest> collections) async {
    await isar.writeTxn(() async {
      await isar.reasonFinishLongTests.putAll(collections);
    });
  }

  @override
  Future<void> createObject(ReasonFinishLongTest collection) async {
    await isar.writeTxn(() async {
      await isar.reasonFinishLongTests.put(collection);
    });
  }

  @override
  Future<void> deleteMultipleObjects(List<int> ids) async {
    await isar.writeTxn(() async {
      await isar.reasonFinishLongTests.deleteAll(ids);
    });
  }

  @override
  Future<void> deleteObject(ReasonFinishLongTest collection) async {
    await isar.writeTxn(() async {
      await isar.reasonFinishLongTests.delete(collection.id);
    });
  }

  @override
  Future<List<ReasonFinishLongTest>> getAllObjects() async {
    return await isar.reasonFinishLongTests.where().findAll();
  }

  @override
  Future<ReasonFinishLongTest?> getObjectByID(int id) async {
    return await isar.reasonFinishLongTests.get(id);
  }

  @override
  Future<List<ReasonFinishLongTest?>> getObjectsByID(List<int> ids) async {
    return await isar.reasonFinishLongTests.getAll(ids);
  }

  @override
  Future<void> updateObject(ReasonFinishLongTest collection) async {
    await isar.writeTxn(() async {
      final reasonFinishLongTest =
          await isar.reasonFinishLongTests.get(collection.id);

      if (reasonFinishLongTest != null) {
        await isar.reasonFinishLongTests.put(collection);
      }
    });
  }
}
