import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show LucideIcons, SvgPicture;

import '../../config/cache/cache.dart'
    show secureStorageHelperProvider, ShoppeUserSecureCache;
import '../../config/theming/theming.dart' show AppColors, AppTextStyles;
import '../../core/api/api_request_result.dart';
import '../../core/api/api_error_model.dart';
import '../../core/models/product.dart';
import '../../core/utils/utils.dart'
    show AppStrings, Assets, ConstStrings, executeAndHandleApiRequest;
import '../../core/widgets/core_widgets.dart'
    show
        AdaptiveCircularProgressIndicator,
        CustomCachedNetworkImage,
        CustomErrorWidget,
        ShadowContainer;
import '../cart/cart.dart';
import 'data/api/profile_api_service.dart';
import 'data/models/shoppe_user.dart';

part 'presentation/views/profile_consumer_view.dart';
part 'presentation/providers/recently_viewed_products_provider.dart';
part 'data/repo/profile_repo.dart';
part 'presentation/providers/fetch_profile_provider.dart';
part 'presentation/views/widgets/custom_profile_sliver_app_bar.dart';
part 'presentation/views/widgets/profile_style_icon_button.dart';
part 'presentation/views/widgets/recently_viewed_list_view_consumer.dart';
part 'presentation/views/widgets/voucher_expiry_list_tile.dart';
part 'presentation/views/widgets/profile_view_content.dart';
part 'presentation/providers/most_liked_products_provider.dart';
part 'presentation/views/widgets/profile_section_title.dart';
part 'presentation/views/widgets/most_liked_list_view_consumer.dart';
