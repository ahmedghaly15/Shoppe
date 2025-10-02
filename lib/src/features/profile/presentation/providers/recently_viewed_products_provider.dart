part of '../../profile.dart';

List<Product> _recentlyViewedProducts = [];

class RecentlyViewsProductsNotifier extends Notifier<List<Product>> {
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

final recentlyViewsProductsProvider =
    NotifierProvider.autoDispose<RecentlyViewsProductsNotifier, List<Product>>(
      RecentlyViewsProductsNotifier.new,
    );
