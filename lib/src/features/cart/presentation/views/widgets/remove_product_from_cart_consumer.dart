part of '../../../cart.dart';

class RemoveProductFromCartConsumer extends ConsumerWidget {
  const RemoveProductFromCartConsumer({super.key, required this.itemId});

  final String itemId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncRemoveProduct = ref.watch(removeProductFromCartProvider);
    _removeProductFromCartProviderListener(ref, context);
    return IconButton.filledTonal(
      style: IconButton.styleFrom(
        foregroundColor: Colors.red,
        backgroundColor: AppColors.colorFFEBEB,
        minimumSize: Size(16.w, 16.h),
      ),
      onPressed: asyncRemoveProduct.isLoading
          ? null
          : () => ref
                .read(removeProductFromCartProvider.notifier)
                .removeProduct(itemId),
      icon: asyncRemoveProduct.isLoading
          ? const AdaptiveCircularProgressIndicator(color: Colors.red)
          : const Icon(LucideIcons.trash, color: Colors.red),
    );
  }

  void _removeProductFromCartProviderListener(
    WidgetRef ref,
    BuildContext context,
  ) {
    ref.listen(
      removeProductFromCartProvider,
      (_, current) => current.whenOrNull(
        data: (removed) {
          if (removed) {
            ref.invalidate(fetchCartProvider);
          }
        },
        error: (error, _) => context.showToast(error.toString()),
      ),
    );
  }
}
