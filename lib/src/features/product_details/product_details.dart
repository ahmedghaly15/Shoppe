import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show LucideIcons;

import '../../config/router/app_router.dart';
import '../../config/theming/theming.dart' show AppColors, AppTextStyles;
import '../../core/api/api_request_result.dart';
import '../../core/models/product.dart';
import '../../core/utils/utils.dart'
    show AppStrings, executeAndHandleApiRequest;
import '../../core/widgets/core_widgets.dart'
    show
        AdaptiveCircularProgressIndicator,
        CustomCachedNetworkImage,
        PrimaryButton;
import 'data/api/product_details_api_service.dart';
import 'data/models/add_to_cart_request_body.dart';
import 'data/models/add_to_cart_request_response.dart';
import 'presentation/providers/add_to_cart_provider.dart';

part 'presentation/views/product_details_view.dart';
part 'presentation/views/widgets/product_header_delegate.dart';
part 'presentation/views/widgets/product_detail_section_title.dart';
part 'presentation/views/widgets/add_to_cart_and_buy_now_buttons.dart';
part 'presentation/views/widgets/product_pictures_list_view.dart';
part 'presentation/views/widgets/product_final_price_and_discount.dart';
part 'presentation/providers/product_quantity_provider.dart';
part 'presentation/views/widgets/product_quantity_icon_buttons.dart';
part 'data/repo/product_details_repo.dart';
part 'presentation/views/widgets/add_to_cart_consumer_button.dart';
