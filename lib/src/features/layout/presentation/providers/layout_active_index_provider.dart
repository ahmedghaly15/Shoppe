part of '../../layout.dart';

final class LayoutActiveIndexNotifier extends AsyncNotifier<int> {
  @override
  FutureOr<int> build() async {
    persist(
      ref.watch(localStorageProvider.future),
      key: 'layoutActiveIndex',
      encode: jsonEncode,
      decode: (json) => jsonDecode(json) as int,
    );
    // if nothing persisted, return 0
    return 0;
  }

  int get activeIndex {
    final index = state.value ?? 0;
    return index;
  }

  void setActiveIndex(int index) => state = AsyncValue.data(index);
}

final layoutActiveIndexProvider =
    AsyncNotifierProvider<LayoutActiveIndexNotifier, int>(
      LayoutActiveIndexNotifier.new,
    );
