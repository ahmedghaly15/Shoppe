part of '../../profile.dart';

class RecentlyViewedProductsNotifier extends Notifier<List<Product>> {
  List<Product> _recentlyViewedProducts = [];

  @override
  List<Product> build() => _recentlyViewedProducts;

  void add(Product product) {
    if (!state.contains(product)) {
      state = [...state, product];
      _recentlyViewedProducts = state;
    }
  }

  void clear() {
    state = [];
    _recentlyViewedProducts = [];
  }
}

final recentlyViewedProductsProvider =
    NotifierProvider.autoDispose<RecentlyViewedProductsNotifier, List<Product>>(
      RecentlyViewedProductsNotifier.new,
    );
