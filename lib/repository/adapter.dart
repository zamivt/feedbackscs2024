abstract class ADapter<T> {
  Future<void> createObject(T collection);
  Future<void> createMultipleObjects(List<T> collections);

  Future<T?> getObjectByID(int id);

  Future<List<T?>> getObjectsByID(List<int> ids);

  Future<List<T>> getAllObjects();

  Future<void> updateObject(T collection);

  Future<void> deleteObject(T collection);

  Future<void> deleteMultipleObjects(List<int> ids);
}
