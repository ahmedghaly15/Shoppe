part of 'core_providers.dart';

final localStorageProvider = FutureProvider<JsonSqFliteStorage>((ref) async {
  // Initialize SQFlite. We should share the Storage instance between providers.
  return JsonSqFliteStorage.open(
    join(await getDatabasesPath(), ConstStrings.appDb),
  );
});
