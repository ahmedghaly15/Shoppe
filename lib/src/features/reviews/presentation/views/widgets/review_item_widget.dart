part of '../../../reviews.dart';

class ReviewItemWidget extends StatelessWidget {
  const ReviewItemWidget({super.key, this.review});

  final Review? review;

  @override
  Widget build(BuildContext context) {
    return Skeleton.leaf(
      child: Card(
        elevation: 0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20.w,
          children: [
            ShadowContainer(
              height: 60,
              width: 60,
              shape: BoxShape.circle,
              child: CustomCachedNetworkImage(
                imageUrl: review?.userPicture ?? '',
                imageBuilder: (_, image) =>
                    CircleAvatar(backgroundImage: image, radius: 20.r),
              ),
            ),
            Column(
              spacing: 10.h,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 6.w),
                  itemBuilder: (context, _) =>
                      const Icon(Icons.star, color: AppColors.colorECA61B),
                  onRatingUpdate: (rate) {},
                ),
                Expanded(
                  child: Text(
                    review?.comment ?? 'Comment',
                    style: AppTextStyles.font12Regular,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
