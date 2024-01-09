import 'package:feedbackscs2024/collections/placeparestesia_short_test.dart';
import 'package:feedbackscs2024/repository/adapter.dart';
import 'package:isar/isar.dart';

import '../main.dart';

class PlaceParestesiaShortTestRepository
    extends ADapter<PlaceParestesiaShortTest> {
  @override
  Future<void> createMultipleObjects(
      List<PlaceParestesiaShortTest> collections) async {
    await isar.writeTxn(() async {
      await isar.placeParestesiaShortTests.putAll(collections);
    });
  }

  @override
  Future<void> createObject(PlaceParestesiaShortTest collection) async {
    await isar.writeTxn(() async {
      await isar.placeParestesiaShortTests.put(collection);
    });
  }

  @override
  Future<void> deleteMultipleObjects(List<int> ids) async {
    await isar.writeTxn(() async {
      await isar.placeParestesiaShortTests.deleteAll(ids);
    });
  }

  @override
  Future<void> deleteObject(PlaceParestesiaShortTest collection) async {
    await isar.writeTxn(() async {
      await isar.placeParestesiaShortTests.delete(collection.id);
    });
  }

  @override
  Future<List<PlaceParestesiaShortTest>> getAllObjects() async {
    return await isar.placeParestesiaShortTests.where().findAll();
  }

  @override
  Future<PlaceParestesiaShortTest?> getObjectByID(int id) async {
    return await isar.placeParestesiaShortTests.get(id);
  }

  @override
  Future<List<PlaceParestesiaShortTest?>> getObjectsByID(List<int> ids) async {
    return await isar.placeParestesiaShortTests.getAll(ids);
  }

  @override
  Future<void> updateObject(PlaceParestesiaShortTest collection) async {
    await isar.writeTxn(() async {
      final docpat = await isar.placeParestesiaShortTests.get(collection.id);

      if (docpat != null) {
        await isar.placeParestesiaShortTests.put(collection);
      }
    });
  }
}
