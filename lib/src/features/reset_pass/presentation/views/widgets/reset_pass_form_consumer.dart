part of '../../../reset_pass.dart';

class ResetPassFormConsumer extends ConsumerWidget {
  const ResetPassFormConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = ref.watch(formKeyProvider);
    return ShadForm(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.h,
        children: const [
          PassFieldConsumer(placeholderText: AppStrings.newPass),
          ConfirmPassFieldConsumer(),
        ],
      ),
    );
  }
}
