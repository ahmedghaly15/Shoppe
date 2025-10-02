import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart' show Skeleton;

import '../../config/router/app_router.dart';
import '../../config/theming/theming.dart';
import '../../core/api/api_request_result.dart';
import '../../core/utils/utils.dart';
import '../../core/widgets/core_widgets.dart'
    show
        CustomCachedNetworkImage,
        CustomErrorWidget,
        CustomSliverAppBar,
        EmptyView,
        ShadowContainer;
import 'data/api/reviews_api_service.dart';
import 'data/models/fetch_product_reviews_request_body.dart';
import 'data/models/fetch_product_reviews_request_response.dart';
import '../../core/api/api_error_model.dart';

part 'data/repo/reviews_repo.dart';
part 'presentation/providers/fetch_product_reviews_provider.dart';
part 'presentation/views/reviews_view.dart';
part 'presentation/views/widgets/reviews_sliver_list_consumer.dart';
part 'presentation/views/widgets/review_item_widget.dart';
