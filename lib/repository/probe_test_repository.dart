import 'package:feedbackscs2024/collections/probetest.dart';
import 'package:feedbackscs2024/repository/adapter.dart';
import 'package:isar/isar.dart';
import '../main.dart';

class ProbeTestRepository extends ADapter<ProbeTest> {
  @override
  Future<void> createMultipleObjects(List<ProbeTest> collections) async {
    await isar.writeTxn(() async {
      await isar.probeTests.putAll(collections);
    });
  }

  @override
  Future<void> createObject(ProbeTest collection) async {
    await isar.writeTxn(() async {
      await isar.probeTests.put(collection);
    });
  }

  @override
  Future<void> deleteMultipleObjects(List<int> ids) async {
    await isar.writeTxn(() async {
      await isar.probeTests.deleteAll(ids);
    });
  }

  @override
  Future<void> deleteObject(ProbeTest collection) async {
    await isar.writeTxn(() async {
      await isar.probeTests.delete(collection.id);
    });
  }

  @override
  Future<List<ProbeTest>> getAllObjects() async {
    return await isar.probeTests.where().findAll();
  }

  @override
  Future<ProbeTest?> getObjectByID(int id) async {
    return await isar.probeTests.get(id);
  }

  @override
  Future<List<ProbeTest?>> getObjectsByID(List<int> ids) async {
    return await isar.probeTests.getAll(ids);
  }

  @override
  Future<void> updateObject(ProbeTest collection) async {
    await isar.writeTxn(() async {
      final probetest = await isar.probeTests.get(collection.id);

      if (probetest != null) {
        await isar.probeTests.put(collection);
      }
    });
  }
}
