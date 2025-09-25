import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/src/core/helpers/helpers.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../config/router/app_router.dart' show ProductDetailsRoute;
import '../../config/theming/theming.dart' show AppTextStyles;
import '../../core/api/api_request_result.dart';
import '../../core/models/product.dart';
import '../../core/utils/utils.dart';
import '../../core/widgets/core_widgets.dart'
    show
        CustomCachedNetworkImage,
        CustomDotIndicator,
        CustomInputFormField,
        CustomSkeletonizer,
        CustomSkeletonizerType;
import 'data/api/home_api_service.dart';
import 'data/models/fetch_categories_response.dart';
import 'data/models/fetch_offers_request_body.dart';
import 'data/models/fetch_offers_request_response.dart';
import 'data/models/fetch_products_request_body.dart';
import 'data/models/fetch_products_request_response.dart';

part 'presentation/views/home_view.dart';
part 'data/repo/home_repo.dart';
part 'presentation/providers/home_providers.dart';
part 'presentation/views/widgets/home_search_field_consumer.dart';
part 'presentation/views/widgets/skeletonized_offers_list_view_consumer.dart';
part 'presentation/providers/fetch_offers_providers.dart';
part 'presentation/views/widgets/home_section_title.dart';
part 'presentation/views/widgets/offers_dot_indicators_consumer.dart';
part 'presentation/providers/fetch_categories_provider.dart';
part 'presentation/views/widgets/skeletonized_categories_list_view_consumer.dart';
part 'presentation/providers/fetch_products_provider.dart';
part 'presentation/views/widgets/skeletonized_products_sliver_grid.dart';
