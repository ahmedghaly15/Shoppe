part of '../../profile.dart';

List<Product> _recentlyViewedProducts = [];

class RecentlyViewedProductsNotifier extends Notifier<List<Product>> {
  @override
  List<Product> build() => _recentlyViewedProducts;

  void addProduct(Product product) {
    state = [...state, product];
    _recentlyViewedProducts = state;
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
