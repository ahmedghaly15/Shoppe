part of 'core_providers.dart';

final emailProvider = Provider.autoDispose<TextEditingController>((ref) {
  return TextEditingController();
});

final passwordProvider = Provider.autoDispose<TextEditingController>((ref) {
  return TextEditingController();
});

final confirmPassProvider = Provider.autoDispose<TextEditingController>((ref) {
  return TextEditingController();
});

final nameProvider = Provider.autoDispose<TextEditingController>((ref) {
  return TextEditingController();
});

final formKeyProvider = Provider.autoDispose<GlobalKey<ShadFormState>>((ref) {
  return GlobalKey<ShadFormState>();
});
final forgotPassFormKeyProvider =
    Provider.autoDispose<GlobalKey<ShadFormState>>((ref) {
      return GlobalKey<ShadFormState>();
    });

class AutovalidateModeNotifier extends Notifier<AutovalidateMode> {
  @override
  AutovalidateMode build() => AutovalidateMode.disabled;

  void enable() => state = AutovalidateMode.onUserInteraction;
}

final autovalidateModeProvider =
    NotifierProvider.autoDispose<AutovalidateModeNotifier, AutovalidateMode>(
      AutovalidateModeNotifier.new,
    );

class PasswordObscureNotifier extends Notifier<bool> {
  @override
  bool build() => true;

  void toggle() => state = !state;
}

final passwordObscureProvider =
    NotifierProvider.autoDispose<PasswordObscureNotifier, bool>(
      PasswordObscureNotifier.new,
    );

final confirmPassObscureProvider =
    NotifierProvider.autoDispose<PasswordObscureNotifier, bool>(
      PasswordObscureNotifier.new,
    );
