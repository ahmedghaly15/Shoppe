part of '../../../profile.dart';

class CustomProfileSliverAppBar extends ConsumerWidget {
  const CustomProfileSliverAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shoppeUser = ref.watch(fetchProfileProvider).asData?.value;
    return SliverToBoxAdapter(
      child: Row(
        children: [
          ShadowContainer(
            height: 60,
            width: 60,
            shape: BoxShape.circle,
            child: CustomCachedNetworkImage(
              imageUrl:
                  shoppeUser?.profilePicture ?? ConstStrings.profileImgUrl,
              imageBuilder: (_, image) =>
                  CircleAvatar(backgroundImage: image, radius: 20.r),
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(start: 16.w, end: 8.w),
            padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 16.w),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(18.r),
            ),
            child: Text(
              AppStrings.myActivity,
              style: AppTextStyles.font15Bold.copyWith(color: Colors.white),
            ),
          ),
          const Spacer(),
          ProfileStyledIconButton(icon: LucideIcons.settings, onPressed: () {}),
        ],
      ),
    );
  }
}
