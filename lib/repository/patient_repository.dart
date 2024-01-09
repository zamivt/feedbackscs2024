import 'package:feedbackscs2024/collections/patient.dart';
import 'package:feedbackscs2024/repository/adapter.dart';
import 'package:isar/isar.dart';

import '../main.dart';

class PatientRepository extends ADapter<IPatient> {
  @override
  Future<void> createMultipleObjects(List<IPatient> collections) async {
    await isar.writeTxn(() async {
      await isar.iPatients.putAll(collections);
    });
  }

  @override
  Future<void> createObject(IPatient collection) async {
    await isar.writeTxn(() async {
      await isar.iPatients.put(collection);
    });
  }

  @override
  Future<void> deleteMultipleObjects(List<int> ids) async {
    await isar.writeTxn(() async {
      await isar.iPatients.deleteAll(ids);
    });
  }

  @override
  Future<void> deleteObject(IPatient collection) async {
    await isar.writeTxn(() async {
      await isar.iPatients.delete(collection.id);
    });
  }

  @override
  Future<List<IPatient>> getAllObjects() async {
    return await isar.iPatients.where().findAll();
  }

  @override
  Future<IPatient?> getObjectByID(int id) async {
    return await isar.iPatients.get(id);
  }

  @override
  Future<List<IPatient?>> getObjectsByID(List<int> ids) async {
    return await isar.iPatients.getAll(ids);
  }

  @override
  Future<void> updateObject(IPatient collection) async {
    await isar.writeTxn(() async {
      final patient = await isar.iPatients.get(collection.id);

      if (patient != null) {
        await isar.iPatients.put(collection);
      }
    });
  }
}
