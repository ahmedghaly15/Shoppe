part of '../../../home.dart';

class SkeletonizedCategoriesListViewConsumer extends ConsumerWidget {
  const SkeletonizedCategoriesListViewConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncCategories = ref.watch(fetchCategoriesProvider);
    _fetchCategoriesProviderListener(ref, context);
    return SizedBox(
      height: 192.h,
      child: asyncCategories.when(
        loading: () => const CustomSkeletonizer(
          child: _CategoriesListView(isLoading: true),
        ),
        data: (data) {
          final categories = data.categories;
          return _CategoriesListView(categories: categories);
        },
        error: (error, _) => const SizedBox.shrink(),
      ),
    );
  }

  void _fetchCategoriesProviderListener(WidgetRef ref, BuildContext context) {
    ref.listen(
      fetchCategoriesProvider,
      (_, current) => current.whenOrNull(
        error: (error, _) => context.showToast(
          error.toString(),
          titleText: AppStrings.categories,
        ),
      ),
    );
  }
}

class _CategoriesListView extends StatelessWidget {
  const _CategoriesListView({this.categories, this.isLoading = false});

  final List<Category>? categories;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(9.r);
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.only(left: 8.w, top: 8.h, bottom: 8.h),
      itemBuilder: (_, index) {
        final category = categories?[index];
        return AspectRatio(
          aspectRatio: 0.86,
          child: ShadowContainer(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5.h,
              children: [
                Expanded(
                  child: isLoading
                      ? Skeleton.leaf(
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: radius,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : ClipRRect(
                          borderRadius: radius,
                          child: CustomCachedNetworkImage(
                            imageUrl: category?.coverPictureUrl ?? '',
                          ),
                        ),
                ),
                Text(
                  category?.name?.capitalize() ?? 'Default Name',
                  style: AppTextStyles.font13Bold,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (_, _) => SizedBox(width: 5.w),
      itemCount: categories?.length ?? 10,
    );
  }
}
