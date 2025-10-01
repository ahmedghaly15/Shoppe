part of '../../product_details.dart';

class ProductQuantityNotifier extends Notifier<int> {
  @override
  int build() => 1;

  void increment() => state++;
  void decrement() => state--;
}

final productQuantityProvider =
    NotifierProvider.autoDispose<ProductQuantityNotifier, int>(
      ProductQuantityNotifier.new,
    );
