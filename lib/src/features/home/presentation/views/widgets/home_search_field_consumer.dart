part of '../../../home.dart';

class HomeSearchFieldConsumer extends ConsumerWidget {
  const HomeSearchFieldConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(searchControllerProvider);
    return CustomInputFormField(
      controller: controller,
      placeholderText: AppStrings.search,
      keyboardType: TextInputType.text,
    );
  }
}
