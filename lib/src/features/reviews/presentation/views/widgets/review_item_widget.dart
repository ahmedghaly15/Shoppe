part of '../../../reviews.dart';

class ReviewItemWidget extends StatelessWidget {
  const ReviewItemWidget({super.key, this.review});

  final Review? review;

  @override
  Widget build(BuildContext context) {
    return Skeleton.leaf(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        titleAlignment: ListTileTitleAlignment.titleHeight,
        leading: ShadowContainer(
          height: 60,
          width: 60,
          shape: BoxShape.circle,
          child: CustomCachedNetworkImage(
            imageUrl: review?.userPicture ?? '',
            imageBuilder: (_, image) =>
                CircleAvatar(backgroundImage: image, radius: 20.r),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4.h,
          children: [
            Text(
              review?.userName ?? 'User Name',
              style: AppTextStyles.font15Bold,
            ),
            RatingBar.builder(
              initialRating: review?.rating ?? 5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemSize: 16.h,
              itemCount: 5,
              itemPadding: EdgeInsetsDirectional.only(end: 6.w),
              itemBuilder: (context, _) =>
                  const Icon(Icons.star, color: AppColors.colorECA61B),
              onRatingUpdate: (rate) {},
            ),
          ],
        ),
        subtitle: Container(
          margin: EdgeInsets.only(top: 16.h),
          child: Text(
            review?.comment ?? 'Comment',
            style: AppTextStyles.font12Regular,
          ),
        ),
      ),
    );
  }
}
