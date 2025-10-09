part of '../../cart.dart';

class CartLengthNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void set(int length) => state = length;
}

final cartLengthProvider =
    NotifierProvider.autoDispose<CartLengthNotifier, int>(
      CartLengthNotifier.new,
    );
