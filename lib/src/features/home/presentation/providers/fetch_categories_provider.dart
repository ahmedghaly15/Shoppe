part of '../../home.dart';

final fetchCategoriesProvider =
    FutureProvider.autoDispose<FetchCategoriesResponse>((ref) async {
      final result = await ref.read(homeRepoProvider).fetchCategories();
      return result.when(
        success: (data) => data,
        failure: (error) => throw error.getAllErrorMsgs,
      );
    });
